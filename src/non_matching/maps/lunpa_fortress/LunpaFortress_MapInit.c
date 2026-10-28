extern unsigned int CS959I_Random(void) __asm__("__Random");
extern void CS959I_Light(unsigned int) __asm__("__Func_80108c4");
extern struct Actor *CS959I_Actor(unsigned int) __asm__("__MapActor_GetActor");
extern void CS959I_SpriteFlags(struct Actor *, unsigned int) __asm__("__Actor_SetSpriteFlags");
extern void OvlFunc_959_200cf60(void);
extern void OvlFunc_959_200d0e4(void);
extern void OvlFunc_959_200d324(void);
extern void OvlFunc_959_200d520(void);
extern void OvlFunc_959_200b054(void);
extern unsigned int CS959I_RandomSlot __asm__(".Lm959_5fa4");
struct CS959I_State { unsigned char pad[0x1c0]; short map, room; };
extern struct CS959I_State CS959I_State __asm__("gState");
struct CS959I_Field { unsigned char pad[0x1c0]; int flags; };
extern struct CS959I_Field *CS959I_Field __asm__("iwram_3001ebc");
int LunpaFortress_MapInit(void)
{
    struct Actor *actor;
    CS959I_RandomSlot = (CS959I_Random() * 7) >> 16;
    if (CS959I_State.map == 0xa0) {
        CS959I_Light(0xe00);
        OvlFunc_959_200cf60();
    }
    if (CS959I_State.map == 0xa1) OvlFunc_959_200d0e4();
    if (CS959I_State.map == 0xa2) OvlFunc_959_200d324();
    if (CS959I_State.map == 0xa3) {
        CS959I_Field->flags = 0x204;
        CS959I_SpriteFlags(CS959I_Actor(12), 0);
        API_Func_8092adc(12, 0, 0);
        __MapActor_SetAnim(12, 0);
        OvlFunc_959_200d520();
        actor = CS959I_Actor(8);
        if (actor) CS959I_SpriteFlags(actor, 0);
        actor->flags = 2;
        actor = CS959I_Actor(9);
        if (actor) CS959I_SpriteFlags(actor, 0);
        actor->flags = 2;
        actor = CS959I_Actor(10);
        if (actor) CS959I_SpriteFlags(actor, 0);
        actor->flags = 2;
        CS959I_Light(0xe00);
        if (CS959I_State.room == 4) {
            CS959I_Light(0xc00);
            OvlFunc_959_200b054();
        }
        if (CS959I_State.room == 3) {
            CS959I_Light(0xc00);
            if (__GetFlag(0x941)) {
                API_MapActor_SetPos(12, 0, 0);
                API_MapActor_SetPos(16, 0x1b00000, 0x1580000);
                API_Func_8092adc(16, 0x5000, 0);
                API_MapActor_SetPos(13, 0x1c80000, 0x1200000);
                API_Func_8092adc(13, 0x5000, 0);
                API_MapActor_SetPos(17, 0x1c80000, 0x1400000);
                CS959I_SpriteFlags(CS959I_Actor(17), 0);
            }
        }
        actor = CS959I_Actor(15);
        if (actor) CS959I_SpriteFlags(actor, 0);
        actor->flags = 2;
        actor->scale.x = 0xcccc;
    }
    return 0;
}
