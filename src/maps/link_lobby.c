/* rom_7fb4a8 (overlay file 971): consolidated TU.
 * gState is declared with divergent per-TU views in the originals (a struct
 * for the address-taking functions, a short[] for the one that indexes it);
 * unified here to the struct plus a short alias so every body stays verbatim.
 */

#include "nonmatching.h"

#include "state/global_state.h"
extern GlobalState gState;

extern unsigned char gOvl_02009948[];

unsigned int OvlFunc_971_2008030(void) {
    return (unsigned int)gOvl_02009948;
}

unsigned int OvlFunc_971_2008038(void) {
    return 0;
}

volatile unsigned int OvlFunc_971_200803c(void)
{
  unsigned short *r5;
  unsigned int r6;
  r5 = (unsigned short *) ((int) 0x04000208);
  r6 = *r5;
  *r5 = (unsigned short) ((unsigned int) r5);
  __Func_8006358();
  __Func_8005d10();
  *r5 = r6;
}

extern unsigned char gOvl_020099f0[];

unsigned int OvlFunc_971_2008058(void) {
    return (unsigned int)gOvl_020099f0;
}

extern short gState_arr[] __asm__("gState");
extern unsigned char gScript_887__02009c04[];
extern unsigned char L19f4[] __asm__(".L19f4");

unsigned char *OvlFunc_971_2008060(void)
{
	int v;
	v = gState_arr[0xe1];
	if (v == 0xb || v == 9)
		return gScript_887__02009c04;
	return L19f4;
}

extern unsigned short iwram_3001f64;
extern unsigned char ewram_2002024[];
extern const unsigned char L1940[] __asm__(".L1940");
extern unsigned int CHAR_ARRAY_ARRAY_971__02009928[];
extern unsigned int ewram_2002224[];

int OvlFunc_971_200808c(int arg0)
{
    int r5;
    unsigned int reg;

    r5 = -1;
    if ((iwram_3001f64 & 3) == 3) {
        reg = *(unsigned int *)0x04000128;
        r5 = (reg << 26) >> 30;
        __SetFlag(0x303);
    } else {
        __ClearFlag(0x303);
    }

    while (r5 >= 0 && __GetFlag(0x303) != 0) {
        int flag;
        unsigned int *ptr;

        unsigned char *p;

        ptr = &CHAR_ARRAY_ARRAY_971__02009928[arg0];
        if (r5 != 0)
            __SetFlag(0x302);
        else
            __ClearFlag(0x302);

        flag = __GetFlag(0x302) ^ 1;
        p = ewram_2002024 + flag * 24;
        if (*(unsigned int *)(p + (L1940[arg0] << 2)) != *ptr)
            break;
        return 1;
    }
    return 0;
}

void OvlFunc_971_2008128(int i)
{
    unsigned int *dst = ewram_2002224;
    unsigned int *src = &CHAR_ARRAY_ARRAY_971__02009928[i];
    dst = &dst[L1940[i]];
    *dst = *src;
}
extern unsigned char iwram_3001ebc[];
extern int L1f4c __asm__(".L1f4c");
extern void Func_80008d4(void *, unsigned int);
extern void OvlFunc_971_2008128(int a);
extern unsigned char *__MapActor_GetActor(int);

