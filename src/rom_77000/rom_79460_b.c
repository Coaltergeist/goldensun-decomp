/* Cluster Func_80795fc..Func_80795fc extracted from goldensun/asm/rom_77000/rom_79460.s.
 *
 * Total .text for this TU = 32 bytes (= 0x20).
 * Preserves the original ROM layout when slotted between
 * asm/rom_77000/rom_79460_a.o and asm/rom_77000/rom_79460_c.o in
 * goldensun/stage1.ld.
 */
extern int Func_8079338(int flagID);

int Func_80795fc(void) {
    int count;
    int i;

    count = 0;
    for (i = 0; i <= 7; i++) {
        if (Func_8079338(i))
            count++;
    }
    return count;
}
