/* Cluster Func_80b8064..Func_80b8064 extracted from goldensun/asm/rom_b5000/rom_b7410_c_c_a.s.
 *
 * Total .text for this TU = 84 bytes (= 0x54).
 * Preserves the original ROM layout when slotted between
 * asm/rom_b5000/rom_b7410_c_c_a_a.o and asm/rom_b5000/rom_b7410_c_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern void *GetBattleActor(unsigned int unit);
extern void _Actor_Stop(void *actor);
extern void _Actor_TravelTo(void *actor, int dist, int a2, int a3);
extern void _Actor_SetAnim(void *actor, int anim);

void Func_80b8064(unsigned int arg0)
{
    int *r6 = (int *)GetBattleActor(arg0);
    unsigned char *r5 = (unsigned char *)r6[0];

    *(int *)(r5 + 0x34) = 0x80 << 10;
    *(int *)(r5 + 0x30) = 0x80 << 12;
    *(int *)(r5 + 0x28) = 0xa0 << 11;
    *(int *)(r5 + 0x48) = 0x7851;
    *(int *)(r5 + 0x44) = 0;
    *(r5 + 0x5a) = 0;
    _Actor_Stop(r5);
    {
        int v = *(int *)((char *)r6 + 0xc);
        int t = (v << 1) + v;
        _Actor_TravelTo((void *)r5, t, 0, *(int *)((char *)r6 + 0x10));
    }
    _Actor_SetAnim((void *)r5, 1);
}
