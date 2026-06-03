/* Cluster Func_80b7514..Func_80b7514 extracted from goldensun/asm/rom_b5000/rom_b7410_a_a.s.
 *
 * Total .text for this TU = 52 bytes (= 0x34).
 * Preserves the original ROM layout when slotted between
 * asm/rom_b5000/rom_b7410_a_a_a.o and asm/rom_b5000/rom_b7410_a_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char *_Func_8077394(int);

int Func_80b7514(void)
{
    int r5;
    int r6;

    r5 = 0;
    for (; r5 <= 5; r5++) {
        r6 = r5 + 0x80;
        if (_Func_8077394(r6)[0x12a] == 0)
            break;
    }
    if (r5 == 6)
        return -1;
    return r6;
}
