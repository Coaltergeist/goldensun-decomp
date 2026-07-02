/* Cluster Func_80b8178..Func_80b8178 extracted from goldensun/asm/rom_b5000/rom_b7410_c_c_c.s.
 *
 * Total .text for this TU = 80 bytes (= 0x50).
 * Preserves the original ROM layout when slotted between
 * asm/rom_b5000/rom_b7410_c_c_c_a.o and asm/rom_b5000/rom_b7410_c_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern void *GetBattleActor(unsigned int unit);
extern void _Actor_Stop(void *actor);
extern void _Actor_TravelTo(int actor, int arg1, int arg2, int arg3);

void Func_80b8178(unsigned int arg0) {
    int *r6 = (int *)GetBattleActor(arg0);
    unsigned char *r5 = (unsigned char *)r6[0];

    *(int *)(r5 + 0x34) = 0x80 << 9;
    *(int *)(r5 + 0x30) = 0x80 << 11;
    *(int *)(r5 + 0x28) = 0xc0 << 10;
    *(int *)(r5 + 0x48) = 0x9999;
    *(int *)(r5 + 0x44) = 0;
    *(r5 + 0x5a) = 0;
    _Actor_Stop(r5);
    {
        int v = *(int *)((char *)r6 + 0xc);
        int t = v * 3;
        t = t / 2;
        _Actor_TravelTo((int)r5, t, 0, *(int *)((char *)r6 + 0x10));
    }
}
