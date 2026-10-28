#include "api.h"
struct ImilInitStateView { unsigned char pad[0x1c0]; short area; short room; };
extern struct ImilInitStateView ImilInitState __asm__("gState");
extern unsigned char ImilInitMapSlot[] __asm__("iwram_3001ebc");
extern int ImilInitActor(int) __asm__("__MapActor_GetActor");
extern void __Actor_SetSpriteFlags(void *, int);
extern void __Func_8092950(unsigned int, unsigned int);
extern void __Func_800fe9c(void);
extern void OvlFunc_921_2009960(void);
extern void OvlFunc_921_20099bc(void);
extern void OvlFunc_921_2008f90(void);
extern void OvlFunc_921_20099e8(void);
extern void OvlFunc_921_2009794(void);
extern void OvlFunc_921_20098c4(void);
extern unsigned char gScript_921__0200a4f4[];
__asm__(".equ .Limil_area32, 0x32\n.equ .Limil_area33, 0x33");
extern unsigned char ImilArea32[] __asm__(".Limil_area32");
extern unsigned char ImilArea33[] __asm__(".Limil_area33");
static inline void ImilInitHalf(unsigned short *p, int value) { *p = value; }

int Imil_MapInit(void)
{
    unsigned char *actor;
    unsigned char *initialActor;
    short ev, sub;

    ev = ImilInitState.area;

    if (ev == (int)ImilArea32) {
        initialActor = (unsigned char *)ImilInitActor(0);
        *(int *)(*(unsigned char **)ImilInitMapSlot + 0x1c0) = 0x100;
        API_MapActor_SetAnim(10, 9);
        if (API_GetFlag(0x109)) {
            API_ClearFlag(0x200);
            API_ClearFlag(0x201);
        }
        ImilInitHalf((unsigned short *)(initialActor + 0x64), 0);
        ImilInitHalf((unsigned short *)(initialActor + 0x66), 0);
        API_StartTask(OvlFunc_921_2009794, 0xc80);
        API_StartTask(OvlFunc_921_20098c4, 0xc80);
        API_Func_8092b08(11, 1);
        if (API_GetFlag(0x203)) {
            OvlFunc_921_2009960();
        }
        if (API_GetFlag(0x109)) {
            goto done;
        }
        if (ImilInitState.room == 9) {
            OvlFunc_921_20099bc();
        }
        goto done;
    }

    if (ev != (int)ImilArea33) {
        goto done;
    }

    *(int *)(*(unsigned char **)ImilInitMapSlot + 0x1c0) = 0x209;
    sub = ImilInitState.room;

    if (sub == 1) {
        __Func_8092950(0x15, 0xf);
        actor = (unsigned char *)ImilInitActor(0x15);
        actor += 0x59;
            *actor |= 8;
        API_Func_8092b08(0x15, 1);
        if (API_GetFlag(0x881)) {
            API_Func_8010704(10, 7, 1, 1, 10, 8);
            API_CopyMapTiles(3, 0x7d, 9, 0x45, 3, 3);
            __Func_800fe9c();
            API_WaitFrames(1);
            API_MapActor_SetBehavior(8, 2);
            API_MapActor_SetPos(10, 0, 0);
            goto done;
        }
        if (API_GetFlag(0x82c) && API_GetFlag(0x82a)) {
            actor = (unsigned char *)ImilInitActor(10);
            __Actor_SetSpriteFlags(actor, 0);
            API_MapActor_SetPos(9, 0xae << 16, 0xa4 << 16);
            actor = (unsigned char *)ImilInitActor(9);
            __Actor_SetSpriteFlags(actor, 0);
            API_MapActor_SetAnim(9, 5);
            API_MapActor_SetPos(8, 0xa8 << 16, 0x98 << 16);
            actor = (unsigned char *)ImilInitActor(8);
            ImilInitHalf((unsigned short *)(actor + 6), 0xc0 << 6);
            if (API_GetFlag(0x82b)) {
                goto done;
            }
            OvlFunc_921_2008f90();
            goto done;
        }
        API_Func_8010704(10, 7, 1, 1, 10, 8);
        API_CopyMapTiles(3, 0x7d, 9, 0x45, 3, 3);
        __Func_800fe9c();
        API_WaitFrames(1);
        if (API_GetFlag(0x82c)) {
            API_MapActor_SetPos(8, 0x95 << 16, 0xe8 << 15);
            actor = (unsigned char *)ImilInitActor(8);
            ImilInitHalf((unsigned short *)(actor + 6), 0);
            actor = (unsigned char *)ImilInitActor(9);
            actor += 0x66;
        ImilInitHalf((unsigned short *)actor, 0);
            API_MapActor_SetBehavior(9, (int)gScript_921__0200a4f4);
            goto done;
        }
        API_MapActor_SetBehavior(8, 2);
        goto done;
    }

    if (sub == 2) {
        if (API_GetFlag(0x881)) {
            goto done;
        }
        actor = (unsigned char *)ImilInitActor(11);
        actor += 0x66;
        ImilInitHalf((unsigned short *)actor, 1);
        API_MapActor_SetBehavior(11, (int)gScript_921__0200a4f4);
        goto done;
    }

    if (sub == 4) {
        if (API_GetFlag(0x881)) {
            API_MapActor_SetPos(12, 0xb6 << 17, 0x02420000);
            API_Func_8092b08(12, 2);
            actor = (unsigned char *)ImilInitActor(12);
            actor += 0x59;
            *actor |= 4;
            API_CopyMapTiles(6, 0x7d, 0x16, 0x58, 3, 3);
            API_MapActor_SetPos(13, 0xf6 << 17, 0x02420000);
            API_Func_8092b08(13, 2);
            actor = (unsigned char *)ImilInitActor(13);
            actor += 0x59;
            *actor |= 4;
            API_CopyMapTiles(9, 0x7d, 0x1c, 0x58, 3, 3);
            goto done;
        }
        actor = (unsigned char *)ImilInitActor(12);
        *(int *)(actor + 0x18) = 0xffff0000;
        actor = (unsigned char *)ImilInitActor(12);
        __Actor_SetSpriteFlags(actor, 0);
        API_MapActor_SetAnim(12, 5);
        actor = (unsigned char *)ImilInitActor(13);
        __Actor_SetSpriteFlags(actor, 0);
        API_MapActor_SetAnim(13, 5);
        goto done;
    }

    if (sub == 3) {
        if (API_GetFlag(0x881)) {
            API_MapActor_SetPos(15, 0xe6 << 17, 0x81 << 17);
            API_Func_8092b08(15, 2);
            actor = (unsigned char *)ImilInitActor(15);
            actor += 0x59;
            *actor |= 4;
            API_MapActor_SetPos(14, 0xcc << 17, 0x84 << 17);
            actor = (unsigned char *)ImilInitActor(14);
            ImilInitHalf((unsigned short *)(actor + 6), 0x80 << 5);
            API_CopyMapTiles(12, 0x7d, 0x1a, 0x46, 3, 3);
            goto done;
        }
        API_MapActor_SetPos(14, 0xe6 << 17, 0x81 << 17);
        API_Func_8092b08(14, 2);
        actor = (unsigned char *)ImilInitActor(14);
        actor += 0x59;
            *actor |= 4;
        actor = (unsigned char *)ImilInitActor(15);
        *(int *)(actor + 0x18) = 0xffff0000;
        actor = (unsigned char *)ImilInitActor(15);
        __Actor_SetSpriteFlags(actor, 0);
        API_MapActor_SetAnim(15, 5);
        goto done;
    }

    if (sub == 7) {
        if (!API_GetFlag(0x881)) {
            goto done;
        }
        actor = (unsigned char *)ImilInitActor(20);
        ImilInitHalf((unsigned short *)(actor + 6), 0xc0 << 6);
        if (!API_GetFlag(0x82e)) {
            API_MapActor_SetPos(20, 0x028a0000, 0xa1 << 16);
            OvlFunc_921_20099e8();
            goto done;
        }
        API_MapActor_SetPos(20, 0xa1 << 18, 0xa6 << 16);
        goto done;
    }
done:
    return 0;
}
