typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

extern u8 *__MapActor_GetActor(int actor);
extern u8 *__galloc_iwram(int index, int size);
extern void __LoadItemIcon(int item);
extern u32 __UploadSpriteGFX(u32 slot, int size, const void *gfx);
extern void __gfree(int index);
extern void __DeleteSpriteLayer(void *layer);

void OvlFunc_948_200a0c4(int actorId, int item)
{
    register int itemReg asm("r9") = item;
    register u8 *actor asm("r6");
    register u8 *sprite asm("r7");
    register u8 *buffer asm("r5");
    register int state asm("r10");
    register int zero asm("r8");
    register u32 uploaded asm("r5");

    actor = __MapActor_GetActor(actorId);
    if (actor == 0)
        return;

    state = actor[0x54];
    if (state != 1)
        return;

    sprite = *(u8 **)(actor + 0x50);
    {
        u32 fillValue;
        register u8 *result asm("r0") = __galloc_iwram(0x11, 0xc1 << 3);
        asm volatile("" : "=m"(fillValue));
        asm volatile(
            "mov r3, #0x80\n\t"
            "mov r5, r0\n\t"
            "lsl r3, #3\n\t"
            "mov r2, #0\n\t"
            "add r5, r3\n\t"
            "mov r0, sp\n\t"
            "mov r8, r2\n\t"
            "str r2, [r0, #0]\n\t"
            "ldr r3, =0x040000d4\n\t"
            "mov r1, r5\n\t"
            "ldr r2, =0x85000020\n\t"
            "stmia r3!, {r0, r1, r2}\n\t"
            "sub r3, #12\n\t"
            "mov r0, r9\n\t"
            "bl __LoadItemIcon\n\t"
            : "=r"(buffer), "=r"(zero)
            : "r"(result), "r"(itemReg)
            : "r0", "r1", "r2", "r3", "r8", "lr", "memory");
    }

    uploaded = __UploadSpriteGFX(sprite[0x1c], 0x80, buffer);
    __gfree(0x11);

    asm volatile(
        "mov r3, r6\n\t"
        "add r3, #0x5c\n\t"
        "mov r2, r10\n\t"
        "strb r2, [r3, #0]\n\t"
        "ldr r0, [r7, #0x28]\n\t"
        "bl __DeleteSpriteLayer\n\t"
        "mov r3, r8\n\t"
        "str r3, [r7, #0x28]\n\t"
        "mov r3, r7\n\t"
        "add r3, #0x27\n\t"
        "mov r2, r8\n\t"
        "strb r2, [r3, #0]\n\t"
        "ldrb r2, [r7, #5]\n\t"
        "mov r3, #0x21\n\t"
        "neg r3, r3\n\t"
        "and r3, r2\n\t"
        "strb r3, [r7, #5]\n\t"
        :
        :
        : "r0", "r1", "r2", "r3", "lr", "memory");
    {
        register u32 mask asm("r3");
        register u16 half asm("r2");
        asm volatile("ldr %0, 9f" : "=r"(mask));
        half = *(u16 *)(sprite + 8);
        uploaded &= mask;
        asm volatile("ldr %0, =0xfffffc00" : "=r"(mask));
        mask &= half;
        mask |= uploaded;
        *(u16 *)(sprite + 8) = mask;
    }
    asm volatile(
        "mov r3, r7\n\t"
        "add r3, #0x25\n\t"
        "mov r2, r8\n\t"
        "strb r2, [r3, #0]\n\t"
        "add r3, #1\n\t"
        "strb r2, [r3, #0]\n\t"
        :
        :
        : "r2", "r3", "memory");
    asm volatile("b 8f\n\t.align 2, 0\n9:\n\t.word 0x3ff\n\t.pool\n8:");
}
