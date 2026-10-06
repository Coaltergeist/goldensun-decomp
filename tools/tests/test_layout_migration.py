"""Mapped ownership, transactional renames, and immutable original evidence."""
import copy
import json
import os
from pathlib import Path
import sys
import unittest
from unittest.mock import patch

sys.path.insert(0,str(Path(__file__).resolve().parents[1]))
import test_candidates as fixtures
import candidate_catalog
import candidate_scores
import decomp_progress
import generate_candidates
import migrate_layout as migration
import source_paths


class LayoutMigrationTests(unittest.TestCase):
    setUp=fixtures.CandidateTests.setUp
    tearDown=fixtures.CandidateTests.tearDown
    put=fixtures.CandidateTests.put

    def prepare(self):
        self.meta['functions']['One'].update(requires=['Two'],context=['context.h'],credit='Original author',notes='Keep evidence')
        self.put('src/non_matching/example/candidates.json',json.dumps(self.meta))
        self.put('src/non_matching/example/context.h','typedef int count_t;\n')
        config=json.loads((self.root/'config/modules.json').read_text())
        config['paths']=dict(schema=1,candidate_root='src/non_matching',input_roots=['src','asm','include','config','linker'],link_targets={})
        config['units'][0].update(candidate_key='example',candidate_directory='src/non_matching/example',assembly_directory='asm/example')
        self.put('config/modules.json',json.dumps(config))
        self.put('original_function_sizes.json','{"sizes":{"rom:1":4,"rom:2":4}}')
        self.put('src/non_matching/INDEX.md',candidate_catalog.markdown_index(candidate_catalog.catalog(self.root)))
        moves={'src/example.c':'src/modules/demo/example.c'}
        for prefix in ('asm/example/','src/non_matching/example/'):
            for path in (self.root/prefix).iterdir():
                name=path.relative_to(self.root).as_posix()
                moves[name]=name.replace(prefix,prefix.replace('example/','modules/demo/example/'),1)
        return moves

    def state(self):
        return {str(p.relative_to(self.root)):(p.read_bytes(),p.stat().st_mtime_ns)
                for p in self.root.rglob('*') if p.is_file() and '.git' not in p.parts and '.progress' not in p.parts}

    def test_plan_is_read_only_and_apply_preserves_ids_companions_and_credit(self):
        moves=self.prepare();before=self.state();old_catalog=candidate_catalog.catalog(self.root)
        result=migration.plan(self.root,moves)
        self.assertEqual(self.state(),before)
        self.assertEqual({r['id'] for r in result['candidates']},{'rom:1','rom:2'})
        run=migration.apply(self.root,result)
        self.assertEqual(json.loads((run/'transaction.json').read_text())['status'],'complete')
        current=candidate_catalog.catalog(self.root)['example']
        self.assertEqual(current['id'],old_catalog['example']['id'])
        self.assertEqual(current['functions']['One']['requires'],['Two'])
        self.assertEqual(current['functions']['One']['credit'],'Original author')
        self.assertEqual(candidate_catalog.closure(current,['One']),['One','Two'])
        self.assertIn('modules/demo/example/context.h',candidate_catalog.compose(self.root,current,['One']))
        self.assertEqual(generate_candidates.plan(self.root)[0],{})
        for name in migration.IMMUTABLE:self.assertEqual(self.state()[name],before[name])
        for row in result['candidates']:
            self.assertEqual((self.root/row['path']['new']).read_bytes(),before[row['path']['old']][0])
        self.assertFalse(decomp_progress.production_candidate_errors(self.root))
        self.assertTrue(all('modules/demo/example/' in n for n in candidate_scores.candidate_inputs(self.root)))

    def test_stale_plan_content_mtime_addition_and_forged_postimage_are_rejected(self):
        moves=self.prepare();result=migration.plan(self.root,moves)
        bad=copy.deepcopy(result);next(iter(bad['writes'].values()))['text']='forged'
        with self.assertRaisesRegex(ValueError,'differs'):migration.apply(self.root,bad)
        p=self.root/'src/non_matching/example/One.c';p.write_text(p.read_text()+'\n')
        changed=self.state()
        with self.assertRaisesRegex(ValueError,'stale'):migration.apply(self.root,result)
        self.assertEqual(self.state(),changed)

    def test_escapes_symlinks_collisions_and_missing_owners_fail(self):
        moves=self.prepare()
        for change in ({'src/example.c':'../outside.c'}, {'src/example.c':'include/nonmatching.h'},
                       {'src/example.c':'src/new.c','asm/example/One.s':'src/new.c'},
                       {'missing.c':'src/new.c'}, {'original_functions.json':'old.json'}):
            with self.subTest(change=change),self.assertRaises(ValueError):migration.plan(self.root,change)
        (self.root/'alias').symlink_to(self.root/'src',target_is_directory=True)
        with self.assertRaisesRegex(ValueError,'symlink'):migration.plan(self.root,{'src/example.c':'alias/new.c'})
        (self.root/'alias').unlink()
        config=json.loads((self.root/'config/modules.json').read_text());config['units']=[]
        self.put('config/modules.json',json.dumps(config))
        with self.assertRaisesRegex(ValueError,'owner'):migration.plan(self.root,moves)

    def test_mid_apply_failure_restores_all_source_contents(self):
        result=migration.plan(self.root,self.prepare());before=self.state()
        with patch.object(migration,'catalog',side_effect=[candidate_catalog.catalog(self.root),ValueError('injected')]):
            with self.assertRaisesRegex(ValueError,'injected'):migration.apply(self.root,result)
        self.assertEqual({n:d[0] for n,d in self.state().items()},{n:d[0] for n,d in before.items()})

    def test_mapped_root_and_parked_headers_cannot_enter_production(self):
        moves=self.prepare();migration.apply(self.root,migration.plan(self.root,moves))
        name='src/modules/demo/example.c';text=(self.root/name).read_text()
        self.put(name,'#include "src/non_matching/modules/demo/example/context.h"\n'+text)
        with self.assertRaisesRegex(ValueError,'parked candidate'):decomp_progress.source_inputs(self.root)
        self.put(name,text)
        self.put('linker/template.ld','/* maintained template */')
        self.put('tools/tests/fixture.c','test only')
        inputs=decomp_progress.source_inputs(self.root)
        self.assertIn('linker/template.ld',inputs);self.assertNotIn('tools/tests/fixture.c',inputs)
        self.assertNotIn('src/non_matching/modules/demo/example/context.h',inputs)

    def test_move_preserves_file_mode_and_unrelated_concurrent_edit_survives_rollback(self):
        moves=self.prepare()
        os.chmod(self.root/'src/non_matching/example/One.c',0o640)
        result=migration.plan(self.root,moves)
        real=candidate_catalog.catalog
        calls=[]
        def inspect(root):
            calls.append(True)
            if len(calls)==2:self.put('include/nonmatching.h','concurrent user edit')
            return real(root)
        with patch.object(migration,'catalog',side_effect=inspect):
            with self.assertRaisesRegex(ValueError,'concurrent modification'):migration.apply(self.root,result)
        self.assertEqual((self.root/'include/nonmatching.h').read_text(),'concurrent user edit')
        self.assertTrue((self.root/'src/example.c').is_file())
        result=migration.plan(self.root,moves);migration.apply(self.root,result)
        self.assertEqual((self.root/moves['src/non_matching/example/One.c']).stat().st_mode & 0o777,0o640)

    def test_same_address_name_and_shared_common_keep_distinct_original_ids(self):
        self.prepare()
        config=json.loads((self.root/'config/modules.json').read_text())
        snapshot={'units':{},'functions':{}}
        for key,identity in [('a','overlay:a:02008000'),('b','overlay:b:02008000'),('shared','common:one:00000000')]:
            source='src/modules/'+key+'/same.c';obj='build/usa/objects/'+key+'.o'
            config['units'].append(dict(id='tu:'+key,source=source,object=obj,profile='gcc296',source_role='maintained',owner=key))
            self.put(source,'void Same(void) {}')
            snapshot['units'][source]=dict(object=obj,functions={identity:dict(name='Same',address=0,section='.text')})
            snapshot['functions'][identity]='c'
        self.put('config/modules.json',json.dumps(config))
        baseline={'sizes':{identity:4 for identity in snapshot['functions']}}
        inputs={source:'hash' for source in snapshot['units']}
        decomp_progress.validate_units(baseline,snapshot,inputs,root=self.root)
        self.assertEqual(decomp_progress.summary(baseline,snapshot)['measures']['matched_functions'],3)
        self.assertEqual(len({source_paths.original_owner(self.root,i,snapshot)['source'] for i in snapshot['functions']}),3)
        broken=copy.deepcopy(snapshot);broken['units']['src/modules/b/same.c']['functions']['overlay:a:02008000']={'name':'Other','address':4,'section':'.text'}
        with self.assertRaisesRegex(ValueError,'duplicate'):decomp_progress.validate_units(baseline,broken,inputs,root=self.root)


if __name__=='__main__':unittest.main()
