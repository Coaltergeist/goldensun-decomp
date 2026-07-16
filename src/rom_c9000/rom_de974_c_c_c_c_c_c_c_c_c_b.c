/* Cluster Func_80df8b8..Func_80df8b8 extracted from goldensun/asm/rom_c9000/rom_de974_c_c_c_c_c_c_c_c_c.s.
 *
 * Total .text for this TU = 84 bytes (= 0x54).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_de974_c_c_c_c_c_c_c_c_c_a.o and asm/rom_c9000/rom_de974_c_c_c_c_c_c_c_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern void *_GetBattleActor(unsigned int unit);
extern void _Actor_Stop(void *actor);
extern void _Actor_TravelTo(void *actor, int dist, int a2, int a3);
extern void _Actor_SetAnim(void *actor, int anim);

void Func_80df8b8(unsigned int arg0)
{
    int *r6 = (int *)_GetBattleActor(arg0);
    unsigned char *r5 = (unsigned char *)r6[0];

    *(int *)(r5 + 0x34) = 0x80 << 10;
    *(int *)(r5 + 0x30) = 0x80 << 12;
    *(int *)(r5 + 0x28) = 0x80 << 11;
    *(int *)(r5 + 0x48) = 0xab85;
    *(int *)(r5 + 0x44) = 0;
    *(r5 + 0x5a) = 0;
    *(r5 + 0x58) = 1;
    _Actor_Stop(r5);
    {
        int t1 = r6[3];
        _Actor_TravelTo((void *)r5, t1, 0, r6[4]);
    }
    _Actor_SetAnim((void *)r5, 1);
}
