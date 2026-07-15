typedef unsigned char u8;
typedef unsigned int u32;

extern u8 *__CreateActor(int type);
extern int __CheckPartyItem(int item);
extern int __CheckItem(int unit, int item);
extern void __Actor_SetScript(u8 *actor, const void *script);
extern void *__galloc_iwram(int index, int size);
extern void __LoadItemIcon(int item);
extern void __UploadSpriteGFX(int sprite, int size, void *source);
extern void __gfree(int index);
extern void __PlaySound(int sound);
extern void __Func_808f140(u8 *actor, u32 flags);
extern void __Func_8078948(int unit, int slot);
extern void __GiveItemTo(int unit, int item);
extern void __DeleteActor(u8 *actor);
extern void __MapActor_SetAnim(int actor, int animation);
extern const u8 gScript_881__0200cbe4[];

int OvlFunc_896_200c260(int item_param)
{
    register int item asm("r10");
    register int zero asm("r8");
    register u8 *actor asm("r6");
    register int unit asm("r7");
    register int slot asm("r9");
    register u8 *sprite asm("r5");
    register void *gfx asm("r8");
    register int temp2 asm("r2");
    register int temp3 asm("r3");
    register int arg0 asm("r0") = item_param;

    asm volatile(
        "mov r10, %0\n\t"
        "movs r0, #0\n\t"
        "mov r8, r0\n\t"
        "movs r0, #22\n\t"
        "bl __CreateActor\n\t"
        "mov r6, r0"
        : : "r"(arg0) : "r0", "r1", "r2", "r3", "lr", "memory");
    unit = __CheckPartyItem(0xe0);
    slot = __CheckItem(unit, 0xe0);

    if (actor == 0)
        return unit;

    asm volatile(
        "ldr r1, =gScript_881__0200cbe4\n\t"
        "mov r0, %0\n\t"
        "bl __Actor_SetScript"
        : : "r"(actor) : "r0", "r1", "r2", "r3", "lr", "memory");
    sprite = *(u8 **)(actor + 0x50);
    sprite[0x26] = zero;
    sprite[0x27] = zero;
    temp3 = 0x21;
    temp2 = sprite[5];
    temp3 = -temp3;
    temp3 &= temp2;
    temp2 = sprite[9];
    sprite[5] = temp3;
    temp3 = 0x0f;
    temp3 &= temp2;
    sprite[9] = temp3;
    *(u32 *)(actor + 0x28) = 0x28000;
    *(u32 *)(actor + 0x48) = 0x4000;
    gfx = __galloc_iwram(0x11, 0x608);
    __LoadItemIcon(item);
    __UploadSpriteGFX(sprite[0x1c], 0x80, (u8 *)gfx + 0x400);
    __gfree(0x11);
    __PlaySound(0x53);
    __Func_808f140(actor, 3);
    asm volatile(
        "mov r1, %0\n\t"
        "mov r0, %1\n\t"
        "bl __Func_8078948"
        : : "r"(slot), "r"(unit) : "r0", "r1", "r2", "r3", "lr", "memory");
    __GiveItemTo(unit, item);
    __DeleteActor(actor);
    __MapActor_SetAnim(0, 1);

    return unit;
}
