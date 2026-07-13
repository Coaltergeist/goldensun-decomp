typedef unsigned char u8;

extern u8 *__MapActor_GetActor(int actorId);
extern void __Actor_SetSpriteFlags(void *actor, int flags);
extern void __Func_8012078(int, int, int, int);
extern void __SetFlag(int flag);

/* マップキャラを消去して演出用オブジェクトを配置 */
void OvlFunc_946_20095d0(int actorId)
{
    register int actorIdReg asm("r5") = actorId;
    u8 *actor = __MapActor_GetActor(14);

    if (actor != 0)
        actor[0x59] = 0;

    __Actor_SetSpriteFlags(__MapActor_GetActor(actorIdReg), 0);
    {
        register int x asm("r0");
        register int y asm("r1");
        register int z asm("r2");
        register int kind asm("r3");
        y = 0x90;
        z = 0xa0;
        x = 0;
        asm volatile("" : "+r"(x), "+r"(y), "+r"(z));
        y <<= 16;
        z <<= 17;
        kind = 0xfd;
        __Func_8012078(x, y, z, kind);
    }
    {
        register int x asm("r0");
        register int y asm("r1");
        register int z asm("r2");
        register int kind asm("r3");
        y = 0xbc;
        z = 0xa0;
        x = 0;
        asm volatile("" : "+r"(x), "+r"(y), "+r"(z));
        y <<= 18;
        z <<= 17;
        kind = 0xfd;
        __Func_8012078(x, y, z, kind);
    }
    asm volatile("" : "+r"(actorIdReg));
    __SetFlag(0x243);
}
