/* Cluster Func_8078a8c..Func_8078a8c extracted from goldensun/rom_77000/src/rom_78a8c.s.
 *
 * Total .text for this TU = 20 bytes (= 0x14).
 * Preserves the original ROM layout when slotted between
 * rom_77000/src/rom_78a8c_a.o and rom_77000/src/rom_78a8c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int GetItemInfo(void);
extern unsigned int GetMoveInfo(unsigned int arg0);

/* FF: u8 GetPsynergyItemTarget(ItemID item) */
unsigned int Func_8078a8c(void) {
    unsigned int ptr = GetItemInfo();
    unsigned short val = *(unsigned short *)(ptr + 0x28);
    unsigned int result = GetMoveInfo(val);
    return *(unsigned char *)result;
}
