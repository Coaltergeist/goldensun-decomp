/* Cluster Func_808e078..Func_808e078 extracted from goldensun/asm/rom_8a000/rom_8d9a4_a.s.
 *
 * Total .text for this TU = 56 bytes (= 0x38).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_8d9a4_a_a.o and asm/rom_8a000/rom_8d9a4_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int Func_8092054(unsigned int actorID);
extern void _Func_80f9080(unsigned int arg0);
extern void _Func_800c300(unsigned int arg0, unsigned int arg1);
extern void Func_80030f8(unsigned int nframes);
extern unsigned int Func_808ef70(unsigned int arg0, unsigned int arg1);

unsigned int Func_808e078(unsigned int arg0, unsigned int arg1, unsigned int arg2)
{
    unsigned char *actor;
    unsigned int ret;

    actor = (unsigned char *)Func_8092054(arg1);
    ret = 0;
    if (actor != (unsigned char *)0) {
        _Func_80f9080(0x7c);
        _Func_800c300((unsigned int)actor, 4);
        Func_80030f8(0xc);
        ret = Func_808ef70(arg0, arg2);
    }
    return ret;
}
