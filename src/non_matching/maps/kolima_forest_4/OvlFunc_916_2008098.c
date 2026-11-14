/*
 * Original binary used raw integer constants `0x02020000` and `0x02020004` rather than
 * relocated `ewram_2020000` / `ewram_2020004` symbols (`ref_obj` has `R_ARM_ABS32`
 * relocations from disassembly symbolization; using `ewram_2020000` / `ewram_2020004`
 * causes `08.loop` `load_mems` to hoist `.LC*` pool loads out of the inner loop and
 * `combine` to fold `ldr r2, [r1, r6]` instead of `adds r2, r1, r6; ldr r2, [r2, #0]`).
 * With raw `0x02020000` / `0x02020004` below, pool order and loop structure match except
 * `08.loop` hoists `0x02020000` into `r7` (1 register threshold diff).
 */
void OvlFunc_916_2008098(int src_x, int src_y, int width, int height, int arg4, int dst_x, int dst_y) {
    unsigned int *src = (unsigned int *)(gBuffer + (((src_y << 7) + src_x) << 2));
    int y;

    for (y = dst_y; y < dst_y + height; y++) {
        int x;

        for (x = dst_x; x < dst_x + width; x++) {
            int *dst;
            unsigned int val = *src++;
            int col = ((((y & 0xf) + (arg4 << 4)) << 5) + (x & 0xf)) << 2;
            int tile = (val & 0xfff) << 3;

            dst = (int *)(0x6002800 + col);
            *dst = *(int *)(0x02020000 + tile);
            *(int *)(0x6002840 + col) = *(int *)(0x02020004 + tile);
        }
        src = (unsigned int *)((unsigned char *)src + ((0x80 - width) << 2));
    }
}
