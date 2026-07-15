typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

extern u8 *__MapActor_GetActor(int actor);
extern void __Func_80b0278(int value, int actor);
extern int __GetFlag(int flag);
extern void __MessageID(int message);
extern void __Func_8092c40(int actor, int value);
extern int __Func_8091c7c(int a, int b);
extern void __CutsceneWait(int frames);
extern void __ActorMessage(int actor, int value);

void OvlFunc_962_200806c(int actorId)
{
    register int actor asm("r6") = actorId;
    register u8 *mapActor asm("r0") = __MapActor_GetActor(0);
    register u32 position asm("r3");

    asm volatile("mov r2, #0x80\n\tldrh r3, [r0, #6]\n\t"
                 "lsl r2, #6\n\tadd r3, r2\n\t"
                 "ldr r2, =0xffffc000\n\tand r3, r2\n\t"
                 "mov r2, #0xc0\n\tlsl r3, #16\n\t"
                 "lsl r2, #24\n\tcmp r3, r2\n\t"
                 "bne .LOvl962_not_facing"
                 : "=r"(position) : "r"(mapActor) : "r2");
    asm volatile("mov r0, #0x1f\n\tmov r1, r6\n\tbl __Func_80b0278"
                 : : "r"(actor) : "r0", "r1", "r2", "r3", "memory");
    asm volatile("b .LOvl962_end\n\t.pool\n.LOvl962_not_facing:");

    if (__GetFlag(0x96f)) {
        register int message asm("r5") = 0x261c;
        __MessageID(message);
        asm volatile("mov r1, #0\n\tmov r0, r6\n\tbl __Func_8092c40"
                     : : "r"(actor) : "r0", "r1", "r2", "r3", "memory");
        if (__Func_8091c7c(0, 0) == 0) {
            __CutsceneWait(10);
            __MessageID(message + 1);
        } else {
            __MessageID(message + 2);
        }
        __ActorMessage(actor, 0);
    } else {
        __MessageID(0x25cf);
        __ActorMessage(actor, 0);
    }
    asm volatile(".LOvl962_end:");
}
