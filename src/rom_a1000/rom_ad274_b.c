/* Cluster Func_80ad318..Func_80ad318 extracted from goldensun/asm/rom_a1000/rom_ad274.s.
 *
 * Total .text for this TU = 68 bytes (= 0x44).
 * Preserves the original ROM layout when slotted between
 * asm/rom_a1000/rom_ad274_a.o and asm/rom_a1000/rom_ad274_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int iwram_3001f2c;
extern int _Func_800bdd4(int task);
extern void Func_8004278(int task);
extern int Func_80ad35c;

void Func_80ad318(void) {
    unsigned char *base;
    int i;

    base = (unsigned char *)iwram_3001f2c;
    for (i = 0x89; i <= 0x8c; i++) {
        if (*(unsigned int *)(base + (i << 2)) != 0) {
            _Func_800bdd4(*(unsigned int *)(base + (i << 2)));
            *(unsigned int *)(base + (i << 2)) = 0;
        }
    }
    Func_8004278((int)&Func_80ad35c);
}
