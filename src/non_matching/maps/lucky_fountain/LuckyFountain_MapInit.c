struct CS951_StateView {
    unsigned char beforeCoins[0x10];
    unsigned int coins;
    unsigned char beforeRewards[0x12c - 0x14];
    signed char rewards[0x1c0 - 0x12c];
    short event, room;
};
extern struct CS951_StateView CS951_State __asm__("gState");
extern unsigned char *CS951_Scene __asm__("iwram_3001ebc");
extern unsigned char CS951_Mode __asm__("iwram_3001d18");
extern unsigned int CS951_StartCoins __asm__("ewram_2001000");
extern unsigned char *CS951_Actor(int) __asm__("__MapActor_GetActor");
extern void CS951_ActorExtra(int, int) __asm__("__Func_8092950");
extern void CS951_RefreshShop(void) __asm__("__Func_80b04c4");
extern void CS951_ShowItem(int, int) __asm__("__Func_808f1c0");
extern int CS951_GiveItem(int, int) __asm__("__Func_8091a58");
extern void OvlFunc_951_20096a8(void);
extern void OvlFunc_951_20088f8(int);
extern int OvlFunc_951_2008d70(int);
extern unsigned char _MSG_e30[];
extern void CS951_Format(int, int) __asm__("__Func_8019908");
static inline void CS951_Half(volatile unsigned short *p, int value) { *p = value; }

int LuckyFountain_MapInit(void)
{
    unsigned char *actor;
    int blend, gained, item;
    signed char *reward, *firstReward;
    if (CS951_State.event == (int)Lconst_bd) {
        *(int *)(CS951_Scene + 0x1c0) = 0x100;
        blend = 0x3f42;
        CS951_Half((volatile unsigned short *)0x4000050, blend);
        CS951_Half((volatile unsigned short *)0x4000052, 0x80c);
        API_MapActor_SetAnim(24, 2);
        API_MapActor_SetAnim(25, 2);
        actor = CS951_Actor(24);
        *(int *)(actor + 0x18) = -0x10000;
        actor = CS951_Actor(25);
        *(int *)(actor + 0x18) = -0x10000;
        actor = CS951_Actor(24);
        actor += 0x23;
        *actor = 2;
        actor = CS951_Actor(25);
        actor += 0x23;
        *actor = 2;
        API_MapTransitionIn();
        if (CS951_State.room == 1) {
            OvlFunc_951_20096a8();
            if (API_GetFlag(0x200)) {
                CS951_Half((volatile unsigned short *)0x4000050, blend);
                CS951_Half((volatile unsigned short *)0x4000052, 0x1000);
            }
        }
    } else {
        if (API_GetFlag(0x950))
            API_MapActor_SetPos(17, 0, 0);
        CS951_Mode = 1;
        *(int *)(CS951_Scene + 0x1c0) = 0x209;
        if (CS951_State.room == 10) {
            CS951_ActorExtra(8, 1);
            CS951_ActorExtra(9, 2);
        }
        if (CS951_State.room == 13 && !API_GetFlag(0x109)) {
            API_CutsceneStart();
            CS951_ActorExtra(8, 1);
            CS951_ActorExtra(9, 2);
            API_MapTransitionIn();
            API_WaitMapTransition();
            API_CutsceneWait(10);
            API_MapActor_TravelToAnimWait(0, 0x78, 0x70);
            API_CutsceneWait(20);
            gained = (int)(CS951_State.coins - CS951_StartCoins);
            if (gained > 0) {
                if (gained > 19999)
                    API_PlaySound(0x5d);
                else if (gained > 4999)
                    API_PlaySound(0x5c);
                else
                    API_PlaySound(0x5b);
                API_CutsceneWait(20);
                API_MessageID(0xe13);
                CS951_Format(gained, 5);
                API_ActorMessage(9, 0);
                CS951_RefreshShop();
            } else if (gained < 0) {
                API_MessageID(0xe14);
                CS951_Format(-gained, 5);
                API_ActorMessage(9, 0);
            }
            API_CutsceneEnd();
        }
        if (CS951_State.room == 12 && !API_GetFlag(0x109)) {
            firstReward = CS951_State.rewards;
            API_CutsceneStart();
            API_MapTransitionIn();
            API_WaitMapTransition();
            API_CutsceneWait(10);
            if (*firstReward == -1) {
                OvlFunc_951_20088f8(1);
            } else if (*firstReward != -2) {
                API_MessageID(0xe2e);
                API_ActorMessage(8, 0);
                if (*firstReward != -1) {
                  reward = firstReward;
                  do {
                    if (reward == firstReward)
                        API_MessageID(0xe2f);
                    else
                        API_MessageID((int)_MSG_e30);
                    item = OvlFunc_951_2008d70(*reward);
                    CS951_Format(item, 2);
                    API_ActorMessage(8, 0);
                    CS951_ShowItem(item, 3);
                    CS951_GiveItem(item, 0);
                    API_CutsceneWait(10);
                    API_Func_8092adc(0, 0xc000, 0);
                    reward++;
                    API_CutsceneWait(30);
                  } while (*reward != -1);
                }
                CS951_State.rewards[0] = -2;
                API_MessageID(0xe31);
                API_ActorMessage(8, 0);
            }
            API_CutsceneEnd();
        }
    }
    return 0;
}
