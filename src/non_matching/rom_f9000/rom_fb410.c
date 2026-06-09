/* ClearModM(track)  [rom_f9000]
 * Source asm: goldensun/asm/rom_f9000/rom_f9ef8_c_c_a.s
 *
 * Logic is a faithful 1:1 of the expected disassembly (clears track[0x1a] and
 * track[0x16], then ORs 0xc or 0x3 into track[0] depending on track[0x18]).
 * It does NOT byte-match yet, pure codegen shape:
 *   - the ROM is a frameless leaf (`bx lr`); this compiles framed
 *     (`push {lr}` … `pop {r0}; bx r0`),
 *   - register allocation + branch ordering differ (the default value is
 *     materialized after the cmp in the ROM, before it here).
 * A good permuter seed; the structure is right, only the shape is off.
 */
void ClearModM(unsigned char *track) {
    unsigned char v;

    track[0x1a] = 0;
    track[0x16] = 0;
    if (track[0x18] == 0)
        v = 0xc;
    else
        v = 3;
    track[0] |= v;
}
