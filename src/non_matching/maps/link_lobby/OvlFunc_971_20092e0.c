static inline void API_ActorMessage(int a0,int a1) { extern void LobbyActorMessage(int, int) __asm__("__ActorMessage"); LobbyActorMessage(a0,a1); }
static inline void API_ClearFlag(int a0) { extern void __ClearFlag(int); __ClearFlag(a0); }
static inline void API_CutsceneEnd(void)
{
    extern void __CutsceneEnd(void);
    __CutsceneEnd();
}
static inline void API_CutsceneStart(void)
{
    extern void __CutsceneStart(void);
    __CutsceneStart();
}
static inline void API_Func_8010704(int a, int b, int c, int d, int e, int f) { extern void __Func_8010704(int, int, int, int, int, int); __Func_8010704(a, b, c, d, e, f); }
static inline void API_Func_80118c0(int a) { extern void __Func_80118c0(int); __Func_80118c0(a); }
static inline int API_GetFlag(int a) { extern int __GetFlag(int); return __GetFlag(a); }
static inline void API_MapActor_Face(int a, int b, int c) { extern void __MapActor_Face(int, int, int); __MapActor_Face(a, b, c); }
static inline void API_MapTransitionIn(void) { extern void __MapTransitionIn(void); __MapTransitionIn(); }
static inline void API_MessageID(int a0) { extern void __MessageID(int); __MessageID(a0); }
static inline void API_SetFlag(int a0) { extern void __SetFlag(int); __SetFlag(a0); }
static inline int API_StartTask(void (*task)(void), unsigned int priority) { extern int __StartTask(void (*)(void), unsigned int); return __StartTask(task, priority); }
static inline void API_WaitFrames(int a0) { extern void __WaitFrames(int); __WaitFrames(a0); }
static inline void API_WaitMapTransition(void) { extern void __WaitMapTransition(void); __WaitMapTransition(); }

struct LobbyResultState {
    unsigned char beforeRoom[0x1c2];
    short room;
    unsigned char beforeActor[0x30];
    int actorID;
    unsigned char beforeNotice[0x32];
    unsigned char notice;
    unsigned char beforeCounters[0x79];
    unsigned short count2a4, count2a6, best2a8, current2aa;
    unsigned short count2ac, count2ae, best2b0, current2b2;
};
extern struct LobbyResultState LobbyState __asm__("gState");
struct LobbyPacketView { unsigned char header[8]; unsigned short talk[4]; };
extern struct LobbyPacketView LobbyPacket __asm__("ewram_2002224");
extern unsigned char LobbyNotice __asm__("iwram_3001d08");
extern int LobbyCounter50 __asm__(".L1f50");
extern int LobbyCounter4c __asm__(".L1f4c");
extern unsigned char *LobbyMap __asm__("iwram_3001ebc");
extern int LobbySoundMode(unsigned int) __asm__("__SetSoundFXMode");
extern unsigned char LobbyFlagByte(unsigned int) __asm__("__GetFlagByte");
extern void LobbySetFlagByte(unsigned int, unsigned char) __asm__("__SetFlagByte");
extern int LobbyShowMessage(int, int) __asm__("__ShowActorMessage_NoWait");
extern int LobbyChoice(int, int) __asm__("__Func_8091c7c");
extern void LobbyFormatNumber(unsigned int, unsigned int) __asm__("__Func_8019908");
extern void LobbyResetSerial(void) __asm__("__Func_8005d10");
extern int LobbyTaskStatus(void (*)(void), unsigned int) __asm__("__Func_8004358");
extern void LobbyRestoreParty(unsigned int) __asm__("__Func_807808c");
extern unsigned int LobbyBattleCleanup(void) __asm__("__Func_80bf65c");
extern void OvlFunc_971_2008148(void);

__asm__(".equ .Llobby_talk_t, 0x54\n.equ .Llobby_talk_a, 0x41\n.equ .Llobby_talk_l, 0x4c\n.equ .Llobby_talk_k, 0x4b");
extern unsigned char LobbyTalkT[] __asm__(".Llobby_talk_t");
extern unsigned char LobbyTalkA[] __asm__(".Llobby_talk_a");
extern unsigned char LobbyTalkL[] __asm__(".Llobby_talk_l");
extern unsigned char LobbyTalkK[] __asm__(".Llobby_talk_k");

static inline void LobbyHalf(unsigned short *field, int value) { *field = value; }

static inline unsigned int LobbyReadByte(int flag) { return LobbyFlagByte(flag); }

