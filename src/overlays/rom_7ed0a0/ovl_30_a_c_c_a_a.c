extern void __SetFlag(int flag);
extern int __GetFlag(int flag);
extern unsigned char *__MapActor_GetActor(int actor);

void OvlFunc_964_2009458(void) {
    register unsigned char *actor asm("r0");
    register unsigned int oldValue asm("r2");
    register unsigned int value asm("r3");

    actor = (unsigned char *)0x80;
    actor = (unsigned char *)((unsigned int)actor << 2);
    asm volatile("" : "+r"(actor));
    __SetFlag((unsigned int)actor);

    if (__GetFlag(0x201) != 0) {
        actor = __MapActor_GetActor(0xe);
        value = 0;
        asm volatile("" : "+r"(actor), "+r"(value));
        actor += 0x62;
        *(unsigned char *)actor = value;

        actor = __MapActor_GetActor(0xe);
        actor += 0x59;
        oldValue = *(unsigned char *)actor;
        value = 0xf7;
        asm volatile("" : "+r"(actor), "+r"(oldValue), "+r"(value));
        value &= oldValue;
    } else {
        actor = __MapActor_GetActor(0xe);
        value = 1;
        asm volatile("" : "+r"(actor), "+r"(value));
        actor += 0x62;
        *(unsigned char *)actor = value;

        actor = __MapActor_GetActor(0xe);
        actor += 0x59;
        oldValue = *(unsigned char *)actor;
        value = 8;
        asm volatile("" : "+r"(actor), "+r"(oldValue), "+r"(value));
        value |= oldValue;
    }
    *(unsigned char *)actor = value;
}

void OvlFunc_964_20094ac(void) {
    register unsigned char *actor asm("r0");
    register unsigned int oldValue asm("r2");
    register unsigned int value asm("r3");

    actor = (unsigned char *)0x201;
    asm volatile("" : "+r"(actor));
    __SetFlag((unsigned int)actor);
    actor = (unsigned char *)0x80;
    actor = (unsigned char *)((unsigned int)actor << 2);
    asm volatile("" : "+r"(actor));

    if (__GetFlag((unsigned int)actor) != 0) {
        actor = __MapActor_GetActor(0xe);
        value = 0;
        asm volatile("" : "+r"(actor), "+r"(value));
        actor += 0x62;
        *(unsigned char *)actor = value;

        actor = __MapActor_GetActor(0xe);
        actor += 0x59;
        oldValue = *(unsigned char *)actor;
        value = 0xf7;
        asm volatile("" : "+r"(actor), "+r"(oldValue), "+r"(value));
        value &= oldValue;
    } else {
        actor = __MapActor_GetActor(0xe);
        value = 1;
        asm volatile("" : "+r"(actor), "+r"(value));
        actor += 0x62;
        *(unsigned char *)actor = value;

        actor = __MapActor_GetActor(0xe);
        actor += 0x59;
        oldValue = *(unsigned char *)actor;
        value = 8;
        asm volatile("" : "+r"(actor), "+r"(oldValue), "+r"(value));
        value |= oldValue;
    }
    *(unsigned char *)actor = value;
}
