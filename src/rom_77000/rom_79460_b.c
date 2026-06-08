/* Cluster GetPartySize..GetPartySize extracted from goldensun/asm/rom_77000/rom_79460.s.
 *
 * Total .text for this TU = 32 bytes (= 0x20).
 * Preserves the original ROM layout when slotted between
 * asm/rom_77000/rom_79460_a.o and asm/rom_77000/rom_79460_c.o in
 * goldensun/stage1.ld.
 */
extern int GetFlag(int flagID);

int GetPartySize(void) {
    int count;
    int i;

    count = 0;
    for (i = 0; i <= 7; i++) {
        if (GetFlag(i))
            count++;
    }
    return count;
}
