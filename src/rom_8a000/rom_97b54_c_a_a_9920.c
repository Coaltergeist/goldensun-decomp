typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

extern u8 Data_9f0b0[];
extern void _Actor_SetScript(u8 *actor, u8 *script);
extern u8 *CreateParticleActor(int kind, int x, int y, int z);
extern int Random(void);
extern void Func_8096bec(u8 *actor, int magnitude, int random);

void Func_8099920(u8 *actor)
{
    register u8 *parent asm("r6") = actor;

    if (*(int *)(parent + 0xc) <= *(int *)(parent + 0x14)) {
        register u8 *particle asm("r5");
        register int index asm("r7");
        {
            register u8 *field asm("r2") = parent;
            register int value asm("r3");
            asm volatile("add r2, #0x5e\n\t"
                         "mov r3, #2"
                         : "+r"(field), "=r"(value));
            *(u16 *)field = value;
        }
        _Actor_SetScript(parent, Data_9f0b0);
        particle = 0;
        index = 0;
        *(u32 *)(parent + 0x6c) = (u32)particle;

        while (index <= 2 &&
               (particle = CreateParticleActor(0xf0,
                                                *(int *)(parent + 8),
                                                *(int *)(parent + 0xc),
                                                *(int *)(parent + 0x10))) != 0) {
            register u8 *flag_field asm("r2");
            register u32 scale asm("r3");
            asm volatile("mov r3, #0x80\n\t"
                         "lsl r3, r3, #8"
                         : "=r"(scale));
            asm volatile("mov r2, r5\n\t"
                         "add r2, #0x55"
                         : "=r"(flag_field)
                         : "r"(particle));
            *(u32 *)(particle + 0x1c) = scale;
            *(u32 *)(particle + 0x18) = scale;
            *flag_field = 2;
            *(u32 *)(particle + 0x28) = 0x10000;
            *(int *)(particle + 0x30) = Random() + 0x13333;
            Func_8096bec(particle, 0x200000, Random());
            {
                register u8 *field asm("r2") = particle;
                register int value asm("r3");
                asm volatile("add r2, #0x5e\n\t"
                             "mov r3, #6"
                             : "+r"(field), "=r"(value));
                *(u16 *)field = value;
            }
            _Actor_SetScript(particle, Data_9f0b0);
            index++;
        }
    }
}
