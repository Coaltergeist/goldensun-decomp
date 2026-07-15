typedef unsigned char u8;
typedef unsigned short u16;
typedef signed int s32;

extern u8 *__MapActor_GetActor(s32 actorId);
extern u8 *__CreateActor(s32 kind, s32 x, s32 y, s32 z);
extern void __Actor_SetScript(u8 *actor, const void *script);
extern const u8 gScript_888__0200c15c[];
extern void OvlFunc_888_200a6f0(u8 *actor);

void OvlFunc_888_200a750(s32 actorId, s32 phaseDelta)
{
    register s32 delta asm("r8") = phaseDelta;
    register u8 *parent asm("r7");
    register u8 *actor asm("r6");
    register u8 *sprite asm("r5");

    parent = __MapActor_GetActor(actorId);
    if (parent != 0) {
        register s32 kind asm("r0");
        register s32 x asm("r1");
        register s32 y asm("r2") = *(s32 *)(parent + 0xc) + 0x2d0000;
        register s32 z asm("r3");
        asm volatile("" : "+r" (y));
        x = *(s32 *)(parent + 8);
        z = *(s32 *)(parent + 0x10);
        asm volatile("" : "+r" (x), "+r" (y), "+r" (z));
        asm volatile("ldr %0, .Lkind888a750" : "=r" (kind));
        actor = __CreateActor(kind, x, y, z);
        if (actor != 0) {
            {
                register const void *script asm("r1");
                asm volatile("ldr %0, .Lscript888a750" : "=r" (script));
                sprite = *(u8 **)(actor + 0x50);
                __Actor_SetScript(actor, script);
            }
            {
                register u8 *field asm("r3") = actor;
                register s32 zero asm("r2") = 0;
                field += 0x55;
                *field = zero;
                field += 0xf;
                *(u16 *)field = zero;
                field += 2;
                asm volatile("" : "+r" (field));
                zero = delta;
                *(u16 *)field = zero;
            }
            {
                register void (*callback)(u8 *) asm("r3");
                register s32 zero asm("r1");
                asm volatile("ldr %0, .Lcallback888a750" : "=r" (callback));
                asm volatile("ldr %0, .Lzero888a750" : "=r" (zero) : "r" (callback));
                *(void (**)(u8 *))(actor + 0x6c) = callback;
                sprite[0x26] = zero;
            }
            {
                register s32 parentFlags asm("r3") = (*(u8 **)(parent + 0x50))[9];
                register s32 sourceBits asm("r2") = 0xc;
                register s32 spriteFlags asm("r1");
                sourceBits &= parentFlags;
                asm volatile("" : "+r" (sourceBits), "+r" (parentFlags));
                spriteFlags = sprite[9];
                parentFlags = -0xd;
                parentFlags &= spriteFlags;
                parentFlags |= sourceBits;
                *(u8 **)(actor + 0x68) = parent;
                sprite[9] = parentFlags;
            }
            asm volatile(
                "b .Lafter888a750\n\t"
                ".align 2, 0\n"
                ".Lzero888a750:\n\t"
                ".word 0\n\t"
                ".Lkind888a750:\n\t"
                ".word 0x11d\n\t"
                ".Lscript888a750:\n\t"
                ".word gScript_888__0200c15c\n\t"
                ".Lcallback888a750:\n\t"
                ".word OvlFunc_888_200a6f0\n\t"
                ".pool\n"
                ".Lafter888a750:");
        }
    }
}
