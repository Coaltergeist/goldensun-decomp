#include "ui.h"

extern void *galloc_ewram(int slot, int size);
extern void Func_801eea0(unsigned int flags);
extern void Func_801f200(unsigned int flags);
extern unsigned int iwram_3001e8c;

struct UIBoxSetup {
    struct UIBox *box;
    u16 x;
    u16 y;
    u16 width;
    u16 height;
    u16 flags;
};

void Func_801ef08(unsigned int flags)
{
    struct UIBoxSetup *setup = (struct UIBoxSetup *)galloc_ewram(0x10, 0x10);
    unsigned char *busy = (unsigned char *)(iwram_3001e8c + 0xea6);
    unsigned char clear = 0;

    *busy = 1;
    Func_801eea0(flags);
    setup->box = CreateUIBox(setup->x, setup->y, setup->width, setup->height, 6);
    Func_801f200(flags);
    *busy = clear;
}
