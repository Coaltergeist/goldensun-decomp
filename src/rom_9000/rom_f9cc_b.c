/* Cluster Func_800fe9c..Func_800fe9c extracted from goldensun/asm/rom_9000/rom_f9cc.s.
 *
 * Total .text for this TU = 44 bytes (= 0x2c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_f9cc_a.o and asm/rom_9000/rom_f9cc_c.o in
 * goldensun/stage1.ld.
 */
extern int *iwram_3001e70;
extern void Func_8010230(unsigned int a, unsigned int b);
extern void Func_8010000(void);

void Func_800fe9c(void)
{
    int *p;
    unsigned int a;
    unsigned int b;
    unsigned int c;

    p = (int *)*((int *)iwram_3001e70);
    a = 0;
    c = 0;
    b = 0;
    if (p != (int *)0) {
        a = *p++;
        c = *p++;
        b = *p;
    }
    Func_8010230(a, b - c);
    Func_8010000();
}
