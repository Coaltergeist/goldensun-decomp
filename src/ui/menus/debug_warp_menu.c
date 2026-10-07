/* ui/menus/debug_warp_menu.c */
#include "nonmatching.h"

extern int StartTask(void *task, int priority);
extern void Debug_WarpMenu(void);

void Func_8028edc(void) {
    StartTask(Debug_WarpMenu, 0xc8 << 4);
}

INCLUDE_ASM("asm/ui/menus/debug_warp_menu/Func_8028ef0.s");

INCLUDE_ASM("asm/ui/menus/debug_warp_menu/Debug_WarpMenu.s");

INCLUDE_ASM("asm/ui/menus/debug_warp_menu/Debug_WarpMenu_UI.s");
