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
INCLUDE_ASM("asm/maps/main_menu/OvlFunc_880_2008154.s");
INCLUDE_ASM("asm/maps/main_menu/OvlFunc_880_20081fc.s");
INCLUDE_ASM("asm/maps/main_menu/OvlFunc_880_20082f4.s");
INCLUDE_ASM("asm/maps/main_menu/OvlFunc_880_2008384.s");
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
INCLUDE_ASM("asm/maps/main_menu/OvlFunc_880_20091e4.s");
INCLUDE_ASM("asm/maps/main_menu/OvlFunc_880_20092c8.s");
INCLUDE_ASM("asm/maps/main_menu/main_menu_data.s");

INCLUDE_ASM("asm/maps/main_menu/imports.s");
