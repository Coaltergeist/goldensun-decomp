typedef unsigned char u8;
typedef unsigned int u32;

extern u32 Random(void);
extern void vec3_translate(int x, int y, int *position);
extern u8 *CreateParticleActor(int type, int x, int y, int z);
extern void _Actor_SetScript(u8 *actor, const void *script);
extern void _Actor_SetAnim(u8 *actor, int animation);
extern void Actor_SetAnim_NoArgs(void) asm("_Actor_SetAnim");
extern const u8 particle_script[] asm(".L9e87c");

void Func_808f28c(u8 *source)
{
    if ((Random() * 100) >> 16 <= 9) {
        int position[3];
        u8 *particle;
        u8 *state;
        u32 x_random;

        position[0] = *(int *)(source + 8);
        position[1] = *(int *)(source + 0xc);
        position[2] = *(int *)(source + 0x10);
        x_random = Random();
        vec3_translate(x_random << 4, Random(), position);
        particle = CreateParticleActor(0x11d, position[0], position[1],
                                       position[2]);
        if (particle != 0) {
            _Actor_SetScript(particle, particle_script);
            asm volatile(
                "mov r1, #0\n\t"
                "mov r0, %0"
                :
                : "r"(particle)
                : "r0", "r1");
            Actor_SetAnim_NoArgs();
            state = *(u8 **)(particle + 0x50);
            asm volatile(
                "mov r3, #0xd\n\t"
                "ldrb r2, [%0, #9]\n\t"
                "neg r3, r3\n\t"
                "and r3, r2\n\t"
                "mov r2, #4\n\t"
                "orr r3, r2\n\t"
                "strb r3, [%0, #9]"
                :
                : "r"(state)
                : "r2", "r3", "memory");
        }
    }
}
