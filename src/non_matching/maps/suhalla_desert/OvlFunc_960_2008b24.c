/*
 * Remaining diff (exact 0xda size & 8/8 literal pool entries match):
 * 1) +0x54..0x56: sched2 orders movs r1, #5 before movs r0, #0x62 on __StartMapBattle(0x62, 5)
 *    because CALL_INSN does not clear reg_last_sets[r1], giving r1 = 5 extra REG_DEP_OUTPUT links
 *    to the post-call r1 writes (same sched2 quirk as world_map_cutscenes OvlFunc_881_200b7ac).
 * 2) Callee-saved allocation swaps arg1 (r5 vs r6) and gs = &gState (r6 vs r5).
 */
void OvlFunc_960_2008b24(int unused0, int arg1)
{
    unsigned char *p;
    short *ptr;
    short *evptr;
    int *idptr;
    int off;
    int ev;
    unsigned char *actor;
    GlobalState *gs;
    short zero;

    p = iwram_3001ebc;
    off = 0xc1 << 1;
    ptr = (short *)(p + off);
    if (*ptr == 0x63) {
        zero = 0;
        *ptr = zero;
    }
    __ClearFlag(0x20f);
    off = 0xe0 << 1;
    ev = *(short *)((char *)&gState + off);
    if (ev == (int)ConstActors_a4) {
        __SetFlag(arg1 + 0x2f9);
    } else if (ev == (int)Const_A5) {
        __SetFlag(arg1 + 0x309);
    }
    __SetFlagByte(0x84 << 2, 0);
    __StartMapBattle(0x62, 5);
    gs = &gState;
    ((unsigned char *)gs)[0x22b] = 3;
    off = 0xe0 << 1;
    evptr = (short *)((char *)gs + off);
    ev = *evptr;
    if (ev == (int)Const_A5) {
        if (arg1 == 0xb) {
            __StartMapBattle(0x62, 7);
        } else if (arg1 == 0xc) {
            __StartMapBattle(0x62, 6);
            __MapActor_SetIdle(0xc);
            __MapActor_SetPos(0xc, 0, 0);
        }
    }
    off = 0xfa << 1;
    idptr = (int *)((char *)gs + off);
    actor = __MapActor_GetActor(*idptr);
    actor[0x55] = 3;
}
