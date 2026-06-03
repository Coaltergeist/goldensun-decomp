/* Cluster Func_800ca6c..Func_800ca6c extracted from goldensun/asm/rom_9000/rom_ca6c_a.s.
 *
 * Total .text for this TU = 44 bytes (= 0x2c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_ca6c_a_a.o and asm/rom_9000/rom_ca6c_a_c.o in
 * goldensun/stage1.ld.
 */
extern void Func_80030f8(unsigned int nframes);
extern int Func_800ca98(void *actor);

void Func_800ca6c(void *actor)
{
    int i;
    for (i = 0; i <= 0x257; i++) {
        if (Func_800ca98(actor))
            break;
        Func_80030f8(1);
    }
}
