typedef unsigned char u8;

extern u8 *__MapActor_GetActor(int);
extern int __GetFlag(int);
extern void __CutsceneStart(void);
extern void __Func_80933f8(int, int, int, int);
extern void __MapActor_SetPos(int, int, int);
extern void __Func_8092950(int, int);
extern void __Actor_SetSpriteFlags(u8 *, int);
extern void __MapTransitionIn(void);
extern void __WaitMapTransition(void);
extern void __PlaySound(int);
extern void __MapActor_SetSpeed(int, int, int);
extern void __Func_8092304(int, int, int);
extern void __Func_809202c(void);
extern void __CutsceneEnd(void);
extern void INTRO_DASH_CALLBACK(void);

void INTRO_DASH_FUNCTION(void)
{
    register u8 *actor asm("r5");
    register int zero asm("r6");
    register u8 *state asm("r7");

    actor = __MapActor_GetActor(0);
    zero = __GetFlag(0x109);
    if (zero == 0) {
        register int r0 asm("r0");
        register int r1 asm("r1");
        register int r2 asm("r2");
        register int r3 asm("r3");

        __CutsceneStart();
        state = actor;
        r0 = 1;
        r1 = 1;
        r2 = 1;
        r3 = 0;
        r0 = -r0;
        r1 = -r1;
        r2 = -r2;
        state += 0x55;
        __Func_80933f8(r0, r1, r2, r3);
        *state = zero;

        r2 = *(short *)(actor + 0x12);
        r1 = *(short *)(actor + 0xa);
        r3 = 0xfff00000;
        r2 <<= 16;
        r2 += r3;
        r1 <<= 16;
        r0 = 0;
        __MapActor_SetPos(r0, r1, r2);

        __Func_8092950(0, 0xf);
        __Actor_SetSpriteFlags(__MapActor_GetActor(0), 0);
        __MapTransitionIn();
        __WaitMapTransition();
        __PlaySound(0xe4);
        r3 = (int)INTRO_DASH_CALLBACK;
        r0 = 0;
        asm volatile("" : "+r"(r0), "+r"(r3));
        *(int *)(actor + 0x6c) = r3;
        r1 = 0x6666;
        r2 = 0x3333;
        __MapActor_SetSpeed(r0, r1, r2);
        __Func_8092304(0, 0, 8);
        __Func_8092950(0, 0);
        __Actor_SetSpriteFlags(__MapActor_GetActor(0), 1);
        {
            register u8 *sprite asm("r1") = *(u8 **)(actor + 0x50);
            register int mask asm("r3") = 0xd;
            register int bits asm("r2") = sprite[9];
            mask = -mask;
            mask &= bits;
            bits = 4;
            mask |= bits;
            sprite[9] = mask;
        }
        __Func_8092304(0, 0, 10);
        *state = 3;
        *(int *)(actor + 0x6c) = zero;
        __Func_809202c();
        __CutsceneEnd();
    }
}
