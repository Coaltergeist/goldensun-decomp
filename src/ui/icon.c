#include "nonmatching.h"

extern unsigned char L2a2e0[] __asm__(".L2a2e0");
extern unsigned char gItemIcons[] __asm__("gItemIcons");

unsigned int NumItemIcons(void) {
    return (L2a2e0 - gItemIcons) >> 2;
}

extern unsigned char L2e108[] __asm__(".L2e108");
extern unsigned char gMoveIcons[] __asm__("gMoveIcons");

unsigned int NumMoveIcons(void) {
    return ((int *)L2e108) - ((int *)gMoveIcons);
}

INCLUDE_ASM("asm/ui/icon/LoadOldUIIcon.s");
extern unsigned char *_GetMoveInfo(unsigned int move);
extern void LoadItemIconID(unsigned int id, unsigned int a, unsigned int b, unsigned int c, unsigned int d);

void LoadOldMoveIcon(unsigned int move, unsigned int a, unsigned int b, unsigned int c, unsigned int d) {
    LoadItemIconID(_GetMoveInfo(move)[4], a, b, c, d);
}
INCLUDE_ASM("asm/ui/icon/LoadItemIconID.s");
INCLUDE_ASM("asm/ui/icon/DrawInventoryIcon.s");
extern int DrawInventoryIcon(int, int);
int LoadInventoryIcon(int item, int a1, int slot)
{
    unsigned char *buf;

    buf = galloc_iwram(0x11, 0x608);
    DrawInventoryIcon(item, a1);
    UploadSpriteGFX(slot, 0x80, buf + 0x400);
    gfree(0x11);
    return 1;
}

int LoadStatusIcon(int icon, int unused, int slot) {
    unsigned char *buf;

    buf = galloc_iwram(0x11, 0x608);
    DecompressStatusIcon(icon);
    UploadSpriteGFX(slot, 0x80, buf + 0x400);
    gfree(0x11);
    return 1;
}

INCLUDE_ASM("asm/ui/icon/LoadUIBanner.s");
struct IconState_i {
    unsigned char pad0[0x600];
    unsigned short w, h;
    void *src;
};
extern struct IconState_i *iwram_3001e94__i __asm__("iwram_3001e94");
extern unsigned char *_GetItemInfo(unsigned int);
extern void *gItemIcons__i[] __asm__("gItemIcons");
extern void LoadIcon(void *, int);
void LoadItemIcon(unsigned int item)
{
    struct IconState_i *s = iwram_3001e94__i;
    unsigned char *info = _GetItemInfo(item & 0x1ff);
    if (item != 0)
        s->src = gItemIcons__i[*(unsigned short *)(info + 6)];
    else
        s->src = gItemIcons__i[0];
    s->w = 2;
    s->h = 2;
    LoadIcon(s, 0);
}
extern void LoadMoveIconID(unsigned int id, unsigned int a, unsigned int b, unsigned int c, unsigned int d);

void LoadMoveIcon(unsigned int move, unsigned int a, unsigned int b, unsigned int c, unsigned int d) {
    LoadMoveIconID(_GetMoveInfo(move)[4], a, b, c, d);
}
INCLUDE_ASM("asm/ui/icon/LoadMoveIconID.s");
struct IconState {
    unsigned char pad0[0x600];
    unsigned short w, h;
    void *src;
};
extern struct IconState *iwram_3001e94__k1 __asm__("iwram_3001e94");
extern void *gStatusIcons[];
extern void LoadIcon(void *, int);
void DecompressStatusIcon(int id)
{
    struct IconState *s = iwram_3001e94__k1;

    s->src = gStatusIcons[id];
    s->w = 2;
    s->h = 2;
    LoadIcon(s, 0);
}
INCLUDE_ASM("asm/ui/icon/LoadPortrait.s");

void Func_801a5a0(void) {}

INCLUDE_ASM("asm/ui/icon/LoadIcon.s");
