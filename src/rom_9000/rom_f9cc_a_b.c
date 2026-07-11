/* Cluster Func_800f9cc..Func_800f9cc extracted from goldensun/asm/rom_9000/rom_f9cc_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_f9cc_a_a.o and asm/rom_9000/rom_f9cc_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char Data_97b8[];

void Func_800f9cc(unsigned char *p, int count)
{
    unsigned char *table = Data_97b8;
    int n = count - 1;

    if (n != -1) {
        do {
            *p = table[*p];
            n--;
            p++;
        } while (n != -1);
    }
}
