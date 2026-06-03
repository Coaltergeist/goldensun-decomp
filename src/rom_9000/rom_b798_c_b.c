/* Cluster Func_800bacc..Func_800baf8 extracted from goldensun/asm/rom_9000/rom_b798_c.s.
 *
 * Total .text for this TU = 84 bytes (= 0x54).
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_b798_c_a.o and asm/rom_9000/rom_b798_c_c.o in
 * goldensun/stage1.ld.
 */
unsigned int Func_800bacc(unsigned char *sprite, unsigned int timer)
{
    unsigned char count;
    unsigned char **p;
    int i;

    count = *(unsigned char *)(sprite + 0x27);
    if (count != 0) {
        timer <<= 4;
        p = (unsigned char **)(sprite + 0x28);
        i = count;
        do {
            unsigned char *e = *p;
            p++;
            if (e != 0 && *(int *)(e + 0xc) != 0)
                *(unsigned short *)(e + 2) = timer;
            i--;
        } while (i != 0);
    }
    return 0;
}
void Func_800baf8(unsigned char *sprite, int speed) {
    int count;
    unsigned int *p;
    int i;

    count = *(unsigned char *)(sprite + 0x27);
    if (count == 0)
        return;
    p = (unsigned int *)(sprite + 0x28);
    i = count;
    do {
        unsigned int e;
        e = *p++;
        if (e != 0 && *(unsigned int *)((char *)e + 0xc) != 0) {
            *(unsigned char *)((char *)e + 0x15) = speed;
        }
        i--;
    } while (i != 0);
}
