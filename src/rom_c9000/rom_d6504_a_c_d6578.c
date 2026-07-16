extern void *galloc_iwram(int id, int size);
extern void gfree(int id);
extern void Anim_Ramses(void *anim);
extern void Anim_Nereid(void *anim);
extern void Anim_Kirin(void *anim);
extern void Anim_Atalanta(void *anim);
extern void Anim_Cybele(void *anim);
extern void Anim_Neptune(void *anim);
extern void Anim_Tiamat(void *anim);
extern void Anim_Procne(void *anim);
extern void Anim_Judgment(void *anim);
extern void Anim_Boreas(void *anim);
extern void Anim_Meteor(void *anim);
extern void Anim_Thor(void *anim);

void Anim_Summon(void *anim)
{
    int summon;

    galloc_iwram(0x29, 0x302);
    galloc_iwram(0x27, 0x782c);
    galloc_iwram(0x28, 0x80 << 7);

    summon = *(int *)anim;
    if (summon == 0) {
        Anim_Meteor(anim);
    } else {
        switch (summon - 1) {
        case 0:
            Anim_Ramses(anim);
            break;
        case 1:
            Anim_Nereid(anim);
            break;
        case 2:
            Anim_Kirin(anim);
            break;
        case 3:
            Anim_Atalanta(anim);
            break;
        case 4:
            Anim_Cybele(anim);
            break;
        case 5:
            Anim_Neptune(anim);
            break;
        case 6:
            Anim_Tiamat(anim);
            break;
        case 7:
            Anim_Procne(anim);
            break;
        case 8:
            Anim_Judgment(anim);
            break;
        case 9:
            Anim_Boreas(anim);
            break;
        case 10:
            Anim_Meteor(anim);
            break;
        case 11:
            Anim_Thor(anim);
            break;
        }
    }

    gfree(0x28);
    gfree(0x27);
    gfree(0x29);
}
