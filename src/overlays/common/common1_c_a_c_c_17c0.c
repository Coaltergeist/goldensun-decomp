extern unsigned char *__MapActor_GetActor(int actor_id);
extern void __Actor_TravelTo(unsigned char *actor, int x, int y, int z);
extern void __Actor_SetScript(unsigned char *actor, void *script);
extern void __PlaySound(int sound_id);
extern unsigned char L8[] __asm__(".L8");

int OvlFunc_common1_17c0(unsigned char *actor0)
{
    register unsigned int self asm("r5");
    register unsigned int addr asm("r2");
    register unsigned int savedAddr asm("r8");
    register unsigned char *actor asm("r6");
    register int travelX asm("r1");
    register int travelZ asm("r3");
    short id;
    unsigned char *actorTmp;

    self = (unsigned int)actor0;
    addr = 0x64;
    asm volatile("" : "+r"(addr), "+r"(self));
    addr = addr + self;
    asm volatile("" : "+r"(addr), "+r"(self));
    id = *(short *)addr;
    savedAddr = addr;
    asm volatile("" : "+r"(savedAddr), "+r"(self));

    actorTmp = __MapActor_GetActor(id);

    addr = *(unsigned int *)(self + 0xc);
    addr += 0x240000;
    asm volatile("" : "+r"(addr), "+r"(actorTmp), "+r"(self), "+r"(savedAddr));
    actor = actorTmp;
    asm volatile("" : "+r"(actor), "+r"(addr), "+r"(self), "+r"(savedAddr));
    travelX = *(int *)(self + 8);
    travelZ = *(int *)(self + 0x10);
    __Actor_TravelTo(actorTmp, travelX, addr, travelZ);

    travelZ = (int)(actor + 0x55);
    self = 0;
    asm volatile("" : "+r"(travelZ), "+r"(self), "+r"(actor), "+r"(savedAddr));
    *(unsigned char *)travelZ = self;

    __Actor_SetScript(actor, L8);
    __PlaySound(0x53);

    addr = savedAddr;
    asm volatile("" : "+r"(addr), "+r"(self));
    *(short *)addr = self;

    return 0;
}