static inline int API_GetFlag(int a) { extern int LobbyGetFlag(int) __asm__("__GetFlag"); return LobbyGetFlag(a); }
extern void API_SetFlag(int) __asm__("__SetFlag");
extern void API_ClearFlag(int) __asm__("__ClearFlag");
static inline int API_GetFlagByte(int a) { extern int LobbyGetFlagByte(int) __asm__("__GetFlagByte"); return LobbyGetFlagByte(a); }
static inline void API_SetFlagByte(int a0, int a1) { extern void LobbySetFlagByte(int, int) __asm__("__SetFlagByte"); LobbySetFlagByte(a0, a1); }
extern void API_CutsceneStart(void) __asm__("__CutsceneStart");
extern void API_CutsceneEnd(void) __asm__("__CutsceneEnd");
extern void API_WaitFrames(int) __asm__("__WaitFrames");
extern void API_MessageID(int) __asm__("__MessageID");
extern void API_ActorMessage(int, int) __asm__("__ActorMessage");
extern void API_MapActor_Face(int, int, int) __asm__("__MapActor_Face");
static inline void API_MapActor_SetSpeed(unsigned int a0, int a1, int a2) { extern void LobbyMapActor_SetSpeed(unsigned int, int, int) __asm__("__MapActor_SetSpeed"); LobbyMapActor_SetSpeed(a0, a1, a2); }
extern void API_MapActor_TravelToAnim(int, int, int) __asm__("__MapActor_TravelToAnim");
extern void API_MapActor_WaitMovement(int) __asm__("__MapActor_WaitMovement");
static inline void API_Func_8010704(int a, int b, int c, int d, int e, int f) { extern void LobbyFunc_8010704(int, int, int, int, int, int) __asm__("__Func_8010704"); LobbyFunc_8010704(a, b, c, d, e, f); }
extern void API_Func_80118a8(int) __asm__("__Func_80118a8");
extern void API_Func_80118c0(int) __asm__("__Func_80118c0");
extern void API_MapTransitionIn(void) __asm__("__MapTransitionIn");
extern void API_WaitMapTransition(void) __asm__("__WaitMapTransition");
extern int API_StartTask(void (*)(void), unsigned int) __asm__("__StartTask");
extern int API_StopTask(void (*)(void)) __asm__("__StopTask");

int OvlFunc_971_2008148(void)
{
    unsigned char *base;
    int res;
    unsigned char *actor;

    base = *(unsigned char **)iwram_3001ebc;
    res = 1;
    actor = __MapActor_GetActor(0);
    if (*(int *)(actor + 0x10) > (0xe0 << 16)) {
        API_ClearFlag(0xc1 << 2);
    }
    if (*(short *)(base + (0xc1 << 1)) != 2) {
        OvlFunc_971_200808c(0);
        if (API_GetFlag(0x303) == 0) {
            L1f4c++;
            if (L1f4c > 0x19) {
                void (*fn)(void *, unsigned int) = Func_80008d4;
                unsigned char *p = ewram_2002024;
                int count = 3;
                do {
                    count--;
                    fn(p, 0x14);
                    p += 0x18;
                } while (count >= 0);
                L1f4c = 0;
                OvlFunc_971_2008128(4);
            }
        } else {
            L1f4c = 0;
        }
        if (L1f4c == 0) {
            if (OvlFunc_971_200808c(0) != 0 &&
                (OvlFunc_971_200808c(1) != 0 || OvlFunc_971_200808c(2) != 0)) {
                API_SetFlag(0x201);
                if (API_GetFlag(0x202) != 0) {
                    short *statePtr = (short *)(base + 0x182);
                    short state = 1;
                    *statePtr = state;
                }
                res = 1;
            } else {
                API_ClearFlag(0x201);
                res = 0;
            }
        }
        if (API_GetFlag(0x201) != 0 && API_GetFlag(0x202) != 0 && API_GetFlag(0x80 << 2) == 0) {
            short *statePtr = (short *)(base + 0x182);
            short state = 1;
            *statePtr = state;
        }
    }
    if ((API_GetFlag(0x201) != 0 || API_GetFlag(0x202) != 0) &&
        API_GetFlag(0x173) == 0 &&
        OvlFunc_971_200808c(0) == 0 &&
        L1f4c > 0x18) {
        short *statePtr = (short *)(base + 0x182);
        short state = 2;
        *statePtr = state;
        API_SetFlag(0x205);
        API_ClearFlag(0x201);
        API_ClearFlag(0x202);
        OvlFunc_971_2008128(4);
    }
    if (API_GetFlag(0x205) != 0) {
        short *statePtr = (short *)(base + 0x182);
        short state = 2;
        *statePtr = state;
    }
    return res;
}

extern unsigned long L1f50 __asm__(".L1f50");

static inline int GetFlag(int flag)
{
    extern int __GetFlag(int);
    return __GetFlag(flag);
}

unsigned int OvlFunc_971_20082d8(void)
{
    unsigned int result;

    result = GetFlag(0x203);
    if (result == 0) {
        L1f50 = L1f50 + 1;
        if (L1f50 == 300) {
            L1f50 = 0;
            __ClearFlag(0x200);
        }

        result = GetFlag(0x200);
        if (result == 0) {
            __CutsceneStart();
            __MessageID(0x292e);
            __ShowActorMessage_NoWait(8, 0);
            __WaitFrames(5);
            __SetFlag(0x200);
            result = __CutsceneEnd();
        }
    }
    return result;
}

