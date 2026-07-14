typedef unsigned char u8;

extern void __Func_8010704(int, int, int, int, int, int);
extern void Func_8010704_NoArgs(void) asm("__Func_8010704");
extern u8 *__MapActor_GetActor(int actor_id);

void OvlFunc_955_200862c(void)
{
    u8 *actor;
    register int common asm("r5");
    register int raw_coordinate asm("r3");
    register int coordinate asm("r2");

    asm volatile(
        "mov r3, #14\n\t"
        "str r3, [sp]\n\t"
        "mov %0, #11\n\t"
        "mov r1, #11\n\t"
        "mov r2, #12\n\t"
        "mov r3, #4\n\t"
        "mov r0, #100\n\t"
        "str %0, [sp, #4]"
        : "=r"(common)
        :
        : "r0", "r1", "r2", "r3", "memory");
    Func_8010704_NoArgs();

    actor = __MapActor_GetActor(15);
    raw_coordinate = *(int *)(actor + 8);
    asm volatile("" : "+r"(raw_coordinate));
    coordinate = raw_coordinate >> 20;
    asm volatile("" : "+r"(coordinate));
    __Func_8010704(13, 28, 1, 4, coordinate, common);

    actor = __MapActor_GetActor(16);
    raw_coordinate = *(int *)(actor + 8);
    asm volatile("" : "+r"(raw_coordinate));
    coordinate = raw_coordinate >> 20;
    asm volatile("" : "+r"(coordinate));
    __Func_8010704(13, 28, 1, 4, coordinate, common);

    actor = __MapActor_GetActor(17);
    raw_coordinate = *(int *)(actor + 16);
    asm volatile("" : "+r"(raw_coordinate));
    coordinate = raw_coordinate >> 20;
    asm volatile("" : "+r"(coordinate));
    __Func_8010704(13, 28, 4, 1, 18, coordinate);
}
