/* Cluster Func_8092950..Func_8092950 extracted from goldensun/asm/rom_8a000/rom_92950_a_a.s.
 *
 * Total .text for this TU = 48 bytes (= 0x30).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_92950_a_a_a.o and asm/rom_8a000/rom_92950_a_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int GetFieldActor(unsigned int actorID);
extern void Func_8092980(void);
extern void Func_80929d8(unsigned int a, unsigned int b);

void Func_8092950(unsigned int arg0, unsigned int arg1) {
    unsigned char *actor;
    actor = (unsigned char *)GetFieldActor(arg0);
    if (actor) {
        if (arg1 & 0x100) {
            *(unsigned int *)(actor + 0x6c) = (unsigned int)&Func_8092980;
        } else {
            *(unsigned int *)(actor + 0x6c) = arg1 & 0x100;
            Func_80929d8((unsigned int)actor, arg1);
        }
    }
}
