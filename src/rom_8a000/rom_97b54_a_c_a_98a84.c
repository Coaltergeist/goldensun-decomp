typedef unsigned char u8;
typedef unsigned short u16;

extern void _PlaySound(int soundId);
extern u8 *CreateParticleActor(int type, int x, int y, int z);
extern void _Actor_SetAnim(u8 *actor, int animation);
extern void WaitFrames(int frames);

u8 *Func_8098a84(int x, int y, int z, int finalAngle)
{
    u8 *actor;
    u8 *metadata;
    int scale;
    register int angleStep asm("r6");
    register int mask asm("r3");
    register int limit asm("r2");

    _PlaySound(0x8a);
    actor = CreateParticleActor(0xd7, x, y, z);
    if (actor != 0) {
        *(int *)(actor + 0x1c) = 0x4000;
        *(int *)(actor + 0x18) = 0x4000;
        *(int *)(actor + 0x30) = 0x30000;
        *(int *)(actor + 0x34) = 0x30000;
        __asm__ volatile (
            "ldr r1, [%0, #0x50]\n\t"
            "mov r3, #0xd\n\t"
            "ldrb r2, [r1, #9]\n\t"
            "neg r3, r3\n\t"
            "and r3, r2\n\t"
            "strb r3, [r1, #9]"
            :: "r" (actor) : "r1", "r2", "r3", "memory");
        _Actor_SetAnim(actor, 3);

        scale = *(int *)(actor + 0x18);
        if (scale < 0x10000) {
            __asm__ ("ldr %0, =0x2000" : "=r" (angleStep));
            do {
                scale += 0x800;
                *(int *)(actor + 0x1c) = scale;
                *(int *)(actor + 0x18) = scale;
                *(u16 *)(actor + 6) += angleStep;
                WaitFrames(1);
                scale = *(int *)(actor + 0x18);
                __asm__ volatile ("" : "+r" (scale) :: "memory");
                __asm__ ("ldr %0, =0xffff" : "=r" (limit));
            } while (scale <= limit);
            __asm__ volatile ("b 1f\n\t.pool\n1:");
        }
        *(u16 *)(actor + 6) = finalAngle;
    }
    return actor;
}
