// Remaining diff: `-fno-strict-aliasing` invalidates `a->sprite->oam.priority` (`lsl #28`)
// across `b->flags &= ~1` (`strb`), reloading `[r0, #9]` instead of reusing `r1` at +0x88.
int OvlFunc_947_20099f0(struct Actor *a, struct Actor *b)
{
    int ret = 0;

    if (b->pos.x == a->pos.x && b->pos.y == a->pos.y && b->pos.z == a->pos.z)
        return ret;

    if (a->pos.x - 0x100000 < b->pos.x
     && b->pos.x < a->pos.x + 0x100000
     && b->pos.y / 0x10000 == a->pos.y / 0x10000
     && a->pos.z > b->pos.z
     && a->pos.z - 0x200000 < b->pos.z) {
        if (a->sprite->oam.priority > b->sprite->oam.priority) {
            b->flags &= ~1;
            b->sprite->oam.priority = a->sprite->oam.priority;
            b->sprite->shadowOAM.priority = a->sprite->shadowOAM.priority;
        }
        ret = 1;
    }
    return ret;
}
