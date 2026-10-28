extern unsigned char CS946_Event_86[] __asm__(".Lcs946_event_86");
__asm__(".equ .Lcs946_event_86, 0x86");
extern unsigned char CS946_Event_7e[] __asm__(".Lcs946_event_7e");
__asm__(".equ .Lcs946_event_7e, 0x7e");
extern unsigned char CS946_Event_71[] __asm__(".Lcs946_event_71");
__asm__(".equ .Lcs946_event_71, 0x71");
extern unsigned char CS946_Event_7d[] __asm__(".Lcs946_event_7d");
__asm__(".equ .Lcs946_event_7d, 0x7d");
extern unsigned char CS946_Event_7b[] __asm__(".Lcs946_event_7b");
__asm__(".equ .Lcs946_event_7b, 0x7b");
extern unsigned char *CS946_Scene __asm__("iwram_3001ebc");
extern unsigned char *CS946_Actor(int) __asm__("__MapActor_GetActor");
extern void CS946_Anim(void *, int) __asm__("__Actor_SetAnim");
extern void CS946_SpriteFlags(void *, int) __asm__("__Actor_SetSpriteFlags");
extern void OvlFunc_946_200991c(void);
extern void OvlFunc_946_200967c(void);
extern void OvlFunc_946_20088c0(int);
extern void OvlFunc_946_200aed8(int);
extern void OvlFunc_946_2009214(void);
extern void OvlFunc_946_2009494(void);

int CrossboneIsle_MapInit(void)
{
    unsigned char *state;
    short *event;
    int initialEvent, currentEvent, refreshedEvent;
    unsigned char *actor;
    *(int *)(CS946_Scene + 0x1c0) = 0x204;
    state = (unsigned char *)&gState;
    event = (short *)(state + 0x1c0);
    initialEvent = *event;
    if (initialEvent == (int)CS946_Event_7b) {
        OvlFunc_946_200991c();
        goto done;
    }
    if (initialEvent == (int)CS946_Event_7d) {
        if (!API_GetFlag(0xef7)) {
            API_Func_8010704(0, 3, 1, 1, 13, 40);
            API_Func_8010704(0, 2, 1, 1, 15, 40);
            API_Func_808edac(101, 0xd80000, 0x2880000);
        }
        if (*event == initialEvent) {
            if (*(short *)(state + 0x1c2) == 5 || API_GetFlag(0x8d1)) {
                API_SetFlag(0x8d1);
                API_Func_8010704(0, 1, 1, 1, 13, 30);
                API_Func_808edac(100, 0xd80000, 0x1e80000);
            }
            goto done;
        }
    }
    currentEvent = *(short *)(state + 0x1c0);
    if (currentEvent == (int)CS946_Event_71) {
        OvlFunc_946_200967c();
        *(int *)(CS946_Actor(8) + 0x38) = 0x810000;
        OvlFunc_946_20088c0(9);
        OvlFunc_946_20088c0(10);
        if (API_GetFlag(0x240)) {
            actor = CS946_Actor(11);
            if (actor != 0) {
                actor[0x59] = 0;
                CS946_Anim(actor, 4);
                CS946_SpriteFlags(actor, 0);
            }
            API_Func_8012078(0, 0x1300000, 0x1700000, 0xfd);
        }
        if (API_GetFlag(0x241)) {
            actor = CS946_Actor(12);
            if (actor != 0) {
                actor[0x59] = 0;
                CS946_Anim(actor, 4);
                CS946_SpriteFlags(actor, 0);
            }
            API_Func_8012078(0, 0x500000, 0x1700000, 0xfd);
        }
        if (API_GetFlag(0x242)) {
            actor = CS946_Actor(13);
            if (actor != 0) {
                actor[0x59] = 0;
                CS946_Anim(actor, 4);
                CS946_SpriteFlags(actor, 0);
            }
            API_Func_8012078(0, 0x600000, 0x1500000, 0xfd);
        }
        if (API_GetFlag(0x243)) {
            actor = CS946_Actor(14);
            if (actor != 0) {
                actor[0x59] = 0;
                CS946_Anim(actor, 4);
                CS946_SpriteFlags(actor, 0);
            }
            API_Func_8012078(0, 0x900000, 0x1400000, 0xfd);
            API_Func_8012078(0, 0x2f00000, 0x1400000, 0xfd);
        }
        if (!API_GetFlag(0xfd7))
            OvlFunc_946_200aed8(8);
    } else {
        if (currentEvent == (int)CS946_Event_7e && !API_GetFlag(0xef4)) {
            API_Func_8010704(0, 0, 1, 1, 37, 10);
            API_Func_808edac(100, 0x2580000, 0xa80000);
        }
        refreshedEvent = *(short *)(state + 0x1c0);
        if (refreshedEvent >= (int)CS946_Event_7e && refreshedEvent <= (int)CS946_Event_86) {
            OvlFunc_946_2009214();
            if (*(short *)(state + 0x1c2) == 5)
                OvlFunc_946_2009494();
        }
    }
done:
    return 0;
}
