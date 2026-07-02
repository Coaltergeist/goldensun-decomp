/* Cluster Func_8097608..Func_8097608 extracted from goldensun/asm/rom_8a000/rom_97384_c_a.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_97384_c_a_a.o and asm/rom_8a000/rom_97384_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char iwram_3001ea8[];
extern void Func_8097adc(void);
extern void StopTask(void *task);
extern void Task_08097644(void);
extern void *MapActor_GetActor(unsigned short actorID);
extern void Func_808e0b0(void *actor, int flag);
extern void Func_809748c(void);
extern void gfree(int index);

void Func_8097608(void)
{
    unsigned char *base = *(unsigned char **)iwram_3001ea8;
    unsigned short id;
    void *actor;

    Func_8097adc();
    StopTask(Task_08097644);
    id = *(unsigned short *)(base + (0xa4 << 2));
    actor = MapActor_GetActor(id);
    Func_808e0b0(actor, 1);
    Func_809748c();
    gfree(0x16);
}
