#include "ui.h"

/* Preserve the original section-relative relocation. */
asm(".section .rodata\n.text");
extern unsigned char Rom20198Rodata[] asm(".rodata");

struct UIBox *CreateTimeLabelBox(void)
{
    struct UIBox *box = CreateUIBox(0, 0, 6, 4, 6);

    UIDrawText(Rom20198Rodata + 0x120, box, 0, 0);
    return box;
}
