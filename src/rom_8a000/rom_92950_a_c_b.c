/* Cluster Func_8092adc..Func_8092adc extracted from goldensun/asm/rom_8a000/rom_92950_a_c.s.
 *
 * Total .text for this TU = 44 bytes (= 0x2c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_92950_a_c_a.o and asm/rom_8a000/rom_92950_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern void *GetFieldActor(int actorID);
extern void _Actor_SetScript(void *actor, void *script);
extern void CutsceneWait(int param);
extern unsigned char Data_9fc1c[];

void Func_8092adc(int arg0, int arg1, int arg2) {
    void *r3;
    int r5;
    int r6;

    r5 = arg1;
    r6 = arg2;
    r3 = GetFieldActor(arg0);
    if (r3 != 0) {
        *(unsigned short *)((char *)r3 + 0x64) = r5;
        _Actor_SetScript(r3, Data_9fc1c);
        CutsceneWait(r6);
    }
}
