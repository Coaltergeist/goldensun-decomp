/* Cluster Func_80917d0..Func_80917d0 extracted from goldensun/asm/rom_8a000/rom_91584_c_a_c.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_91584_c_a_c_a.o and asm/rom_8a000/rom_91584_c_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern void _GetUnit(void);
extern void _AddPartyMember(unsigned int);
extern void _Func_8021390(unsigned int, unsigned int);

void Func_80917d0(unsigned int arg0, unsigned int arg1)
{
    unsigned int r5;
    unsigned int r6;

    r5 = arg0;
    r6 = arg1;
    _GetUnit();
    _AddPartyMember(r5);
    if (r6 != 0) {
        _Func_8021390(r5, r6);
    }
}
