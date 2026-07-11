/* Cluster Func_80796c4..Func_80796c4 extracted from goldensun/asm/rom_77000/rom_79460_c_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_77000/rom_79460_c_a_a_a.o and asm/rom_77000/rom_79460_c_a_a_c.o in
 * goldensun/stage1.ld.
 */
typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern unsigned int GetPartySize(void);

unsigned int Func_80796c4(unsigned int arg0)
{
    unsigned short *r5;
    unsigned int r0;
    unsigned int r1;
    unsigned int r3;
    unsigned int r4;
    unsigned char *r2;

    r5 = (unsigned short *)arg0;
    r0 = 0;
    if (r5 == 0) {
        return r0;
    }
    r0 = GetPartySize();
    r1 = 0;
    if (r0 != 0) {
        r4 = 0xfc;
        r4 <<= 1;
        r2 = (unsigned char *)&gState + r4;
        do {
            r3 = *r2;
            r1++;
            *r5 = r3;
            r2++;
            r5++;
        } while (r1 != r0);
    }
    *(unsigned short *)r5 = 0xff;
    return r0;
}
