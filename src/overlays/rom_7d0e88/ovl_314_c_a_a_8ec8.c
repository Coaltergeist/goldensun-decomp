typedef unsigned char u8;

typedef struct {
    int kind;
    int unused4;
    int x;
    int unusedC;
    int y;
    int unused14;
} Work;

extern u8 *__MapActor_GetActor(int actor_id);
extern int OvlFunc_947_2008ddc(int actor_id, unsigned int *height, unsigned int *width,
                              Work *work, int *extra1, int *extra2);
extern void __Func_8010704(int, int, int, int, int, int);
extern void Func_8010704_NoArgs(void) asm("__Func_8010704");
extern void __Actor_SetAnim(u8 *actor, int animation);
extern void __CopyMapTiles(int, int, int, int, int, int);

int OvlFunc_947_2008ec8(int actor_id)
{
    int extra2;
    int extra1;
    unsigned int width;
    unsigned int height;
    Work work;
    u8 *actor = __MapActor_GetActor(actor_id);

    if (!OvlFunc_947_2008ddc(actor_id, &height, &width, &work,
                             &extra1, &extra2))
        return 0;

    asm volatile(
        "ldr r1, [r6, #8]\n\t"
        "ldr r0, [r6, #0x10]\n\t"
        "ldr r2, [sp, #0x14]\n\t"
        "ldr r3, [sp, #0x10]\n\t"
        "str r1, [sp]\n\t"
        "str r0, [sp, #4]\n\t"
        "mov r1, #2\n\t"
        "mov r0, #2"
        :
        :
        : "r0", "r1", "r2", "r3", "memory");
    Func_8010704_NoArgs();
    __Actor_SetAnim(actor, 4);
    asm volatile(
        "mov r1, r7\n\t"
        "add r1, #0x23\n\t"
        "ldrb r2, [r1]\n\t"
        "mov r3, #2\n\t"
        "orr r3, r2\n\t"
        "strb r3, [r1]"
        :
        :
        : "r1", "r2", "r3", "memory");

    if (height > width)
        __CopyMapTiles(0x46, 0x28, work.x + 0x20, work.y + 2,
                       height, width);
    else
        __CopyMapTiles(0x44, 0x28, work.x + 0x20, work.y + 2,
                       height, width);
    return 1;
}
