typedef unsigned char u8;

extern u8 **iwram_3001edc;
extern u8 *iwram_3001ebc;
extern u8 gState[];
extern const u8 ACTOR_SUMMON_SCRIPT[];
extern void __CutsceneStart(void);
extern u8 *__CreateActor(int, int, int, int);
extern void __Actor_SetScript(u8 *, const void *);
extern void __Actor_SetAnim(u8 *, int);
extern void __WaitFrames(int);
extern void __SetFlag(int);
extern void __CutsceneEnd(void);
extern void ACTOR_SUMMON_SPAWN(void);

void ACTOR_SUMMON_FUNCTION(void)
{
    register u8 *state asm("r8");
    register u8 *source asm("r7");
    register u8 *active asm("r6");
    register u8 *actor asm("r5");
    register u8 *address asm("r3");
    register u8 *table asm("r2");
    register int offset asm("r0");
    register u8 *stateAddress asm("r1");
    u8 *savedSprite;

    address = (u8 *)&iwram_3001edc;
    table = *(u8 **)address;
    table = *(u8 **)table;
    address -= 0x20;
    state = table;
    offset = 0xfa;
    table = *(u8 **)address;
    address = gState;
    offset <<= 1;
    address += offset;
    address = *(u8 * volatile *)address;
    address = (u8 *)((unsigned int)address << 2);
    address += 0x14;
    stateAddress = state;
    source = *(u8 **)(table + (unsigned int)address);

    {
    if (*(volatile unsigned int *)stateAddress <= 2) {
        asm volatile("" : "+r"(offset), "+r"(stateAddress),
                     "+r"(state), "+r"(source));
        __CutsceneStart();
        {
            register u8 *stateAddress2 asm("r2") = state;
            active = *(u8 **)(stateAddress2 + 0x14);
        }
        if (active == 0) {
            asm volatile("" : "+r"(source), "+r"(state));
            actor = __CreateActor(0x1a, *(int *)(source + 8),
                                  *(int *)(source + 0xc) + 0x180000,
                                  *(int *)(source + 0x10));
            if (actor != 0) {
                register int sourceAttribute asm("r3") =
                    *(int *)(source + 0x14);
                register u8 *sprite asm("r4") =
                    *(u8 **)(actor + 0x50);
                register const u8 *script asm("r1");
                asm volatile("" : "+r"(sourceAttribute), "+r"(sprite),
                             "+r"(source), "+r"(state));
                *(int *)(actor + 0x14) = sourceAttribute;
                asm volatile("" : "=r"(script) : "0"(ACTOR_SUMMON_SCRIPT)
                             : "memory");
                savedSprite = sprite;
                asm volatile("" : "+m"(savedSprite), "+r"(source),
                             "+r"(state));
                __Actor_SetScript(actor, script);
                asm volatile("" : "+m"(savedSprite), "+r"(source),
                             "+r"(state));
                {
                    register u8 *field asm("r2") = actor;
                    register int value asm("r3") = 4;
                    field += 0x55;
                    *(u8 **)(actor + 0x68) = source;
                    *field = value;
                }
                {
                    register int adjustment asm("r0") = 0xffff8000;
                    register int value asm("r3") =
                        *(int *)(actor + 0xc);
                    sprite = savedSprite;
                    asm volatile("" : "+r"(adjustment), "+r"(value),
                                 "+r"(sprite));
                    value += adjustment;
                    *(int *)(actor + 0xc) = value;
                }
                if (sprite != 0) {
                    register int mask asm("r2") = 0xd;
                    register int bits asm("r3");
                    sprite[0x26] = (int)active;
                    bits = sprite[9];
                    mask = -mask;
                    mask &= bits;
                    bits = 4;
                    mask |= bits;
                    sprite[9] = mask;
                }
                actor[0x54] = (int)active;
                {
                    register u8 *stateAddress3 asm("r1") = state;
                    *(u8 **)(stateAddress3 + 0x14) = actor;
                }
                active = actor;
            } else {
                register u8 *stateAddress4 asm("r2") = state;
                active = *(u8 **)(stateAddress4 + 0x14);
            }
        }

        {
            register int animation asm("r5") = *(int *)state;
            if (animation <= 2) {
                register u8 *visible asm("r7") = active;
                register int one asm("r9");
                register int five asm("r10");
                register int oneInit asm("r0") = 1;
                register int fiveInit asm("r1") = 5;
                asm volatile("" : "+r"(oneInit), "+r"(fiveInit));
                visible += 0x54;
                one = oneInit;
                five = fiveInit;
                do {
                    register int oneTemp asm("r2");
                    register int fiveTemp asm("r3");
                    register int animationArg asm("r1");
                    ACTOR_SUMMON_SPAWN();
                    __WaitFrames(0x1e);
                    oneTemp = one;
                    fiveTemp = five;
                    asm volatile("" : "+r"(oneTemp), "+r"(fiveTemp));
                    animationArg = fiveTemp - animation;
                    *visible = oneTemp;
                    __Actor_SetAnim(active, animationArg);
                    ++animation;
                } while (animation <= 2);
            }
        }

        {
            register u8 *stateAddress5 asm("r0") = state;
            register int mask asm("r1") = 0xfff00000;
            register int center asm("r2") = 0x80000;
            *(int *)stateAddress5 = 3;
            *(int *)(stateAddress5 + 0xc) =
                (*(int *)(active + 8) & mask) + center;
            *(int *)(stateAddress5 + 0x10) =
                (*(int *)(active + 0x10) & mask) + center;
        }
        __SetFlag(0x161);
        __CutsceneEnd();
    }
    }
}
