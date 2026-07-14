typedef unsigned char u8;

extern u8 gState[];
extern u8 *GetFieldActor(int actor_id);
extern u8 *GetFieldActor_NoArgs(void) asm("GetFieldActor");
extern u8 *_Sprite_AddLayer(u8 *sprite, int layer);
extern void _Actor_SetAnim(u8 *actor, int animation);
extern void WaitFrames(int frames);

void Func_942e0(int animation)
{
    register int saved_animation asm("r8") = animation;
    register u8 *actor asm("r5");
    register u8 *sprite asm("r6");
    u8 *layer;

    asm volatile(
        "ldr r3, =gState\n\t"
        "mov r0, #0xfa\n\t"
        "lsl r0, #1\n\t"
        "add r3, r0\n\t"
        "ldr r0, [r3]"
        :
        :
        : "r0", "r3", "memory");
    actor = GetFieldActor_NoArgs();
    sprite = *(u8 **)(actor + 0x50);
    layer = _Sprite_AddLayer(sprite, 0x1b);
    {
        int zero = 0;
        register int coordinate_mask asm("r2");

        sprite[0x26] = zero;
        asm volatile("" ::: "memory");
        layer[5] = 0xf;
        asm("ldr %0, =0xfff00000" : "=r"(coordinate_mask));
        *(int *)(actor + 8) =
            (*(int *)(actor + 8) & coordinate_mask) + 0x80000;
        *(int *)(actor + 0x10) =
            (*(int *)(actor + 0x10) & coordinate_mask) + 0x100000;
        *(int *)(actor + 0x24) = zero;
        *(int *)(actor + 0x2c) = zero;
        *(int *)(actor + 0x38) = 0x80000000;
        *(int *)(actor + 0x40) = 0x80000000;
    }
    _Actor_SetAnim(actor, saved_animation);
    WaitFrames(0x12);
}
