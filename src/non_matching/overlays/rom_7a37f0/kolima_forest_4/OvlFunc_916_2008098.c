extern unsigned char ewram_2020000[];

extern unsigned char ewram_2020004[];

void OvlFunc_916_2008098(int src_x, int src_y, int width, int height, int arg4, int dst_x, int dst_y) {
    int y;
    int end_y = dst_y + height;
    unsigned int *src = (unsigned int *)(gBuffer + ((src_x + (src_y << 7)) << 2));

    if (dst_y < end_y) {
        int stride = (0x80 - width) << 2;
        int y_off = arg4 << 4;

        for (y = dst_y; y < end_y; y++) {
            int x;
            int row = ((y & 0xf) + y_off) << 5;

            for (x = dst_x; x < dst_x + width; x++) {
                unsigned int val = *src++;
                int tile = (val & 0xfff) << 3;
                int col = (row + (x & 0xf)) << 2;

                *(int *)(0x6002800 + col) = *(int *)(ewram_2020000 + tile);
                *(int *)(0x6002840 + col) = *(int *)(ewram_2020004 + tile);
            }
            src = (unsigned int *)((unsigned char *)src + stride);
        }
    }
}
