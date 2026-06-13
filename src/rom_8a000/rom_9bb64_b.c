/* Cluster Func_809bcd4..Func_809bcd4 extracted from goldensun/asm/rom_8a000/rom_9bb64.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_9bb64_a.o and asm/rom_8a000/rom_9bb64_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char gBuffer[65536];

void Func_809bcd4(void) {
    unsigned int r5;
    r5 = (unsigned int)&gBuffer;
    Func_8003f3c(*(unsigned short *)r5);
    Func_8003f3c(*(unsigned short *)(r5 + 2));
    _CloseUIBox(*(unsigned int *)(r5 + 0x1c), 2);
}
