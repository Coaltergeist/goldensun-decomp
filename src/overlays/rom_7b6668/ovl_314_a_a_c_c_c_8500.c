typedef unsigned char u8;
typedef unsigned int u32;

extern u8 iwram_3001ebc[];
extern u8 *__MapActor_GetActor(int);
extern void OvlFunc_928_2008408(u8 *, u8 *, int, int);

int OvlFunc_928_2008500(u8 *object)
{
    register u8 *self asm("r5") = object;
    register int active asm("r6") = 0;
    u8 *actor;
    int actorX;
    int selfX;

    if (*(int *)(self + 0x38) == (int)0x80000000 &&
        *(int *)(self + 0x40) == (int)0x80000000)
        return 0;

    actor = __MapActor_GetActor(0);
    actorX = *(int *)(actor + 8);
    if ((unsigned)((actorX >> 20) - 0x11) > 1)
        goto reset;
    if ((*(int *)(actor + 0x10) >> 20) != 0xe)
        goto reset;
    selfX = *(int *)(self + 8);
    if ((selfX >> 20) > 0x13)
        goto reset;
    if (*(int *)(self + 0x24) > 0)
        goto reset;
    if (actorX > selfX)
        goto checked;
    {
        register u8 *counter asm("r2") = self + 0x62;
        register int value asm("r3") = *counter;
        *counter = value + 1;
        active = 1;
    }
    goto checked;
reset:
    *(u8 *)(self + 0x62) = 0;
checked:
    if (active) {
        register u8 *counter asm("r2");
        register u32 count asm("r3");
        register u8 *savedCounter asm("r12");
        asm volatile("mov r2, #0x62\n\tadd r2, r5\n\tldrb r3, [r2]\n\tmov r12, r2"
                     : "=r"(counter), "=r"(count), "=r"(savedCounter) : "r"(self));
        if (count > 0x77) {
            asm volatile("ldr r3, =iwram_3001ebc\n\tmov r2, #0xc1\n\tldr r3, [r3]\n\tlsl r2, #1\n\tadd r0, r3, r2\n\tmov r3, #0xc8\n\tldr r2, 9f\n\tstrh r3, [r0]\n\tmov r3, r12\n\tstrb r2, [r3]"
                         : : "r"(savedCounter) : "r0", "r2", "r3", "memory");
        }
    }
    OvlFunc_928_2008408(self, actor, 0x12, active);
    {
        register int result asm("r0");
        asm volatile("mov r0, #0\n\tb 1f\n\t.align 2\n\t9: .word 0\n\t.ltorg\n\t1:"
                     : "=r"(result));
        return result;
    }
}
