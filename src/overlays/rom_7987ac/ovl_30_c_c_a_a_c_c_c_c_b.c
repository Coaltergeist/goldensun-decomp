extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __Func_80925cc(int actor, int arg);
extern unsigned char *__MapActor_GetActor(int actor);
extern void OvlFunc_902_200811c(void);
extern void __MapActor_SetBehavior(int actor, int behavior);

void OvlFunc_902_20082fc(void)
{
    register int actor_id __asm__("r0");
    register int arg __asm__("r1");
    register unsigned char *actor __asm__("r0");
    register int byte __asm__("r3");
    register int zero __asm__("r5");

    __CutsceneStart();
    arg = 1;
    actor_id = 0x10;
    __asm__ volatile ("" : : "r" (arg), "r" (actor_id));
    __Func_80925cc(actor_id, arg);
    __CutsceneEnd();
    actor = __MapActor_GetActor(0x10);
    byte = 1;
    __asm__ volatile ("" : "+r" (byte));
    actor += 0x5b;
    *actor = byte;
    OvlFunc_902_200811c();
    actor = __MapActor_GetActor(0x10);
    zero = 0;
    __asm__ volatile ("" : "+r" (zero));
    actor += 0x5b;
    *actor = zero;
    arg = 2;
    actor_id = 0x10;
    __asm__ volatile ("" : : "r" (arg), "r" (actor_id));
    __MapActor_SetBehavior(actor_id, arg);
}
