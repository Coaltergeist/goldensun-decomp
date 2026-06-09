/* Cluster Func_808e078..Func_808e078 extracted from goldensun/asm/rom_8a000/rom_8d9a4_a.s.
 *
 * Total .text for this TU = 56 bytes (= 0x38).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_8d9a4_a_a.o and asm/rom_8a000/rom_8d9a4_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int MapActor_GetActor(unsigned int actorID);
extern void _PlaySound(unsigned int arg0);
extern void _Actor_SetAnim(unsigned int arg0, unsigned int arg1);
extern void WaitFrames(unsigned int nframes);
extern unsigned int Func_808ef70(unsigned int arg0, unsigned int arg1);

unsigned int Func_808e078(unsigned int arg0, unsigned int arg1, unsigned int arg2)
{
    unsigned char *actor;
    unsigned int ret;

    actor = (unsigned char *)MapActor_GetActor(arg1);
    ret = 0;
    if (actor != (unsigned char *)0) {
        _PlaySound(0x7c);
        _Actor_SetAnim((unsigned int)actor, 4);
        WaitFrames(0xc);
        ret = Func_808ef70(arg0, arg2);
    }
    return ret;
}
