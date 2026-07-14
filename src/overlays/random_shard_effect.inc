extern volatile unsigned int iwram_3001e40[];
extern unsigned int __Random(void);
extern void OvlFunc_common0_10c(int, int, int, int, int, int, int, void *);

int RANDOM_SHARD_FUNCTION(unsigned char *actor)
{
    unsigned char local[0x28];
    register volatile unsigned int *clock asm("r5");
    register unsigned char *work asm("r6") = local;
    register unsigned char *actorReg asm("r7") = actor;
    register int zero asm("r8");
    register int velocity asm("r4");
    register unsigned int random asm("r0");

    *(int *)(work + 4) = 7;
    clock = iwram_3001e40;
    if ((clock[0] & 1) == 0)
        *(int *)(work + 4) = 5;
    *(int *)(work + 8) = 0xcccc;
    *(int *)(work + 0xc) = 0xcccc;
    zero = 0;
    *(int *)(work + 0) = zero;

    random = __Random();
    random <<= 3;
    random >>= 16;
    velocity = random * 3;
    velocity += velocity << 4;
    velocity += velocity << 8;

    OvlFunc_common0_10c(*(int *)(actorReg + 8) +
                            (8 - (clock[0] & 0xf)) * 0x10000,
                        *(int *)(actorReg + 0xc) + 0x1a0000,
                        *(int *)(actorReg + 0x10), 0,
                        -velocity, zero, 0xb0000, work);
    return 0;
}
