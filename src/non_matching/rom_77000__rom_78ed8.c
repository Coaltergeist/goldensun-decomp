/* Func_78ed8 — index helper for the 8-entry, 180-byte-per-entry table at
 * ROM offset 0x844ec. Returns a pointer to entry `idx` (no bounds check).
 *
 * The table contents live in the matching `.rodata` section emitted by the
 * companion file rom_78ed8_data.s — split out so this translation unit can
 * be pure C while preserving the original byte placement in stage1.ld.
 */

typedef struct {
    unsigned char data[0xb4];
} Entry_844ec;

extern Entry_844ec Data_844ec[];

Entry_844ec *Func_78ed8(unsigned int idx) {
    return &Data_844ec[idx];
}
