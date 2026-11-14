// Remaining diff: `-fno-strict-aliasing` invalidates `b->sprite->oam.priority` (`lsl #28`)
// across `a->flags &= ~1` (`strb`), reloading `[r0, #9]` instead of reusing `r1` at +0x88.
int OvlFunc_947_2009938(struct Actor *a, struct Actor *b)
{
    int ret = 0;

    if (b->pos.x == a->pos.x && b->pos.y == a->pos.y && b->pos.z == a->pos.z)
        return ret;

    if (b->pos.x - 0x100000 < a->pos.x
     && a->pos.x < b->pos.x + 0x100000
     && b->pos.y / 0x10000 == a->pos.y / 0x10000
     && b->pos.z > a->pos.z
     && b->pos.z - 0x200000 < a->pos.z) {
        if (a->sprite->oam.priority < b->sprite->oam.priority) {
            a->flags &= ~1;
            a->sprite->oam.priority = b->sprite->oam.priority;
            a->sprite->shadowOAM.priority = b->sprite->shadowOAM.priority;
        }
        ret = 1;
    }
    return ret;
}
