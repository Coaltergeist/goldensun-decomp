typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

extern u32 iwram_3001e40;
extern u32 _umodsi3_RAM(u32 value, u32 divisor);
extern u8 *__MapActor_GetActor(int actor);
extern void __MapActor_SetPos(int actor, int x, int y);
extern void __MapActor_SetBehavior(int actor, const void *behavior);
extern const u8 gScript_886__02009440[];

void OvlFunc_886_20090c0(void)
{
    register int actorId asm("r6");
    register u32 value asm("r0");
    register u8 *actor asm("r5");
    u8 *leader;
    value = _umodsi3_RAM(iwram_3001e40, 0xb4);
    asm volatile(
        "mov r6, #0x17\n\t"
        "cmp r0, #0x14\n\tbeq 1f\n\t"
        "cmp r0, #0x14\n\tbhi 2f\n\t"
        "cmp r0, #0xa\n\tbeq 3f\n\tb .LOvl886_end\n"
        "2:\n\tcmp r0, #0x1e\n\tbeq 4f\n\tb .LOvl886_end\n"
        "1:\n\tmov r6, #0x18\n\tb 3f\n"
        "4:\n\tmov r6, #0x19\n"
        "3:"
        : "=r"(actorId), "+r"(value));

    actor = __MapActor_GetActor(actorId);
    if (actor == 0)
        return;
    leader = __MapActor_GetActor(8);
    if (leader != 0)
        __MapActor_SetPos(actorId, *(int *)(leader + 8), *(int *)(leader + 0x10));

    {
    asm volatile("ldr r3, =0x6666\n\tmov r2, #0xc0\n\t"
                 "str r3, [r5, #0x18]\n\tstr r3, [r5, #0x1c]\n\t"
                 "ldr r3, [r5, #0xc]\n\tlsl r2, #13\n\t"
                 "add r3, r2\n\tmov r2, r5\n\t"
                 "str r3, [r5, #0xc]\n\tstr r3, [r5, #0x3c]\n\t"
                 "add r2, #0x64\n\t"
                 "mov r3, #0x19\n\tstrh r3, [r2]\n\t"
                 "add r2, #2\n\tmov r3, #0x80\n\tstrh r3, [r2]"
                 : : "r"(actor) : "r2", "r3", "memory");
    }
    asm volatile("ldr r1, =gScript_886__02009440\n\t"
                 "mov r0, r6\n\tbl __MapActor_SetBehavior"
                 : : "r"(actorId) : "r0", "r1", "r2", "r3", "memory");
    asm volatile(".LOvl886_end:");
}
