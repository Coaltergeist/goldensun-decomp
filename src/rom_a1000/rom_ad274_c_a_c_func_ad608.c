#include "gba/types.h"

extern u8 iwram_3001f2c[];
extern void *SpriteTemplates[] asm(".Laf304");
extern void _DeleteSprite(void *sprite);
extern void *_CreateSprite(void *template);
extern void _Sprite_SetAnim(void *sprite, int animation);

int Func_80ad608(int slot, int templateIndex, int animation)
{
    register u8 *state asm("r7");
    register int offset asm("r6");
    register int slotOffset asm("r0") = slot;
    register int savedTemplateIndex asm("r5");
    register int savedAnimation asm("r8");
    register int templateOffset asm("r2");
    register void **templates asm("r3");
    register void *template asm("r0");
    register void *sprite asm("r0");
    register void *created asm("r5");

    state = *(u8 **)iwram_3001f2c;
    slotOffset <<= 2;
    offset = slotOffset + 0x224;
    sprite = *(void **)(state + offset);
    savedTemplateIndex = templateIndex;
    asm volatile("mov r8, r2"
                 : "+r"(sprite), "+r"(savedTemplateIndex),
                   "=r"(savedAnimation));
    if (sprite != 0) {
        _DeleteSprite(sprite);
        *(void **)(state + offset) = 0;
    }
    templates = SpriteTemplates;
    asm volatile("" : "+r"(templates));
    templateOffset = savedTemplateIndex << 2;
    asm volatile("ldr %0, [%1, %2]"
                 : "=r"(template)
                 : "r"(templates), "r"(templateOffset));
    created = _CreateSprite(template);
    if (created != 0)
        _Sprite_SetAnim(created, savedAnimation);
    *(void **)(state + offset) = created;
    return 1;
}
