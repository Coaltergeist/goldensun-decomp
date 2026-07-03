/* Cluster Func_80ad658..Func_80ad658 extracted from goldensun/asm/rom_a1000/rom_ad274_c.s.
 *
 * Total .text for this TU = 68 bytes (= 0x44).
 * Preserves the original ROM layout when slotted between
 * asm/rom_a1000/rom_ad274_c_a.o and asm/rom_a1000/rom_ad274_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char iwram_3001f2c[];   /* @ 0x03001F2C */
extern void StopTask(void *task);
extern void Func_80ad40c(void);

void Func_80ad658(void)
{
    unsigned char *base = *(unsigned char **)iwram_3001f2c;
    int i;

    for (i = 0x89; i <= 0x8c; i++) {
        if (*(unsigned int *)(base + (i << 2)) != 0) {
            _DeleteSprite(*(unsigned int *)(base + (i << 2)));
            *(unsigned int *)(base + (i << 2)) = 0;
        }
    }
    StopTask((void *)&Func_80ad40c);
}
