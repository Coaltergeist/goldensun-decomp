// fakematch
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

INCLUDE_ASM("asm/maps/link_lobby/OvlFunc_971_200808c.s");
INCLUDE_ASM("asm/maps/link_lobby/OvlFunc_971_2008128.s");
INCLUDE_ASM("asm/maps/link_lobby/OvlFunc_971_2008148.s");

extern unsigned long L1f50 __asm__(".L1f50");

unsigned int OvlFunc_971_20082d8(void)
{
    unsigned int result;
    unsigned int f;

    result = __GetFlag(0x203);
    if (result == 0) {
        L1f50 = L1f50 + 1;
        if (L1f50 == 300) {
            L1f50 = 0;
            __ClearFlag(0x200);
        }
        f = 0x200;
        __asm__ ("" : "+r" (f));
        result = __GetFlag(f);
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
INCLUDE_ASM("asm/maps/link_lobby/OvlFunc_971_200853c.s");
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

    while (flag173 == 0) { }

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

INCLUDE_ASM("asm/maps/link_lobby/OvlFunc_971_2008f30.s");

void OvlFunc_971_2008f88(void) {}

INCLUDE_ASM("asm/maps/link_lobby/OvlFunc_971_2008f8c.s");
INCLUDE_ASM("asm/maps/link_lobby/OvlFunc_971_2009050.s");
INCLUDE_ASM("asm/maps/link_lobby/OvlFunc_971_200906c.s");

unsigned int OvlFunc_971_20090e8(unsigned int actor)
{
    unsigned int msgId;
    unsigned int flag1, flag2, flag3;
    unsigned int idx;
    unsigned char *p;

    __CutsceneStart();
    {
        register unsigned char *basep __asm__("r3") = (unsigned char *)&gState;
        __asm__ volatile ("" : "+r" (basep));
        idx = 0xfa;
        __asm__ ("" : "+r" (idx));
        p = basep + (idx << 1);
    }
    {
        register unsigned int r0v __asm__("r0") = actor;
        __asm__ volatile ("" : "+r" (r0v));
        __MapActor_Face(r0v, *(unsigned int *)p, 0);
    }
    flag1 = 0x204;
    __asm__ ("" : "+r" (flag1));
    if (__GetFlag(flag1) == 0) {
        if (__GetPartySize() <= 3) {
            msgId = 0x298d;
            __asm__ ("" : "+r" (msgId));
        } else {
            msgId = 0x298c;
            __asm__ ("" : "+r" (msgId));
        }
        flag2 = 0x204;
        __asm__ ("" : "+r" (flag2));
        __SetFlag(flag2);
    } else {
        msgId = 0x298e;
        flag3 = 0x204;
        __asm__ ("" : "+r" (flag3));
        __ClearFlag(flag3);
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

INCLUDE_ASM("asm/maps/link_lobby/OvlFunc_971_20091bc.s");
INCLUDE_ASM("asm/maps/link_lobby/OvlFunc_971_2009228.s");
INCLUDE_ASM("asm/maps/link_lobby/OvlFunc_971_2009294.s");
INCLUDE_ASM("asm/maps/link_lobby/OvlFunc_971_20092e0.s");
