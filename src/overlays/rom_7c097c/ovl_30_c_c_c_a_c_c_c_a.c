extern unsigned char *__MapActor_GetActor(int actor);
extern unsigned int __Random(void);
extern void __Actor_SetScript(unsigned char *actor, const void *script);
extern void __MapActor_SetSpeed(int actor, int x, int y);
extern int __StartTask(void (*task)(void), int priority);
extern const unsigned char gScript_936__0200beac[];
extern volatile int L5144 __asm__(".L5144");

extern void OvlFunc_936_2009f14(void);

void OvlFunc_936_2009ea4(int actor_id)
{
    register int id __asm__("r6") = actor_id;
    register unsigned char *actor __asm__("r5") =
        __MapActor_GetActor(id);
    unsigned int random;
    register unsigned int value __asm__("r3");
    register unsigned char *destination __asm__("r2");

    *(unsigned short *)(actor + 0x64) = id;
    random = __Random();
    value = (random << 2) + random;
    /* Preserve the original multiply, destination, and shift schedule. */
    __asm__ volatile ("" : "+r" (value));
    destination = actor;
    __asm__ volatile ("" : "+r" (destination));
    value >>= 12;
    __asm__ volatile ("" : "+r" (value));
    destination += 0x66;
    *(unsigned short *)destination = value;
    __Actor_SetScript(actor, gScript_936__0200beac);
}

void OvlFunc_936_2009ed8(void)
{
    register volatile int *state __asm__("r3") = &L5144;
    register int zero __asm__("r2") = 0;
    register int actor __asm__("r0");
    register int x __asm__("r1");
    register int y __asm__("r2");

    __asm__ volatile ("" : "+r" (state), "+r" (zero));
    *state = zero;
    actor = 20;
    x = 0x19999;
    y = 0xcccc;
    __asm__ volatile ("" : "+r" (actor), "+r" (x), "+r" (y));
    __MapActor_SetSpeed(actor, x, y);
    actor = 21;
    x = 0x19999;
    y = 0xcccc;
    __asm__ volatile ("" : "+r" (actor), "+r" (x), "+r" (y));
    __MapActor_SetSpeed(actor, x, y);
    __StartTask(OvlFunc_936_2009f14, 200 << 4);
}
