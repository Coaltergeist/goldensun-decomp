extern unsigned int __Random(void);
extern unsigned char *__CreateActor(int actor, int x, int y, int z);
extern void OvlFunc_935_2008b54(unsigned char *actor, unsigned int distance,
                               unsigned int direction);
extern void __Actor_SetScript(unsigned char *actor, const void *script);
extern const unsigned char gScript_935__02009884[];

void OvlFunc_935_2008b8c(unsigned char *source)
{
    unsigned char *actor;
    register int literal asm("r3");
    int i = 0;

    while (i <= 3) {
        actor = __CreateActor(0xf0, *(int *)(source + 8),
                              *(int *)(source + 0xc),
                              *(int *)(source + 0x10));
        if (actor == 0)
            break;

        asm volatile("ldr %0, .LOvlFunc_935_2008b8c_literals"
                     : "=r"(literal));
        *(int *)(actor + 0x1c) = literal;
        *(int *)(actor + 0x18) = literal;
        actor[0x55] = 2;
        asm volatile("ldr %0, .LOvlFunc_935_2008b8c_literals+4"
                     : "=r"(literal));
        *(int *)(actor + 0x28) = literal;
        {
            register int random asm("r0") = __Random();
            register unsigned char *flag asm("r2");

            asm volatile("ldr %0, .LOvlFunc_935_2008b8c_literals+8"
                         : "=r"(literal));
            flag = actor;
            asm volatile("" : "+r"(literal), "+r"(flag));
            random += literal;
            asm volatile("" : "+r"(random), "+r"(flag));
            flag += 0x59;
            asm volatile("" : "+r"(random), "+r"(flag));
            literal = 1;
            asm volatile("" : "+r"(random), "+r"(flag), "+r"(literal));
            *(int *)(actor + 0x30) = random;
            *flag = literal;
        }
        OvlFunc_935_2008b54(actor, 0x200000, __Random());
        {
            register unsigned char *field asm("r2") = actor;
            register int value asm("r3");

            field += 0x5e;
            asm volatile("" : "+r"(field));
            value = 8;
            asm volatile("" : "+r"(field), "+r"(value));
            *(unsigned short *)field = value;
        }
        {
            register unsigned char *actor_arg asm("r0") = actor;
            register const unsigned char *script asm("r1");

            asm volatile("" : "+r"(actor_arg));
            asm volatile("ldr %0, .LOvlFunc_935_2008b8c_literals+12"
                         : "=r"(script));
            asm volatile("" : "+r"(actor_arg), "+r"(script));
            __Actor_SetScript(actor_arg, script);
        }
        i++;
    }
}

asm(
    ".text\n"
    ".align 2, 0\n"
    ".LOvlFunc_935_2008b8c_literals:\n"
    ".word 0x8ccc\n"
    ".word 0xffff0000\n"
    ".word 0xcccc\n"
    ".word gScript_935__02009884\n"
    ".size OvlFunc_935_2008b8c, .-OvlFunc_935_2008b8c\n");
