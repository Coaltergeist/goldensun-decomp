typedef unsigned short u16;
typedef unsigned int u32;
typedef signed int s32;
extern u16 L5b40[] asm(".L5b40");
extern u16 L5b30[] asm(".L5b30");
extern void __MapActor_SetAnim(s32 actorId, s32 animation);

void OvlFunc_943_200b558(s32 actorId, s32 index)
{
    register u32 offset asm("r1") = index << 1;
    register u32 angle asm("r2");
    register u32 temporary asm("r3");
    register u32 limit asm("r5");
    register u32 adjustment asm("r4");

    temporary = (u32)L5b40;
    adjustment = 0xffff97ff;
    angle = *(u16 *)(temporary + offset);
    limit = 0x07fe0000;
    temporary = angle + adjustment;
    temporary <<= 16;
    adjustment = 0x7fe;
    if (temporary <= limit) {
        register u16 *base asm("r2") = L5b30;
        register u32 value asm("r3") = *(u16 *)((u32)base + offset);
        value += 0x70;
        *(u16 *)((u32)base + offset) = value;
        __MapActor_SetAnim(actorId, 3);
    } else {
        limit = 0x17ff;
        temporary = angle + limit;
        temporary <<= 16;
        temporary >>= 16;
        if (temporary <= adjustment) {
            register u16 *base asm("r2") = L5b30;
            register u32 value asm("r3") = *(u16 *)((u32)base + offset);
            value += 0xe0;
            *(u16 *)((u32)base + offset) = value;
            __MapActor_SetAnim(actorId, 3);
        } else {
            adjustment = 0xffff8fff;
            limit = 0x7ffe0000;
            temporary = angle + adjustment;
            temporary <<= 16;
            if (temporary <= limit) {
                register u16 *base asm("r2") = L5b30;
                register u32 value asm("r3") = *(u16 *)((u32)base + offset);
                register u32 amount asm("r4") = 0xe0;
                amount <<= 1;
                value += amount;
                *(u16 *)((u32)base + offset) = value;
                __MapActor_SetAnim(actorId, 2);
            } else {
                register u16 *base asm("r2") = L5b30;
                register u32 value asm("r3") = *(u16 *)((u32)base + offset);
                register u32 amount asm("r5") = 0xc0;
                amount <<= 2;
                value += amount;
                *(u16 *)((u32)base + offset) = value;
                __MapActor_SetAnim(actorId, 1);
            }
        }
    }
}
