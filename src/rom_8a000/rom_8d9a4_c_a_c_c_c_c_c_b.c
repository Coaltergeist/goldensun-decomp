/* Cluster Func_808f0d8..Func_808f0d8 extracted from goldensun/asm/rom_8a000/rom_8d9a4_c_a_c_c_c_c_c.s.
 *
 * Total .text for this TU = 104 bytes (= 0x68).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_8d9a4_c_a_c_c_c_c_c_a.o and asm/rom_8a000/rom_8d9a4_c_a_c_c_c_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char gState[];
extern void *GetFieldActor(unsigned int actorID);
extern void _Actor_TravelTo(void *actor, int a1, int a2, int a3);
extern void WaitFrames(unsigned int nframes);
extern void _Actor_SetAnim(void *actor, int anim);
extern void _Actor_SetScript(void *actor, void *script);
extern unsigned char L9e75c[] __asm__(".L9e75c");

void Func_808f0d8(unsigned int arg0)
{
    unsigned char *r6 = (unsigned char *)arg0;

    if (r6 != 0)
    {
        unsigned short *s;
        unsigned char *r5;
        unsigned char zero;
        unsigned short facing;

        s = (unsigned short *)gState;
        r5 = (unsigned char *)GetFieldActor(*(unsigned int *)&s[0xfa]);

        *(int *)(r6 + 0x34) = 0x80 << 9;
        *(int *)(r6 + 0x30) = 0x80 << 10;
        zero = 0;
        r6[0x55] = zero;

        _Actor_TravelTo(r6, *(int *)(r5 + 8), *(int *)(r5 + 0xc) + (0x90 << 14), *(int *)(r5 + 0x10));
        WaitFrames(3);
        _Actor_SetAnim(r5, 0x1c);
        _Actor_SetScript(r6, L9e75c);

        facing = 0x80 << 7;
        *(unsigned short *)(r5 + 6) = facing;
    }
}
