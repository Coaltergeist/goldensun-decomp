/* rom_7795e8 (overlay file 880): consolidated TU — GS1 main-menu overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/main_menu/exports.s");

extern unsigned char gOvl_02009658[];

unsigned int MainMenu_GetEntrances(void) {
    return (unsigned int)gOvl_02009658;
}

unsigned int MainMenu_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gScript_958__02009688[];

void *MainMenu_GetExits(void) {
    return (void *)gScript_958__02009688;
}

extern unsigned char gOvl_0200968c[];

void *MainMenu_GetActors(void) {
    return (void *)gOvl_0200968c;
}

extern unsigned char gOvl_020096a4[];

void *MainMenu_GetEvents(void) {
    return (void *)gOvl_020096a4;
}

INCLUDE_ASM("asm/maps/main_menu/OvlFunc_880_2008054.s");
#include "dma.h"

extern void __StopTask(void (*)(void));

#define SetRegAnimDest880(queue, dest, src) do { \
    unsigned int savedIme = REG_IME; \
    int count; \
    unsigned int *task; \
    int slot; \
    SET_IO(REG_IME, REG_ADDR_IME); \
    count = *queue; \
    if (count < 32) { \
        slot = count * 12; \
        count++; \
        task = (unsigned int *)((char *)queue + slot); \
        *queue = count; \
        task++; \
        *task++ = (unsigned int)(src); \
        *task++ = (unsigned int)(dest); \
        *task = 0x20000; \
    } \
    SET_IO(REG_IME, savedIme); \
} while (0)

void OvlFunc_880_2008154(void) {
    extern unsigned short timer __asm__(".L16b0");
    unsigned short step = ++timer >> 1;
    unsigned short *queue = (unsigned short *)&gDMATaskCount;

    SetRegAnimDest880(queue, REG_ADDR_BLDCNT, 0x2e51);
    SetRegAnimDest880(queue, REG_ADDR_BLDALPHA, ((16 - step) << 8) | step);

    if (step > 15) {
        __StopTask(OvlFunc_880_2008154);
    }
}


extern volatile unsigned int gKeyHeld;
void __PlaySound(unsigned int);

extern unsigned short D_020094d4[] __asm__(".L14d4");
extern unsigned short D_020094dc[] __asm__(".L14dc");

extern short D_020096b2 __asm__(".L16b2");
extern short D_020096b4 __asm__(".L16b4");
extern short D_020096b6 __asm__(".L16b6");
extern short gScript_930__020096b8;
extern short D_020096ba __asm__(".L16ba");
extern short D_020096bc __asm__(".L16bc");

void OvlFunc_880_20081fc(void) {
    if (!D_020096b2) {
        if (D_020096ba) {
            if (gKeyHeld == 0) {
                D_020096ba = 0;
            }
        } else if (gKeyHeld != 0) {
            if (gKeyHeld == D_020094d4[D_020096b6]) {
                D_020096b6++;
                D_020096ba = 1;
                if (D_020094d4[D_020096b6] == 0) {
                    D_020096b2 = 1;
                    __PlaySound(0x6e);
                }
            } else {
                D_020096b6 = 0;
            }
        }
    }

    if (!D_020096b4) {
        if (D_020096bc) {
            if (gKeyHeld == 0) {
                D_020096bc = 0;
            }
        } else if (gKeyHeld != 0) {
            if (gKeyHeld == D_020094dc[gScript_930__020096b8]) {
                gScript_930__020096b8++;
                D_020096bc = 1;
                if (D_020094dc[gScript_930__020096b8] == 0) {
                    D_020096b4 = 1;
                    __PlaySound(0x6e);
                }
            } else {
                gScript_930__020096b8 = 0;
            }
        }
    }
}

void OvlFunc_880_20082f4(int idx, unsigned char *out) {
    out[1] = 0;
    out[2] = 0;
    if (idx <= 7) {
        out[0] = idx + 0x41;
    } else if (idx <= 0xc) {
        out[0] = idx + 0x42;
    } else if (idx <= 0x17) {
        out[0] = idx + 0x43;
    } else if (idx <= 0x1f) {
        out[0] = idx + 0x1a;
    } else if (idx <= 0x2a) {
        out[0] = idx + 0x41;
    } else if (idx <= 0x2c) {
        out[0] = idx + 0x42;
    } else if (idx <= 0x37) {
        out[0] = idx + 0x43;
    } else if (idx == 0x38) {
        out[0] = 0x21;
    } else if (idx == 0x39) {
        out[0] = 0x3f;
    } else if (idx == 0x3a) {
        out[0] = 0x23;
    } else if (idx == 0x3b) {
        out[0] = 0x26;
    } else if (idx == 0x3c) {
        out[0] = 0x24;
    } else if (idx == 0x3d) {
        out[0] = 0x25;
    } else if (idx == 0x3e) {
        out[0] = 0x2b;
    } else {
        out[0] = 0x3d;
    }
}

int OvlFunc_880_2008384(void)
{
    extern int __GetFlag(int);
    extern struct { unsigned char pad[0x1c0]; short a; unsigned char p2[0x23e - 0x1c2]; short b; } gState_t __asm__("gState");
    extern unsigned char Lconst_2[] __asm__(".Lconst_2");

    /* pooled literal (ldr rN, =2 in the original); .Lconst_<hex> naming as upstream map TUs, e.g. alpine_crossing.c */
    __asm__(".equ .Lconst_2, 2");
    if (__GetFlag(0x144) == 0)
        return 0;
    if (gState_t.b == 2)
        return 0;
    if (gState_t.a == (int)Lconst_2)
        return 0;
    return -1;
}
INCLUDE_ASM("asm/maps/main_menu/MainMenu_MapInit.s");
struct Struct2008cfc {
    unsigned char pad[8];
    unsigned short unk8;
    unsigned char pad2[2];
    unsigned short x;
    unsigned short y;
};

