typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef int s32;

extern u32 iwram_3001e8c;

void Func_8022768(s32 x, u32 y, s32 width, s32 height, u32 flags)
{
    register u32 palette_bits asm("r12") = flags;
    u32 base = iwram_3001e8c;
    palette_bits &= 1;
    palette_bits <<= 12;

    if (x < 0) {
        width += x;
        x = 0;
    }
    if (x + width > 0x1d) {
        width = 0x1e - x;
    }
    if ((s32)y < 0) {
        height += y;
        y = 0;
    }
    if ((s32)(y + height) > 0x1d) {
        height = 0x14 - y;
    }

    if (width > 0 && height > 0) {
        u8 *statusByte = (u8 *)(base + 0xea3);
        u32 offset = (y << 6) + (x << 1);

        do {
            u16 *tile = (u16 *)(offset + base);
            s32 count = width;

            if (count != 0) {
                do {
                    u32 value = *tile;
                    value = (value & 0xffffefff) | palette_bits;
                    *tile++ = (u16)value;
                    count--;
                } while (count != 0);
            }

            *statusByte = (2 << (y >> 2)) | *statusByte;
            asm volatile("" ::: "memory");
            height--;
            offset += 0x40;
            y++;
        } while (height != 0);
    }
}
