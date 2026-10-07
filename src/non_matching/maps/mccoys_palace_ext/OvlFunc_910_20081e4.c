extern unsigned char *iwram_3001ebc;
extern unsigned char gScript_910__02008bf4[];
extern void OvlFunc_910_20088e8(void);
extern void *__MapActor_GetActor(int);
extern void __ShowActorMessage_NoWait(int, int);
extern int __Func_8091c7c(int, int);

void OvlFunc_910_20081e4(void)
{
    API_CutsceneStart();
    if (API_GetFlag(0x84a)) {
        if (API_GetFlag(0x304)) {
            if (!API_GetFlag(0x201)) {
                API_MessageID(0x1414);
                API_ActorMessage_Wait(0xc, 0, 0xa);
                API_MapActor_Emote(0xc, 0x107, 0x28);
                API_ActorMessage_Wait(0xc, 0, 0xa);
                API_Func_80925cc(0xc, 2);
                API_SetFlag(0x201);
            }
            API_MessageID(0x1416);
            API_ActorMessage(0xc, 0);
        } else {
            API_MessageID(0x1413);
            API_ActorMessage(0xc, 0);
            API_Func_8092a1c(0xc, 0x80 << 9, gScript_910__02008bf4);
        }
    } else {
        API_MessageID(0x140d);
        __ShowActorMessage_NoWait(0xc, 0);
        if (__Func_8091c7c(0, 0) == 0) {
            *(unsigned short *)(iwram_3001ebc + 0x1d8) += 1;
            API_ActorMessage_Wait(0xc, 0, 0xa);
            if (*(int *)((char *)__MapActor_GetActor(0) + 0x10) <= 0x10dffff) {
                API_MapActor_SetSpeed(0xc, 0xcccc, 0x6666);
                API_MapActor_TravelToAnimWait(0, 0xad << 1, 0x89 << 1);
                API_MapActor_TravelToAnimWait(0, 0xa4 << 1, 0x8d << 1);
                API_Func_8092adc(0, 0xc0 << 8, 0);
            }
            API_Func_8092adc(0xb, 0x80 << 5, 0);
            API_Func_8092adc(0xc, 0xe0 << 7, 0x14);
            API_MapActor_Emote(0xb, 0x81 << 1, 0x14);
            API_Func_809259c(0xb, 1);
            API_ActorMessage_Wait(0xb, 0, 0xa);
            API_MapActor_Emote(0xc, 0x84 << 1, 0x3c);
            API_Func_809259c(0xc, 1);
            API_ActorMessage_Wait(0xc, 0, 0x14);
            API_MapActor_SetAnim(0xb, 3);
            API_MapActor_DoAnim(0xc, 3);
            API_Func_8092adc(0xb, 0xc0 << 6, 0);
            API_Func_8092adc(0xc, 0xa0 << 7, 0xa);
            API_Func_809259c(0xb, 1);
            API_ActorMessage_Wait(0xb, 0, 0x14);
            API_Func_8092adc(0xb, 0xf0 << 8, 0);
            API_MapActor_SetSpeed(0xc, 0x80 << 9, 0x80 << 8);
            ((unsigned char *)__MapActor_GetActor(0xc))[0x5a] &= 0xfe;
            API_MapActor_TravelToAnimWait(0xc, 0xad << 1, 0x107);
            API_CutsceneWait(1);
            ((unsigned char *)__MapActor_GetActor(0xc))[0x5a] |= 1;
            API_MapActor_SetSpeed(0xb, 0x9999, 0x4ccc);
            API_MapActor_TravelToAnimWait(0xb, 0xa4 << 1, 0x107);
            API_MapActor_TravelToAnimWait(0xb, 0xa4 << 1, 0xfc);
            API_Func_8092adc(0xb, 0xc0 << 8, 0xa);
            OvlFunc_910_20088e8();
            API_MapActor_TravelToAnimWait(0xb, 0xa4 << 1, 0xf6);
            API_MapActor_SetPos(0xb, 0, 0);
            API_SetFlag(0x84a);
            API_Func_8092a1c(0xc, 0x80 << 9, gScript_910__02008bf4);
        } else {
            API_ActorMessage(0xc, 0);
            API_Func_8092adc(0xc, 0xc0 << 6, 0xa);
        }
    }
    API_CutsceneEnd();
}