int OvlFunc_971_20092e0(void)
{
    int member, memberFlag, streak, messageOffset, cycle, room, flag;
    unsigned int next;
    unsigned char *map;
    LobbyCounter50 = 0;
    LobbyCounter4c = 0;
    *(int *)(LobbyMap + 0x1c0) = 0x201;
    LobbySoundMode(2);
    OvlFunc_971_2009294(LobbyState.best2b0);
    API_Func_8010704(11, 11, 1, 1, 13, 10);
    OvlFunc_971_2008128(4);
    API_WaitFrames(1);
    API_Func_80118c0(5);
    LobbyPacket.talk[0] = (unsigned int)LobbyTalkT;
    LobbyPacket.talk[1] = (unsigned int)LobbyTalkA;
    LobbyPacket.talk[2] = (unsigned int)LobbyTalkL;
    LobbyPacket.talk[3] = (unsigned int)LobbyTalkK;
    for (member = 0; member <= 7; member++) {
        memberFlag = 0x2f0 + member;
        API_ClearFlag(memberFlag);
        if (OvlFunc_971_2008f30(member) != 0)
            API_SetFlag(memberFlag);
    }
    room = LobbyState.room;
    if (room == 8) {
        API_CutsceneStart();
        API_MapTransitionIn();
        API_WaitMapTransition();
        OvlFunc_971_2008128(5);
        LobbyState.count2a4++;
        LobbyState.current2aa++;
        streak = (signed char)LobbyReadByte(0x3f8);
        messageOffset = streak * 2 + 2;
        if (messageOffset > 14) messageOffset = 14;
        cycle = LobbyReadByte(0x3e8);
        if (cycle == 2) {
            LobbySetFlagByte(0x3e8, 0);
            streak++;
            messageOffset++;
        } else {
            LobbySetFlagByte(0x3e8, cycle + 1);
        }
        API_MapActor_Face(8, LobbyState.actorID, 0);
        API_MessageID(0x293e + messageOffset);
        LobbyShowMessage(8, 0);
        if (LobbyChoice(0, 0) == 0) {
            if (streak > 90) streak = 90;
            LobbySetFlagByte(0x3f8, streak);
        } else {
            API_ClearFlag(0x173);
            LobbySetFlagByte(0x3f8, -1);
            LobbyFormatNumber(LobbyState.current2aa, 5);
            if (LobbyState.best2a8 < LobbyState.current2aa) {
                LobbyState.best2a8 = LobbyState.current2aa;
                API_MessageID(0x293c);
                LobbyShowMessage(8, 0);
                OvlFunc_971_2009228();
            } else {
                API_MessageID(0x2939);
                LobbyShowMessage(8, 0);
            }
            OvlFunc_971_2008128(0);
        }
        API_CutsceneEnd();
    } else if (room == 9) {
        LobbyState.count2a6++;
        API_CutsceneStart();
        API_MapTransitionIn();
        API_WaitMapTransition();
        OvlFunc_971_2008128(5);
        API_MapActor_Face(8, LobbyState.actorID, 0);
        LobbyFormatNumber(LobbyState.current2aa, 5);
        if (LobbyState.best2a8 < LobbyState.current2aa) {
            LobbyState.best2a8 = LobbyState.current2aa;
            API_MessageID(0x293c);
            LobbyShowMessage(8, 0);
            OvlFunc_971_2009228();
        } else {
            API_MessageID(0x293a);
            LobbyShowMessage(8, 0);
        }
        LobbyState.current2aa = 0;
        API_ClearFlag(0x173);
        LobbySetFlagByte(0x3f8, -1);
        OvlFunc_971_2008128(0);
        API_CutsceneEnd();
    } else if (room == 10) {
        API_CutsceneStart();
        API_MapTransitionIn();
        API_WaitMapTransition();
        OvlFunc_971_2008128(0);
        OvlFunc_971_2008128(4);
        if (API_GetFlag(0x3e8) != 0) {
            map = LobbyMap;
            API_ClearFlag(0x3e8);
            LobbyHalf((unsigned short *)(map + 0x182), 2);
            API_ClearFlag(0x304);
            API_WaitFrames(20);
            OvlFunc_971_200803c();
            OvlFunc_971_2008128(0);
            OvlFunc_971_2008128(4);
        } else {
            LobbyState.count2ac++;
            next = LobbyState.current2b2 + 1;
            LobbyState.current2b2 = next;
            if (LobbyState.best2b0 < (unsigned short)next)
                LobbyState.best2b0 = next;
            OvlFunc_971_2009294(LobbyState.best2b0);
            OvlFunc_971_20091bc();
            API_SetFlag(0x304);
            API_SetFlag(0x305);
        }
        API_CutsceneEnd();
    } else if (room == 11) {
        API_CutsceneStart();
        API_MapTransitionIn();
        API_WaitMapTransition();
        OvlFunc_971_2008128(0);
        OvlFunc_971_2008128(4);
        flag = API_GetFlag(0x173);
        if (flag == 0) {
            LobbyState.count2ae++;
            LobbyState.current2b2 = flag;
            OvlFunc_971_20091bc();
        }
        API_SetFlag(0x304);
        API_ClearFlag(0x305);
        API_CutsceneEnd();
    } else {
        LobbyResetSerial();
        API_ClearFlag(0x172);
        LobbySetFlagByte(0x3f8, -1);
        if (LobbyState.notice != 0) {
            API_CutsceneStart();
            API_MapTransitionIn();
            API_WaitMapTransition();
            API_MapActor_Face(8, LobbyState.actorID, 0);
            API_MessageID(0x2929);
            API_ActorMessage(8, 0);
            API_CutsceneEnd();
        }
        LobbyState.notice = 0;
        LobbyNotice = 0;
        OvlFunc_971_2008128(0);
        OvlFunc_971_2008128(4);
    }
    API_StartTask(OvlFunc_971_2008148, 0xc80);
    LobbyTaskStatus(OvlFunc_971_2008148, 1);
    if (LobbyState.room != 8 || API_GetFlag(0x173) == 0) {
        LobbyRestoreParty(1);
        LobbyBattleCleanup();
    }
    return 0;
}
