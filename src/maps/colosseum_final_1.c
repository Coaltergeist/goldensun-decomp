/* rom_7db0c8 (overlay file 954): consolidated TU — colosseum_final_1 map overlay. */

#include "nonmatching.h"

extern void OvlFunc_954_2008238();

extern unsigned char gOvl_0200c194[];

unsigned int ColosseumFinal1_GetEntrances(void) {
    return (unsigned int)gOvl_0200c194;
}

unsigned int ColosseumFinal1_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_0200c1dc[];

void *ColosseumFinal1_GetExits(void) {
    return (void *)gOvl_0200c1dc;
}
extern unsigned char gOvl_0200c1f4[];

void *ColosseumFinal1_GetActors(void) {
    return (void *)gOvl_0200c1f4;
}

INCLUDE_ASM("asm/maps/colosseum_final_1/OvlFunc_954_200804c.s");

extern unsigned char L441c[] __asm__(".Lm954_441c");
extern void OvlFunc_954_200804c(void);

void OvlFunc_954_2008134(void)
{
    *(int *)L441c = 0;
    __StopTask(OvlFunc_954_200804c);
    ((void (*)(void))OvlFunc_954_200804c)();
}

INCLUDE_ASM("asm/maps/colosseum_final_1/OvlFunc_954_2008158.s");
INCLUDE_ASM("asm/maps/colosseum_final_1/OvlFunc_954_2008178.s");
INCLUDE_ASM("asm/maps/colosseum_final_1/OvlFunc_954_20081a8.s");

extern void OvlFunc_common1_2060(void);
extern void OvlFunc_954_20081a8(void);

void OvlFunc_954_2008238(void)
{
	OvlFunc_common1_2060();
	OvlFunc_954_20081a8();
}

void OvlFunc_954_2008248(void)
{
  int new_var;
  int new_var2;
  new_var2 = 0x2f;
  new_var = 0xc;
  __Func_8010704(new_var2, 0x18, 1, 1, new_var2, new_var);
  __SetFlag(0x303);
}

extern void __SetFlag(int);
extern int __MapActor_GetActor();
#include "actor.h"

void __CutsceneStart(void);
void __Func_80933d4(int, int);
void __Func_80933f8(int, int, int, int);
void __Actor_SetAnim(struct Actor *, int);
void __Func_8093530(void);
void __Actor_TravelTo(struct Actor *, fx32, fx32, fx32);
void __Actor_WaitMovement(struct Actor *);
void __CutsceneWait(int);
void __Func_8010704(int, int, int, int, int, int);
void __CutsceneEnd(void);

void OvlFunc_954_2008270(void)
{
    struct Actor *actor1;
    struct Actor *actor2;
    int speed;
    int accel;
    int zero;
    int y1 = 0x80000;
    int y2 = 0x200000;
    int a;
    int b;

    do { } while (y1 == 0);

    __SetFlag(0x301);
    actor1 = __MapActor_GetActor(0xd);
    __CutsceneStart();
    __Func_80933d4(0x80 << 10, 0x80 << 7);
    __Func_80933f8(0x96 << 18, -1, 0xc8 << 16, 1);
    __Actor_SetAnim(actor1, 3);
    __Func_8093530();
    zero = 0;
    actor1->__unk55 = zero;
    speed = 0xcccc;
    accel = 0x6666;
    actor1->accel = accel;
    actor1->speed = speed;
    __Actor_TravelTo(actor1, actor1->pos.x, y1, actor1->pos.z);
    actor2 = __MapActor_GetActor(0xe);
    actor2->__unk55 = zero;
    actor2->speed = speed;
    actor2->accel = accel;
    __Actor_TravelTo(actor2, actor2->pos.x, y2, actor2->pos.z);
    __Actor_WaitMovement(actor2);
    __CutsceneWait(0x2d);
    a = 0x29;
    b = 0xc;
    __Func_8010704(0x2b, b, 1, 1, a, b);
    __CutsceneEnd();
}
INCLUDE_ASM("asm/maps/colosseum_final_1/OvlFunc_954_200833c.s");
INCLUDE_ASM("asm/maps/colosseum_final_1/OvlFunc_954_200842c.s");
INCLUDE_ASM("asm/maps/colosseum_final_1/OvlFunc_954_2008490.s");
INCLUDE_ASM("asm/maps/colosseum_final_1/OvlFunc_954_2008540.s");


void OvlFunc_954_2008830(void) {
    __SetFlag(0xc0 << 2);
}

INCLUDE_ASM("asm/maps/colosseum_final_1/OvlFunc_954_2008840.s");

extern int OvlFunc_common1_21c8(void);

void OvlFunc_954_2008954(void)
{
	if (OvlFunc_common1_21c8() == 0)
		__Func_8093c00();
	else
		OvlFunc_954_2008238();
}

extern unsigned char gOvl_0200c420[];

void *ColosseumFinal1_GetEvents(void) {
    return (void *)gOvl_0200c420;
}

INCLUDE_ASM("asm/maps/colosseum_final_1/OvlFunc_954_2008974.s");


void OvlFunc_954_2008a10(void) {
    int res;
    int a;
    int b;

    res = __MapActor_GetActor();
    if (res != 0) {
        a = (*(int *)((char *)res + 8) >> 19) - 0x5e;
        b = *(int *)((char *)res + 0x10) >> 19;
        if ((unsigned int)a <= 1) {
            if (b > 0x17) {
                if (b <= 0x1a) {
                    *(unsigned char *)((char *)res + 0x22) = 1;
                }
            }
        }
    }
}

INCLUDE_ASM("asm/maps/colosseum_final_1/ColosseumFinal1_MapInit.s");
INCLUDE_ASM("asm/maps/colosseum_final_1/OvlFunc_954_2008db8.s");
INCLUDE_ASM("asm/maps/colosseum_final_1/OvlFunc_954_2009214.s");
INCLUDE_ASM("asm/maps/colosseum_final_1/OvlFunc_954_20093e4.s");
INCLUDE_ASM("asm/maps/colosseum_final_1/OvlFunc_954_20095e0.s");
INCLUDE_ASM("asm/maps/colosseum_final_1/OvlFunc_954_20096ec.s");
INCLUDE_ASM("asm/maps/colosseum_final_1/colosseum_final_1_data.s");
