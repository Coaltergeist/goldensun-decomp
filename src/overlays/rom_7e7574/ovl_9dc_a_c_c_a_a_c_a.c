typedef unsigned char u8;

extern u8 *__MapActor_GetActor(int actorId);
extern void __Func_8012330(int, int, int);
extern void __PlaySound(int soundId);
extern void __Func_8010704(int, int, int, int, int, int);
extern void __Actor_SetSpriteFlags(void *actor, int flags);
extern void __SetFlag(int flag);

/* 水位上昇後の画面効果とマップ状態を設定 */
void OvlFunc_959_2008bec(void)
{
    if (*(int *)(__MapActor_GetActor(12) + 0x10) >> 20 > 0x16) {
        register int fadeX asm("r0") = 0x80;
        register int fadeY asm("r1") = 0x80;
        register int fadeZ asm("r2") = 0x80;
        register int minusX asm("r0");
        register int minusY asm("r1");
        register int color asm("r2");
        u8 *actor;

        asm volatile("" : "+r"(fadeX), "+r"(fadeY), "+r"(fadeZ));
        fadeX <<= 11;
        fadeY <<= 11;
        fadeZ <<= 9;
        __Func_8012330(fadeX, fadeY, fadeZ);
        minusX = 1;
        minusY = 1;
        asm volatile("" : "+r"(minusX), "+r"(minusY));
        minusY = -minusY;
        color = 0xe666;
        asm volatile("" : "+r"(minusY), "+r"(color));
        minusX = -minusX;
        __Func_8012330(minusX, minusY, color);
        __PlaySound(0x90);
        {
            register int sourceX asm("r5") = 0x0f;
            __Func_8010704(0x0f, 0x14, 1, 1, sourceX, 0x16);
            __Func_8010704(0x11, 0x17, 1, 3, sourceX, 0x17);
        }
        actor = __MapActor_GetActor(12);
        if (actor != 0) {
            __Actor_SetSpriteFlags(actor, 0);
            actor[0x23] = 2;
        }
        __SetFlag(0x943);
    }
}
