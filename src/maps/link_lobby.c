/* rom_7fb4a8 (overlay file 971): consolidated TU.
 * gState is declared with divergent per-TU views in the originals (a struct
 * for the address-taking functions, a short[] for the one that indexes it);
 * unified here to the struct plus a short alias so every body stays verbatim.
 */

#include "nonmatching.h"

typedef struct { unsigned char _bytes[704]; } GlobalState;
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
extern int __ActorMessage(int, int);

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

INCLUDE_ASM("asm/maps/link_lobby/OvlFunc_971_2008128.s");
extern unsigned char iwram_3001ebc[];
extern int L1f4c __asm__(".L1f4c");
extern void Func_80008d4(void *, unsigned int);
extern void OvlFunc_971_2008128(int a);
extern unsigned char *__MapActor_GetActor(int);

INCLUDE_ASM("asm/maps/link_lobby/OvlFunc_971_2008148.s");

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
INCLUDE_ASM("asm/maps/link_lobby/OvlFunc_971_2008860.s");
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
INCLUDE_ASM("asm/maps/link_lobby/OvlFunc_971_2008d68.s");
INCLUDE_ASM("asm/maps/link_lobby/OvlFunc_971_2008e10.s");

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

INCLUDE_ASM("asm/maps/link_lobby/OvlFunc_971_2008f8c.s");
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
INCLUDE_ASM("asm/maps/link_lobby/OvlFunc_971_20092e0.s");
INCLUDE_ASM("asm/maps/link_lobby/link_lobby_data.s");