extern unsigned char iwram_3001ebc[];
extern void OvlFunc_971_2008128(int a);

unsigned int OvlFunc_971_2008340(void) {
    unsigned int r5;
    unsigned short *p;
    unsigned short v;

    r5 = *(unsigned int *)iwram_3001ebc;
    OvlFunc_971_2008128(4);
    __ClearFlag(0x80 << 2);
    __ClearFlag(0x203);
    __CutsceneStart();
    p = (unsigned short *)(r5 + (0xc1 << 1));
    v = 0;
    *p = v;
    __MessageID(0x2927);
    __ShowActorMessage_NoWait(8, 0);
    __ClearFlag(0x205);
    return __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/link_lobby/OvlFunc_971_2008398.s");
int OvlFunc_971_200853c(unsigned short *arg0)
{
    int count;
    unsigned char *p;
    int i;
    unsigned char v;
    unsigned int off;

    count = __GetPartySize();
    if (count > 3) count = 3;
    if (count > 0) {
        off = 0xfc;
        p = (unsigned char *)&gState + (off << 1);
        i = count;
        do {
            v = *p;
            p++;
            if (arg0 != 0) {
                *arg0 = v;
                arg0++;
            }
            i--;
        } while (i != 0);
    }
    if (arg0 != 0) {
        *arg0 = 0xff;
    }
    return count;
}
INCLUDE_ASM("asm/maps/link_lobby/OvlFunc_971_2008580.s");
INCLUDE_ASM("asm/maps/link_lobby/OvlFunc_971_20087b0.s");
extern int OvlFunc_971_20087b0(void);
struct CS971_StateView {
    unsigned char beforeActor[0x1f4];
    int actor;
    unsigned char beforeMode[0x33];
    unsigned char battleMode;
};
extern struct CS971_StateView CS971_State __asm__("gState");
extern unsigned char *CS971_Scene __asm__("iwram_3001ebc");
extern unsigned char CS971_Area[] __asm__(".Lcs971_linkArea");
__asm__(".equ .Lcs971_linkArea, 0xbe");
extern unsigned char ewram_2018000[];
extern void *__galloc_ewram(int, unsigned int);
extern void __gfree(int);
extern void *__Func_8017658(unsigned int, int, int, unsigned int);
extern void CS971_CloseBox(void *, int) __asm__("__CloseUIBox");
extern int CS971_ShowActorMessage(int, int) __asm__("__ShowActorMessage_NoWait");
extern int CS971_TaskStatus(void (*)(void), unsigned int) __asm__("__Func_8004358");
extern void __Func_8091f90(unsigned int, unsigned int);
extern void __Func_8091fa8(unsigned int, unsigned int);
extern void __StartMapBattle(int, int);

int OvlFunc_971_2008860(void)
{
    unsigned char *scene, *saved, *source, *dest;
    void *box;
    int cancelled, idleFrames, abortWait;
    unsigned int i;
    void (*task)(void);
    unsigned short *pkt;

    cancelled = 0;
    box = 0;
    scene = CS971_Scene;
    idleFrames = 0;
    if (API_GetFlag(0x173)) {
        API_CutsceneStart();
    } else {
        if (!API_GetFlag(0x200) || API_GetFlag(0x205))
            return;
        API_CutsceneStart();
        API_SetFlag(0x203);
        OvlFunc_971_2008128(2);
        if (!OvlFunc_971_200808c(2))
            box = __Func_8017658(0x2928, 5, 4, 1);
        while (!OvlFunc_971_200808c(2)) {
            API_WaitFrames(1);
            abortWait = 0;
            if (!API_GetFlag(0x201))
                abortWait = 1;
            if (API_GetFlag(0x205))
                abortWait = 1;
            if (!OvlFunc_971_200808c(2) && !OvlFunc_971_200808c(1)) {
                idleFrames++;
                if (idleFrames > 25)
                    abortWait = 1;
            } else {
                idleFrames = 0;
            }
            if (abortWait) {
                unsigned short *statePtr = (unsigned short *)scene;
                unsigned short state = 2;
                statePtr += 0xc1;
                *statePtr = state;
                API_SetFlag(0x205);
                API_ClearFlag(0x201);
                API_ClearFlag(0x202);
                OvlFunc_971_2008128(4);
                cancelled = 1;
                API_ClearFlag(0x200);
                break;
            }
        }
        if (box != 0)
            CS971_CloseBox(box, 1);
        API_WaitFrames(5);
    }
    if (!cancelled) {
        saved = __galloc_ewram(0x36, 0x7c8);
        task = (void (*)(void))OvlFunc_971_2008148;
        API_StopTask(task);
        API_Func_80118a8(5);
        API_WaitFrames(8);
        API_Func_80118c0(5);
        if (API_GetFlag(0x173)) {
            API_MapActor_Face(8, CS971_State.actor, 0);
            API_MessageID(0x293b);
            CS971_ShowActorMessage(8, 0);
            API_WaitFrames(45);
            API_MapActor_SetSpeed(0, 0x10000, 0x8000);
            API_MapActor_TravelToAnim(0, 0xd8, 0xb8);
            API_MapActor_WaitMovement(0);
            API_MapActor_TravelToAnim(0, 0xd8, 0xa8);
            API_MapActor_WaitMovement(0);
        } else {
            API_MapActor_SetSpeed(0, 0x10000, 0x8000);
            API_MapActor_TravelToAnim(0, 0xd8, 0xc8);
            API_MapActor_WaitMovement(0);
            API_MapActor_SetSpeed(0, 0x1999, 0xccc);
            API_MapActor_TravelToAnim(0, 0xd8, 0xa8);
            if (OvlFunc_971_20087b0() < 0) {
                unsigned short *statePtr;
                unsigned short state;
                API_MapActor_SetSpeed(0, 0x10000, 0x8000);
                API_MapActor_TravelToAnim(0, 0xd8, 0xc8);
                API_Func_80118a8(5);
                API_WaitFrames(8);
                API_Func_80118c0(5);
                API_MapActor_WaitMovement(0);
                __gfree(0x36);
                OvlFunc_971_2008128(0);
                OvlFunc_971_2008128(4);
                API_StartTask(task, 0xc80);
                CS971_TaskStatus(task, 1);
                API_ClearFlag(0x201);
                API_ClearFlag(0x202);
                API_ClearFlag(0x303);
                API_ClearFlag(0x203);
                API_ClearFlag(0x200);
                statePtr = (unsigned short *)(scene + 0x182);
                state = 2;
                *statePtr = state;
                goto end;
            }
            API_MapActor_SetSpeed(0, 0x8000, 0x4000);
            API_MapActor_WaitMovement(0);
        }
        if (API_GetFlag(0x173)) {
            __Func_8091f90((unsigned int)CS971_Area, 8);
            __Func_8091fa8((unsigned int)CS971_Area, 9);
        } else {
            __Func_8091f90((unsigned int)CS971_Area, 10);
            __Func_8091fa8((unsigned int)CS971_Area, 11);
        }
        CS971_State.battleMode = 4;
        __StartMapBattle(1, 1);
        pkt = (unsigned short *)ewram_2002224;
        pkt[0] = 'E';
        pkt[1] = 'X';
        pkt[2] = 'E';
        pkt[3] = 'C';
        i = 0;
        dest = ewram_2018000;
        source = saved;
        do {
            *dest++ = *source++;
            i++;
        } while (i <= 0x7c7);
        __gfree(0x36);
    }
end:
    API_CutsceneEnd();
}
extern unsigned char MsgBase[] __asm__(".Lmsg_base");
__asm__(".equ .Lmsg_base, 0x2930");

void __MapActor_Face(int, int, int);
int OvlFunc_971_200808c(int);
unsigned int OvlFunc_971_2008b94(void)
{
    unsigned int r7;
    unsigned int r6;
    unsigned int r5;
    unsigned int r2;
    unsigned int r3;
    unsigned int msg;
    unsigned int flag173 = 0x173;
    unsigned int flag300 = 0x300;


    r6 = (unsigned int)MsgBase;
    __CutsceneStart();
    r7 = (unsigned int)&gState;
    r2 = 0xfa;
    r2 <<= 1;
    r3 = r7 + r2;
    __MapActor_Face(8, *(int *)r3, 0);
    if (OvlFunc_971_200808c(0) == 0) {
        __WaitFrames(1);
    }
    if (OvlFunc_971_200808c(0) == 0) {
        OvlFunc_971_2008128(5);
        OvlFunc_971_200803c();
        if (__GetFlag(flag173) == 0) {
            __MessageID(r6 + 5);
            __ShowActorMessage_NoWait(8, 0);
            r5 = __Func_8091c7c(0, 0);
            if (r5 == 0) {
                __SetFlagByte(0x3e8, 0);
                __SetFlag(flag173);
                __ClearFlag(0x172);
                __ClearFlag(0x16c);
                __SetFlag(0x202);
                msg = r6 + 7;
                *(unsigned short *)(r7 + 0x2aa) = r5;
                goto show_msg_id;
            } else {
                __ClearFlag(flag173);
                __SetFlag(0x16c);
                OvlFunc_971_2008128(0);
                msg = r6 + 6;
                goto show_msg_id;
            }
        } else {
            goto msg_plus_3;
        }
    } else {
        if (__GetFlag(flag173) != 0) {
            OvlFunc_971_2008128(0);
            __MessageID(0x293d);
            __ShowActorMessage_NoWait(8, 0);
            __ClearFlag(0x202);
            __ClearFlag(flag173);
        }
        if (__GetFlag(0x202) != 0) {
msg_plus_3:
            msg = r6 + 3;
show_msg_id:
            __MessageID(msg);
show_msg_wait:
            __ShowActorMessage_NoWait(8, 0);
            goto end;
        }
        if (__GetFlag(0x201) == 0 && __GetFlag(flag300) == 0) {
            __MessageID(r6);
            __ShowActorMessage_NoWait(8, 0);
            __SetFlag(flag300);
            goto end;
        }
        __SetFlag(flag300);
        if (__GetFlag(0x201) != 0) {
            __MessageID(r6 + 2);
        } else {
            __MessageID(r6 + 1);
        }
        __ShowActorMessage_NoWait(8, 0);
        if (__Func_8091c7c(0, 0) == 0) {
            if (OvlFunc_971_200808c(0) != 0) {
                __SetFlag(0x16c);
                __SetFlag(0x172);
                if (__GetFlag(0x201) != 0) {
                    __MessageID(r6 + 3);
                } else {
                    __MessageID(r6 + 4);
                }
                OvlFunc_971_2008128(1);
                __SetFlag(0x202);
                goto show_msg_wait;
            } else {
                __SetFlag(0x205);
            }
        } else {
            __MessageID(r6);
            __ShowActorMessage_NoWait(8, 0);
        }
    }
end:
    return __CutsceneEnd();
}
int __Func_80198dc(void);
int __Func_8019908(int, int);

extern int LobbyActorMsg(int, int) __asm__("__ActorMessage");

int OvlFunc_971_2008d68(int actor)
{
    unsigned int r2;
    unsigned int r3;
    unsigned int r5;
    unsigned int r6;
    unsigned int msg;

    r5 = *(unsigned short *)(__MapActor_GetActor(0) + 6);
    __CutsceneStart();
    r6 = (unsigned int)&gState;
    r2 = 0xfa;
    r2 <<= 1;
    r3 = r6 + r2;
    __MapActor_Face(actor, *(int *)r3, 0);

    r5 -= 0xa001;
    if (r5 <= 0x3ffe) {
        r2 = 0xab;
        msg = 0x297b;
        r2 <<= 2;
        r5 = r6 + r2;
        if (*(unsigned short *)r5 != 0) {
            goto have_item;
        }
        __MessageID(0x2988);
        return LobbyActorMsg(actor, 0);
    } else {
        r2 = 0x2b2;
        msg = 0x297d;
        r5 = r6 + r2;
        if (*(unsigned short *)r5 != 0) {
        have_item:
            __Func_80198dc();
            __Func_8019908(*(unsigned short *)r5, 5);
            __MessageID(msg + 1);
            return LobbyActorMsg(actor, 0);
        }
        __MessageID(0x2989);
        return LobbyActorMsg(actor, 0);
    }
}

extern volatile unsigned int gKeyRepeat;
extern volatile unsigned int gKeyPress;
extern void *__CreateUIBox(int, int, int, int, int);
extern void __Func_8016478(void *);
extern void __Func_801e9a0(int, int, void *, int, int);
extern int __CloseUIBox(void *, int);
extern int __Debug_LoadPresetParty(int);

unsigned int OvlFunc_971_2008e10(int actor)
{
    void *box;
    int selected;
    int prev_selected;
    int off;
    unsigned char *p;

    __CutsceneStart();
    off = 0xfa;
    off <<= 1;
    p = (unsigned char *)&gState + off;
    __MapActor_Face(actor, *(int *)p, 0);
    __MessageID(0x989);
    __ActorMessage(actor, 0);

    box = __CreateUIBox(0, 0, 6, 4, 2);
    selected = 0;
    prev_selected = -1;

    for (;;) {
        if (selected != prev_selected) {
            __Func_8016478(box);
            __Func_801e9a0(selected, 3, box, 0, 0);
            prev_selected = selected;
        }

        if (gKeyRepeat & 0x20) {
            selected--;
        }
        if (gKeyRepeat & 0x10) {
            selected++;
        }
        if (selected < 0) {
            selected = 0;
        }

        if (gKeyPress & 1) {
            break;
        }
        if (gKeyPress & 2) {
            selected = -1;
            break;
        }

        __WaitFrames(1);
    }

    __CloseUIBox(box, 1);

    {
        int loaded;
        if (selected >= 0) {
            loaded = __Debug_LoadPresetParty(selected);
        } else {
            __MessageID(0x98a);
            __ActorMessage(9, 0);
            goto done;
        }
        if (loaded != 0) {
            __MessageID(0x98b);
            __ActorMessage(9, 0);
        } else {
            __MessageID(0x98c);
            __ActorMessage(9, 0);
        }
    done:;
    }

    __WaitFrames(10);
    return __CutsceneEnd();
}

int OvlFunc_971_2008f18(int actor)
{
    int r5;
    r5 = actor;
    __CutsceneStart();
    __UI_Sanctum(r5);
    __CutsceneEnd();
}

int OvlFunc_971_2008f30(int arg0)
{
    int party_size;
    int max;
    int i;
    unsigned char *p;
    unsigned char *src;
    int off;

    party_size = __GetPartySize();
    max = 3;
    if (__GetFlag(0xb9 << 1) == 0)
        max = 4;
    if (party_size > max)
        party_size = max;

    i = 0;
    if (i < party_size) {
        off = 0xfc;
        off <<= 1;
        p = (unsigned char *)&gState + off;
        src = p;
        do {
            if (*src++ == 0xff)
                break;
            if (*p == arg0)
                return 1;
            i++;
            p++;
        } while (i < party_size);
    }
    return 0;
}

void OvlFunc_971_2008f88(void) {}

extern unsigned char Msg_294e[] __asm__(".Lmsg_294e");
__asm__(".equ .Lmsg_294e, 0x294e");

unsigned int OvlFunc_971_2008f8c(int actor)
{
    unsigned int msg;
    int party0;
    int party_actor;
    int off;
    unsigned char *p;

    msg = (unsigned int)Msg_294e;
    party0 = OvlFunc_971_2008f30(0);
    party_actor = OvlFunc_971_2008f30(actor);
    __CutsceneStart();

    off = 0xfa;
    off <<= 1;
    p = (unsigned char *)&gState + off;
    __MapActor_Face(actor, *(int *)p, 0);

    if (__GetFlag(0x304) != 0) {
        if (__GetFlag(0x2f0) != 0) {
            msg = 0x295d;
        } else {
            msg = 0x2962;
        }
        msg = __GetFlag(0x2f0 + actor);
        if (__GetFlag(0x305) != 0) {
            if (msg != 0) {
                msg = 0x2967;
            } else {
                msg = 0x296c;
            }
        } else {
            if (msg != 0) {
                msg = 0x2971;
            } else {
                msg = 0x2976;
            }
        }
    } else {
        if (party0 != 0) {
            if (party_actor == 0) {
                msg = 0x2953;
            }
        } else {
            msg = 0x2958;
        }
    }

    __MessageID(msg + actor - 1);
    API_ActorMessage(actor, 0);
    return __CutsceneEnd();
}
extern unsigned char Lconst_1[] __asm__(".Lconst_1");
__asm__(".equ .Lconst_1, 1");

int OvlFunc_971_2009050(void)
{
    int map;

    __Func_8006358();
    __SetSoundFXMode(2);
    do {
        map = (int)Lconst_1;
    } while (0);
    return __SetDestMap(map, 1);
}
extern unsigned char Msg_2985[] __asm__(".Lmsg_2985");
__asm__(".equ .Lmsg_2985, 0x2985");
extern unsigned char Msg_297f[] __asm__(".Lmsg_297f");
__asm__(".equ .Lmsg_297f, 0x297f");
extern unsigned char Msg_2982[] __asm__(".Lmsg_2982");
__asm__(".equ .Lmsg_2982, 0x2982");

unsigned int OvlFunc_971_200906c(int actor)
{
    unsigned int msg;
    int r6;
    int off;
    unsigned char *p;

    r6 = 0;
    __CutsceneStart();
    if (actor != 13) {
        if (actor <= 13) {
            if (actor == 12) {
                msg = (unsigned int)Msg_2985;
                goto done;
            }
        }
    } else {
        msg = (unsigned int)Msg_297f;
        goto done;
    }
    msg = (unsigned int)Msg_2982;
done:

    off = 0xfa;
    off <<= 1;
    p = (unsigned char *)&gState + off;
    __MapActor_Face(actor, *(int *)p, 0);

    if (__GetFlag(0xc1 << 2) != 0) {
        r6 = 2 - (__GetFlag(0x305) != 0);
    }

    __MessageID(msg + r6);
    __ShowActorMessage_NoWait(actor, 0);
    return __CutsceneEnd();
}

extern unsigned char LobbyMessage_298d[] __asm__(".Llobby_message_298d");
__asm__(".equ .Llobby_message_298d, 0x298d");
extern unsigned char LobbyMessage_298c[] __asm__(".Llobby_message_298c");
__asm__(".equ .Llobby_message_298c, 0x298c");
unsigned int OvlFunc_971_20090e8(unsigned int actor)
{
    unsigned int msgId;
    unsigned int idx;
    unsigned char *p;

    __CutsceneStart();
    {
        unsigned char *basep = (unsigned char *)&gState;

        idx = 0xfa;

        p = basep + (idx << 1);
    }
    {
        unsigned int actorId = actor;

        __MapActor_Face(actorId, *(unsigned int *)p, 0);
    }

    if (GetFlag(0x204) == 0) {
        if (__GetPartySize() <= 3) {
            msgId = (unsigned int)LobbyMessage_298d;

        } else {
            msgId = (unsigned int)LobbyMessage_298c;

        }

        __SetFlag(0x204);
    } else {
        msgId = 0x298e;

        __ClearFlag(0x204);
    }
    __MessageID(msgId);
    __ShowActorMessage_NoWait(actor, 0);
    return __CutsceneEnd();
}

unsigned int OvlFunc_971_2009158(unsigned int arg0)
{
    unsigned int r6;
    unsigned int r5;
    unsigned int r2;
    unsigned int r3;

    r6 = arg0;
    __CutsceneStart();
    r5 = (unsigned int)&gState;
    r2 = 0xfa;
    r2 <<= 1;
    r3 = r5 + r2;
    __MapActor_Face(r6, *(unsigned int *)r3, 0);
    r3 = 0xaa;
    r3 <<= 2;
    r2 = r5 + r3;
    if (*(unsigned short *)r2 != 0) {
        __Func_8019908(*(unsigned short *)r2, 5);
        __MessageID(0x298a);
    } else {
        __MessageID(0x298b);
    }
    __ShowActorMessage_NoWait(r6, 0);
    return __CutsceneEnd();
}

extern unsigned char gOvl_02009e14[];

void *OvlFunc_971_20091b4(void) {
    return (void *)gOvl_02009e14;
}

extern int __CloseUIBox(void *, int);
extern void __Func_801faa8(void);

int OvlFunc_971_20091bc(void)
{
    void *box;

    __PlaySound(0x55);
    box = (void *)__Func_8017658(0x292a, 5, 4, 1);
    while (__Func_8017364() == 0) {
        __WaitFrames(1);
    }
    __Func_801faa8();
    do {
        __CloseUIBox(box, 1);
    } while (0);
    __WaitFrames(1);
    box = (void *)__Func_8017658(0x292b, 5, 4, 1);
    while (__Func_8017364() == 0) {
        __WaitFrames(1);
    }
    return __CloseUIBox(box, 1);
}
int OvlFunc_971_2009228(void)
{
    void *box;

    __PlaySound(0x55);
    box = (void *)__Func_8017658(0x292c, 5, 4, 1);
    while (__Func_8017364() == 0) {
        __WaitFrames(1);
    }
    __Func_801faa8();
    do {
        __CloseUIBox(box, 1);
    } while (0);
    __WaitFrames(1);
    box = (void *)__Func_8017658(0x292d, 5, 4, 1);
    while (__Func_8017364() == 0) {
        __WaitFrames(1);
    }
    return __CloseUIBox(box, 1);
}
extern int _modsi3_RAM(int, int);
extern int _divsi3_RAM(int, int);
extern void __CopyMapTiles(int, int, int, int, int, int);

int OvlFunc_971_2009294(int val)
{
    int i;
    int one;

    if (val > 0x3e7)
        val = 0x3e7;

    i = 0;
    one = 1;
    for (; i <= 2; i++) {
        __CopyMapTiles(0x1b, _modsi3_RAM(val, 10), 0x10 - i, 8, one, one);
        val = _divsi3_RAM(val, 10);
    }
    return __Func_800fe9c();
}
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
extern int LobbyFlagByte(int) __asm__("__GetFlagByte");
extern void LobbySetFlagByte(int, int) __asm__("__SetFlagByte");
extern int LobbyShowMessage(int, int) __asm__("__ShowActorMessage_NoWait");
extern int LobbyChoice(int, int) __asm__("__Func_8091c7c");
extern void LobbyFormatNumber(unsigned int, unsigned int) __asm__("__Func_8019908");
extern void LobbyResetSerial(void) __asm__("__Func_8005d10");
extern int LobbyTaskStatus(void (*)(void), unsigned int) __asm__("__Func_8004358");
extern void LobbyRestoreParty(unsigned int) __asm__("__Func_807808c");
extern unsigned int LobbyBattleCleanup(void) __asm__("__Func_80bf65c");

extern unsigned char LobbyMsg293e[] __asm__(".Lmsg_293e");
__asm__(".equ .Lmsg_293e, 0x293e");

int OvlFunc_971_20092e0(void)
{
    int member, memberFlag, streak, messageOffset, cycle, room, flag;
    unsigned int next;
    unsigned char *map;
    unsigned short *talk;

    LobbyCounter50 = 0;
    LobbyCounter4c = 0;
    *(int *)(LobbyMap + 0x1c0) = 0x201;
    LobbySoundMode(2);
    OvlFunc_971_2009294(LobbyState.best2b0);
    API_Func_8010704(11, 11, 1, 1, 13, 10);
    OvlFunc_971_2008128(4);
    API_WaitFrames(1);
    API_Func_80118c0(5);
    talk = (unsigned short *)ewram_2002224;
    talk[4] = 'T';
    talk[5] = 'A';
    talk[6] = 'L';
    talk[7] = 'K';
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
        streak = (signed char)API_GetFlagByte(0x3f8);
        messageOffset = streak * 2 + 2;
        if (messageOffset > 14)
            messageOffset = 14;
        cycle = API_GetFlagByte(0x3e8);
        if (cycle == 2) {
            API_SetFlagByte(0x3e8, 0);
            streak++;
            messageOffset++;
        } else {
            API_SetFlagByte(0x3e8, cycle + 1);
        }
        API_MapActor_Face(8, LobbyState.actorID, 0);
        __MessageID((int)&LobbyMsg293e[messageOffset]);
        LobbyShowMessage(8, 0);
        if (LobbyChoice(0, 0) == 0) {
            if (streak > 90)
                streak = 90;
            API_SetFlagByte(0x3f8, streak);
        } else {
            API_ClearFlag(0x173);
            API_SetFlagByte(0x3f8, -1);
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
            unsigned short *statePtr;
            int state;
            map = LobbyMap;
            API_ClearFlag(0x3e8);
            statePtr = (unsigned short *)(map + 0x182);
            state = 2;
            *statePtr = state;
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
    API_StartTask((void (*)(void))OvlFunc_971_2008148, 0xc80);
    LobbyTaskStatus((void (*)(void))OvlFunc_971_2008148, 1);
    if (LobbyState.room != 8 || API_GetFlag(0x173) == 0) {
        LobbyRestoreParty(1);
        LobbyBattleCleanup();
    }
    return 0;
}
INCLUDE_ASM("asm/maps/link_lobby/link_lobby_data.s");