extern unsigned short *iwram_3001e8c;

extern void *__alloc_ewram(unsigned int size);
extern void __DecompressLZ(const void *src, void *dst);
extern void __free(void *ptr);

void OvlFunc_880_2008cfc(struct Struct2008cfc *arg0, const void *src) {
    unsigned short *iwram_ptr = iwram_3001e8c;
    void *buf;
    unsigned short *vram_ptr;
    int offset;
    int row;
    int col;

    buf = __alloc_ewram(0x300);
    __DecompressLZ(src, buf);

    offset = arg0->y * 32 + arg0->x;
    vram_ptr = (unsigned short *)0x06002000 + offset;
    iwram_ptr += offset;

    for (row = 0; row < 8; row++) {
        for (col = 0; col < 16; col++) {
            short tile = (arg0->unk8 * row + col) | -0x1000;
            *vram_ptr++ = tile;
            *iwram_ptr++ = tile;
        }
        vram_ptr += 16;
        iwram_ptr += 16;
    }

    __free(buf);
}
void OvlFunc_880_2008d74(struct Struct2008cfc *pos) {
    unsigned short *buf;
    unsigned short *vram;
    void *tmp;
    int offset;
    int i;
    int j;

    buf = iwram_3001e8c;
    tmp = __alloc_ewram(0x300);
    offset = pos->y * 32 + pos->x;
    vram = (unsigned short *)0x6002000 + offset;
    buf += offset;
    for (i = 0; i < 8; i++) {
        for (j = 0; j < 16; j++) {
            short tile = (i * 16 + 0x20 + j) | -0x1000;
            *vram++ = tile;
            *buf++ = tile;
        }
        vram += 16;
        buf += 16;
    }
    __free(tmp);
}
INCLUDE_ASM("asm/maps/main_menu/OvlFunc_880_2008de4.s");

unsigned int OvlFunc_880_20091e4(unsigned char *buf, unsigned int len, unsigned char *out)
{
    unsigned char key;
    unsigned int i;
    unsigned int j;
    unsigned int count;
    unsigned int idx;
    unsigned int bitpos;
    unsigned int group;
    unsigned int sum;
    unsigned int v;
    unsigned int bit;

    key = buf[len - 1];
    count = 0;
    for (i = 0; i != len - 1; i++)
        buf[i] ^= key;

    bitpos = 0;
    idx = 0;
    sum = 0;
    group = 0;
    do {
        v = 0;
        for (j = 0; j != 6; j++) {
            bit = (buf[idx] >> (7 - bitpos)) & 1;
            bitpos++;
            if (bitpos == 8) {
                bitpos = 0;
                idx++;
            }
            v |= bit << (5 - j);
            if (idx == len)
                break;
        }
        group++;
        out[count] = v;
        count++;
        sum += v;
        if (group == 9) {
            out[count] = sum & 0x3f;
            count++;
            sum = 0;
            group = 0;
        }
    } while (idx != len);

    for (i = 0; i != count; i++)
        out[i] = (out[i] + i) & 0x3f;

    return count;
}

unsigned short OvlFunc_880_20092c8(unsigned int count, const unsigned char *data)
{
    unsigned int i;
    int j;
    unsigned int crc = 0xffff;

    for (i = 0; i != count; i++) {
        crc ^= *data << 8;
        for (j = 0; j != 8; j++) {
            if (crc & 0x8000)
                crc = (crc << 1) - 0x1021;
            else
                crc <<= 1;
        }
        data++;
    }
    return ~crc;
}
INCLUDE_ASM("asm/maps/main_menu/main_menu_data.s");

INCLUDE_ASM("asm/maps/main_menu/imports.s");
