/* Cluster Func_80b7e60..Func_80b7e60 extracted from goldensun/asm/rom_b5000/rom_b7410_a_c_c.s.
 *
 * Total .text for this TU = 28 bytes (= 0x1c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_b5000/rom_b7410_a_c_c_a.o and asm/rom_b5000/rom_b7410_a_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern void Func_80b6e30(int);
extern void *GetBattleActor(int);

int Func_80b7e60(int arg0)
{
    void *actor;
    unsigned short v;
    Func_80b6e30(arg0);
    actor = GetBattleActor(arg0);
    v = 1;
    *(unsigned short *)((char *)actor + 0x28) = v;
    return 0;
}
