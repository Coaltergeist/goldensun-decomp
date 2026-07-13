typedef unsigned char u8;
typedef unsigned int u32;

/* Give the script reference the original section-relative relocation. */
asm(".section .rodata\n.text");

typedef struct Actor {
    u8 reserved0[0x38];
    u32 x;
    u32 y;
    u32 z;
} Actor;

extern const u8 actorScript[] asm(".rodata+0x20");
extern void _Actor_SetScript(Actor *actor, const u8 *script);

void Func_8097a54(Actor *actor)
{
    const u32 unset = 0x80000000;

    if (actor->x == unset && actor->y == unset && actor->z == unset)
        _Actor_SetScript(actor, actorScript);
}
