typedef signed short s16;
typedef unsigned short u16;

typedef struct Vec3 {
    int x;
    int y;
    int z;
} Vec3;

extern void __vec3_translate(int angle, int distance, Vec3 *vector);
extern void __Func_8003f3c(int value);
extern void __DeleteActor(void *actor);

void OvlFunc_918_20095ac(unsigned char *actor)
{
    s16 *counter = (s16 *)(actor + 0x64);

    if (*counter <= 0x4f) {
        Vec3 vector;
        register int value asm("r2") = *counter;
        register int angle asm("r0");
        register int distance asm("r1");
        int extra;

        vector.x = *(int *)(actor + 0x38);
        vector.y = *(int *)(actor + 0x3c);
        vector.z = *(int *)(actor + 0x40);
        asm volatile("" : "+r"(value) : : "memory");
        extra = *(s16 *)(actor + 0x66);
        distance = value * 3 << 8;
        distance += extra;
        asm volatile("" : "+r"(distance));
        angle = value << 16;
        asm volatile("" : "+r"(angle));
        __vec3_translate(angle, distance, &vector);
        *(int *)(actor + 8) = vector.x;
        *(int *)(actor + 0xc) = vector.y;
        *(int *)(actor + 0x10) = vector.z;
        asm volatile("" : : "m"(*(int *)(actor + 0x10)));
        {
            register int zero asm("r1");
            register int signedCount asm("r3");
            register unsigned int rawCount asm("r2");

            asm volatile("mov r1, #0\n\t"
                         "ldrsh r3, [r7, r1]\n\t"
                         "ldrh r2, [r7]"
                         : "=r"(zero), "=r"(signedCount), "=r"(rawCount)
                         : "r"(counter));
            if (signedCount <= 0x27) {
                register int step asm("r2") = -0x51e;
                asm volatile("" : "+r"(step));
                *(int *)(actor + 0x18) += step;
                *(int *)(actor + 0x1c) += step;
                asm volatile("ldrh r2, [r7]"
                             : "=r"(rawCount) : "r"(counter));
            }
            {
                register int next asm("r3") = rawCount + 1;
                asm volatile("" : "+r"(next));
                *(u16 *)counter = next;
            }
        }
    } else {
        unsigned char *state = *(unsigned char **)(actor + 0x50);
        __Func_8003f3c(state[0x1c]);
        __DeleteActor(actor);
    }
}
