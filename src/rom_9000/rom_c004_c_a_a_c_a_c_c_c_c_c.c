extern unsigned char CameraScript[] asm(".L135f0");
extern void Actor_SetScript(unsigned char *actor, unsigned char *script);

void Camera_SetTarget(unsigned char *actor, void *target) {
    Actor_SetScript(actor, CameraScript);
    if (target != 0) {
        register int value asm("r3") = 0x80;
        register unsigned char *field64 asm("r2");
        register int zero asm("r3");

        asm volatile("" : "+r"(value));
        value <<= 8;
        *(int *)(actor + 0x34) = value;
        value = 0x80;
        asm volatile("" : "+r"(value));
        value <<= 11;
        field64 = actor;
        asm volatile("" : "+r"(field64), "+r"(value));
        *(int *)(actor + 0x30) = value;
        field64 += 0x64;
        zero = 0;
        asm volatile("" : "+r"(zero));
        *(void **)(actor + 0x68) = target;
        *(unsigned short *)field64 = zero;
    }
}
