/* Cluster UpdateStatBarPercent..UpdateStatBarPercent extracted from goldensun/asm/rom_77000/rom_77320_c.s.
 *
 * Total .text for this TU = 116 bytes (= 0x74).
 * Preserves the original ROM layout when slotted between
 * asm/rom_77000/rom_77320_c_a.o and asm/rom_77000/rom_77320_c_c.o in
 * goldensun/stage1.ld.
 */
extern void *GetUnit(unsigned int);
extern int Func_af0_from_thumb(int, int);

void UpdateStatBarPercent(unsigned int unit) {
    void *r5;
    int r0;
    int r1;
    int r3;
    int r2;

    r5 = GetUnit(unit);
    r2 = 0x38;
    r0 = *(short *)((char *)r5 + r2);
    r3 = 0x34;
    r1 = *(short *)((char *)r5 + r3);
    r0 <<= 14;
    r0 = Func_af0_from_thumb(r0, r1);
    r3 = 0x80;
    r3 <<= 7;
    if (r0 > r3) {
        r3 = 0x80 << 7;
    } else {
        if (r0 < 0) {
            r3 = 0;
        } else {
            r3 = r0;
        }
    }
    *(short *)((char *)r5 + 0x14) = r3;
    if ((r3 << 16) != 0) {
        goto label_0x3a;
    }
    r2 = 0x38;
    r3 = *(short *)((char *)r5 + r2);
    if (r3 == 0) {
        goto label_0x3a;
    }
    r3 = 1;
    *(short *)((char *)r5 + 0x14) = r3;
label_0x3a:
    r3 = 0x3a;
    r0 = *(short *)((char *)r5 + r3);
    r2 = 0x36;
    r1 = *(short *)((char *)r5 + r2);
    r0 <<= 14;
    r0 = Func_af0_from_thumb(r0, r1);
    r3 = 0x80;
    r3 <<= 7;
    if (r0 > r3) {
        r3 = 0x80 << 7;
    } else {
        if (r0 < 0) {
            r3 = 0;
        } else {
            r3 = r0;
        }
    }
    *(short *)((char *)r5 + 0x16) = r3;
    if ((r3 << 16) != 0) {
        goto label_0x6c;
    }
    r2 = 0x3a;
    r3 = *(short *)((char *)r5 + r2);
    if (r3 == 0) {
        goto label_0x6c;
    }
    r3 = 1;
    *(short *)((char *)r5 + 0x16) = r3;
label_0x6c:
    return;
}
