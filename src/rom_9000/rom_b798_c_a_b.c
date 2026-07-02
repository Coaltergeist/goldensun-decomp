/* Cluster SpriteLayer_SetAnim..SpriteLayer_SetAnim extracted from goldensun/asm/rom_9000/rom_b798_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_9000/rom_b798_c_a_a.o and asm/rom_9000/rom_b798_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern void *_GetSpriteInfo(int id);

void SpriteLayer_SetAnim(void *self, int anim) {
    unsigned char *r5;
    int r6;
    int r7;
    void *r0;
    unsigned int *arr;
    unsigned int r2;

    r5 = (unsigned char *)self;
    r6 = anim;
    r7 = 0x80 & r6;
    if (*(int *)(r5 + 0xc) == 0) {
        return;
    }
    r0 = _GetSpriteInfo(*(short *)r5);
    if (r6 >= *((unsigned char *)r0 + 5)) {
        return;
    }
    arr = *(unsigned int **)(r5 + 0xc);
    r2 = arr[r6];
    *(r5 + 4) = *((unsigned char *)r0 + 4);
    *(unsigned int *)(r5 + 0x10) = r2;
    *(r5 + 0x15) = 0x10;
    if (r7 != 0) {
        return;
    }
    *(r5 + 0x14) = r7;
    *(unsigned short *)(r5 + 2) = r7;
}
