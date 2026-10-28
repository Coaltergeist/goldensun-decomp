extern unsigned char MercuryLowerFloors[];
__asm__(".equ MercuryLowerFloors, 0x36");
extern unsigned char MercuryWaterfalls[];
__asm__(".equ MercuryWaterfalls, 0x37");
extern unsigned char MercuryStatues[];
__asm__(".equ MercuryStatues, 0x38");
extern unsigned char MercuryUpperFloors[];
__asm__(".equ MercuryUpperFloors, 0x39");
#include "api.h"

struct MercuryInitStateView {
    unsigned char beforeMap[0x1c0];
    short map;
    short room;
    unsigned char beforeDestination[0x7c];
    unsigned short destinationMap;
    unsigned short destinationRoom;
};
struct MercuryFieldView { unsigned char beforeTransition[0x1c0]; int transition; };
static inline void MercuryWriteRegister(int value, volatile unsigned short *address) { *address = value; }

static inline void MercuryWriteByte(unsigned char *address, int value) { *address = value; }
int MercuryLighthouse_MapInit(void)
{
    extern void OvlFunc_924_2008d58(void);
    extern void OvlFunc_924_200a2c4(void);
    extern void OvlFunc_924_200a648(void);
    extern void OvlFunc_924_200adcc(void);
    #define REG_BLDCNT ((unsigned char *)0x4000050)
    extern unsigned char ewram_2001000[];
    extern struct MercuryInitStateView MercuryState __asm__("gState");
    extern struct MercuryFieldView *MercuryField __asm__("iwram_3001ebc");
    extern void MercurySpriteFlags(void *, int) __asm__("__Actor_SetSpriteFlags");
    extern void __Func_800fe9c(void);
    extern void __Func_8011ae0(void);
    extern void __Func_8011af0(void);
    extern void __Func_8019aa0(int, int, int);
    extern void __Func_8091494(struct Actor *);
    extern void __Func_8091ff0(unsigned int);
    extern void __Func_8092950(int, int);
    extern void * __Func_8093554(void);
    extern unsigned char * __MapActor_GetActor(unsigned int);
    extern int OvlFunc_924_2008ba4(unsigned int);
    extern void OvlFunc_924_2008dfc(void);
    extern void OvlFunc_924_20097a8(int);
    extern void OvlFunc_924_2009db4(int);
    extern void OvlFunc_924_200a030(int);
    extern void OvlFunc_924_200b788(void);
    extern void OvlFunc_924_200cc68(void);
    extern void OvlFunc_924_200cfcc(int, void *);
    extern void OvlFunc_common0_0(struct Actor *, int);
    unsigned char * savedActor;
    unsigned int statueIndex;
    int statueX;
    int statueFlag;
    int flagValue1;
    int flagValue2;
    int flagValue3;
    int flagValue4;
    int flagValue5;
    int flagValue6;
    int flagValue7;
    int flagValue8;
    int flagValue9;
    int flagValue10;
    int flagValue11;
    int flagValue12;
    int flagValue13;
    int flagValue14;
    int flagValue15;
    int flagValue16;
    int flagValue17;
    int flagValue18;
    int flagValue19;
    int flagValue20;
    int flagValue21;
    int flagValue22;
    int flagValue23;
    int flagValue24;
    int flagValue25;
    int completionFlag;
    int stoppedMotion;
    void * cameraActor;
    int flagValue28;
    int flagValue29;
    int flagValue30;
    int flagValue31;
    unsigned char *actor;

    /* Each map check reloads state after the previous room setup. */
    API_SetFlag(0x111);
    MercuryState.destinationRoom = 11;
    MercuryState.destinationMap = (int)MercuryUpperFloors;
    MercuryField->transition = 0x204;
    MercuryWriteRegister(0x3f40, (volatile unsigned short *)REG_BLDCNT);
    MercuryWriteRegister(0x1010, (volatile unsigned short *)(REG_BLDCNT + 0x2));
    OvlFunc_924_200cfcc(21, ewram_2001000);
    __Func_8091494(0);
    flagValue1 = API_GetFlag(0x875);
    if (flagValue1 == 0) goto L924_3d82;
    API_StartTask(OvlFunc_924_2008d58, 0xc80);
    goto L924_3d86;
L924_3d82:;
    OvlFunc_924_2008dfc();
L924_3d86:;
    if (MercuryState.map == (int)MercuryLowerFloors) {
        switch (MercuryState.room) {

        case 1:
        case 2:
        case 3:
        L924_3df4:;
            flagValue2 = API_GetFlag(0x875);
            if (flagValue2 != 0) goto L924_3e00;
            goto L924_3f56;
        L924_3e00:;
            API_Func_8010704(0x42, 5, 27, 23, 2, 5);
            goto L924_3f56;
        case 5:
        case 6:
        L924_3e16:;
            __Func_8091ff0(0xaa);
            goto L924_3f56;
        case 15:
        L924_3e1e:;
            actor = __MapActor_GetActor(0);
            OvlFunc_common0_0((struct Actor *)actor, 1);
        case 4:
        L924_3e2a:;
            flagValue3 = API_GetFlag(0x876);
            if (flagValue3 == 0) goto L924_3e66;
            API_WaitFrames(1);
            API_MapActor_SetPos(9, 0x2a00000, 0x800000);
            API_MapActor_SetPos(10, 0x2c00000, 0xc00000);
            API_MapActor_SetPos(11, 0x2880000, 0xf00000);
            goto L924_3e8a;
        L924_3e66:;
            flagValue4 = API_GetFlag(0x109);
            if (flagValue4 != 0) goto L924_3e8a;
            API_ClearFlag(0x310);
            API_ClearFlag(0x311);
            API_ClearFlag(0x312);
            API_ClearFlag(0x313);
        L924_3e8a:;
            actor = __MapActor_GetActor(9);
            OvlFunc_common0_0((struct Actor *)actor, 1);
            actor = __MapActor_GetActor(10);
            OvlFunc_common0_0((struct Actor *)actor, 1);
            actor = __MapActor_GetActor(11);
            OvlFunc_common0_0((struct Actor *)actor, 1);
            OvlFunc_924_2008ba4(9);
            OvlFunc_924_2008ba4(10);
            OvlFunc_924_2008ba4(11);
            actor = __MapActor_GetActor(12);
            OvlFunc_common0_0((struct Actor *)actor, 1);
            flagValue5 = API_GetFlag(0x310);
            if (flagValue5 == 0) goto L924_3f56;
            API_CopyMapTiles(0x77, 9, 0x6d, 11, 1, 1);
            flagValue6 = API_GetFlag(0x311);
            if (flagValue6 == 0) goto L924_3f04;
            API_CopyMapTiles(0x76, 9, 0x68, 13, 1, 1);
        L924_3f04:;
            __Func_800fe9c();
            API_WaitFrames(1);
            goto L924_3f56;
        case 9:
        case 10:
        L924_3f10:;
            flagValue7 = API_GetFlag(0x873);
            if (flagValue7 != 0) goto L924_3f34;
            API_MapActor_SetPos(3, 0x2b80000, 0x2780000);
            API_Func_8092adc(3, 0, 0);
            goto L924_3f56;
        L924_3f34:;
            API_MapActor_SetPos(8, 0x3080000, 0x2780000);
            API_Func_8010704(0x6e, 0x27, 5, 1, 0x2e, 0x27);
        }
    }
L924_3f56:;
    if (MercuryState.map == (int)MercuryWaterfalls) {
        switch (MercuryState.room) {

        case 1:
        case 2:
        L924_3fac:;
            actor = __MapActor_GetActor(8);
            OvlFunc_common0_0((struct Actor *)actor, 1);
            actor = __MapActor_GetActor(9);
            OvlFunc_common0_0((struct Actor *)actor, 1);
            flagValue8 = API_GetFlag(0x302);
            if (flagValue8 != 0) goto L924_3fd0;
            goto L924_41f4;
        L924_3fd0:;
            API_WaitFrames(1);
            API_PlaySound(0xd3);
            API_MapActor_SetPos(8, 0xb80000, 0x2100000);
            API_Func_8010704(11, 31, 1, 4, 9, 31);
            API_Func_8010704(7, 30, 1, 4, 11, 31);
            API_CopyMapTiles(0x4a, 0x3a, 0x46, 0x20, 1, 2);
            API_CopyMapTiles(0x4a, 0x3b, 0x46, 0x22, 1, 1);
            API_CopyMapTiles(0x4c, 0x3c, 0x4a, 0x26, 3, 1);
            API_CopyMapTiles(0x4d, 0x3c, 0x4c, 0x26, 2, 1);
            API_CopyMapTiles(0x4b, 0x3a, 0x56, 0x29, 1, 3);
            API_CopyMapTiles(0x4b, 0x3b, 0x56, 0x2b, 1, 2);
            API_CopyMapTiles(0x4c, 0x3b, 0x50, 0x31, 2, 1);
            API_CopyMapTiles(0x4d, 0x3b, 0x52, 0x31, 2, 1);
            goto L924_41f4;
        case 3:
        case 4:
        L924_40f0:;
            __Func_800fe9c();
            API_WaitFrames(1);
            flagValue9 = API_GetFlag(0x109);
            if (flagValue9 == 0) goto L924_4132;
            flagValue10 = API_GetFlag(0x256);
            if (flagValue10 == 0) goto L924_4132;
            API_CopyMapTiles(5, 2, 5, 11, 1, 1);
            API_CopyMapTiles(9, 1, 9, 7, 1, 2);
        L924_4132:;
            flagValue11 = API_GetFlag(0x874);
            if (flagValue11 == 0) goto L924_41f4;
            API_MapActor_SetPos(11, 0x580000, 0xd80000);
            actor = __MapActor_GetActor(11);
            *(int *)(actor + 0xc) = (*(int *)(actor + 0xc) + 0xfffe0000);
            actor = __MapActor_GetActor(11);
            /* Preserve the first lookup across the independent position lookup. */
            savedActor = actor;
            actor = __MapActor_GetActor(11);
            *(int *)(savedActor + 0x3c) = *(int *)(actor + 0xc);
            API_CopyMapTiles(9, 1, 9, 7, 1, 2);
            API_CopyMapTiles(5, 2, 5, 11, 1, 1);
            API_Func_8010704(9, 5, 1, 1, 9, 10);
            goto L924_41f4;
        case 7:
        case 8:
        case 9:
        L924_41a4:;
            actor = __MapActor_GetActor(10);
            OvlFunc_common0_0((struct Actor *)actor, 1);
            flagValue12 = API_GetFlag(0x306);
            if (flagValue12 == 0) goto L924_41f4;
            OvlFunc_924_20097a8(0);
            API_Func_8010704(0x2a, 0x29, 4, 1, 0x2a, 0x27);
            API_Func_8010704(0x2a, 0x28, 4, 1, 0x2a, 0x29);
            API_MapActor_SetPos(10, 0x2c00000, 0x2800000);
        }
    }
L924_41f4:;
    if (MercuryState.map == (int)MercuryStatues) {
        switch (MercuryState.room) {

        case 4:
        case 5:
        case 6:
        L924_4264:;
            actor = __MapActor_GetActor(15);
            OvlFunc_common0_0((struct Actor *)actor, 1);
            actor = __MapActor_GetActor(16);
            OvlFunc_common0_0((struct Actor *)actor, 1);
            actor = __MapActor_GetActor(17);
            OvlFunc_common0_0((struct Actor *)actor, 1);
            actor = __MapActor_GetActor(18);
            OvlFunc_common0_0((struct Actor *)actor, 1);
            actor = __MapActor_GetActor(19);
            OvlFunc_common0_0((struct Actor *)actor, 1);
            actor = __MapActor_GetActor(0);
            OvlFunc_common0_0((struct Actor *)actor, 1);
            /* Restore four statues from paired puzzle flags. */
            statueIndex = 0;
            statueX = 0x2780000;
            statueFlag = 0x330;
            do {
                flagValue13 = API_GetFlag(statueFlag);
                if (flagValue13 == 0) goto L924_42d0;
                API_MapActor_SetPos((statueIndex + 15), statueX, 0x580000);
                goto L924_42ec;
            L924_42d0:;
                flagValue14 = API_GetFlag((statueFlag + 1));
                if (flagValue14 == 0) goto L924_42ec;
                API_MapActor_SetPos((statueIndex + 15), (statueX + 0x200000), 0x580000);
            L924_42ec:;
                statueIndex += 0x1;
                statueX += 0x400000;
                statueFlag += 0x2;
            } while (statueIndex <= 3);
            flagValue15 = API_GetFlag(0x338);
            if (flagValue15 == 0) goto L924_4322;
            API_MapActor_SetPos(19, 0x3980000, 0x580000);
            API_Func_8010704(0x35, 10, 1, 1, 0x3a, 7);
            goto L924_466c;
        L924_4322:;
            flagValue16 = API_GetFlag(0x339);
            if (flagValue16 != 0) goto L924_432e;
            goto L924_466c;
        L924_432e:;
            API_MapActor_SetPos(19, 0x3b80000, 0x580000);
            API_Func_8010704(0x35, 10, 1, 1, 0x3a, 7);
            goto L924_466c;
        case 10:
        case 11:
        L924_434a:;
            flagValue17 = API_GetFlag(0x348);
            if (flagValue17 != 0) goto L924_4358;
            goto L924_466c;
        L924_4358:;
            API_MapActor_SetPos(20, 0x1c80000, 0x1480000);
            API_Func_8010704(0x1d, 20, 1, 1, 0x1f, 20);
            goto L924_466c;
        case 3:
        case 13:
        L924_437c:;
            OvlFunc_924_200b788();
        case 1:
        case 2:
        case 12:
        L924_4380:;
            __Func_8091ff0(0xaa);
            goto L924_466c;
        case 7:
        case 8:
        case 9:
        L924_4388:;
            flagValue18 = API_GetFlag(0x109);
            if (flagValue18 == 0) goto L924_43dc;
            flagValue19 = API_GetFlag(0x256);
            if (flagValue19 == 0) goto L924_43dc;
            actor = __MapActor_GetActor(0);
            *(int *)(actor + 0xc) = 0xfffe0000;
            actor = __MapActor_GetActor(0);
            /* Preserve the first lookup across the independent position lookup. */
            savedActor = actor;
            actor = __MapActor_GetActor(0);
            *(int *)(savedActor + 0x3c) = *(int *)(actor + 0xc);
            API_CopyMapTiles(6, 29, 10, 23, 1, 1);
            API_CopyMapTiles(10, 28, 10, 18, 1, 2);
        L924_43dc:;
            flagValue20 = API_GetFlag(0x878);
            if (flagValue20 != 0) goto L924_43e8;
            goto L924_466c;
        L924_43e8:;
            API_MapActor_SetPos(8, 0xa80000, 0x1780000);
            actor = __MapActor_GetActor(8);
            *(int *)(actor + 0xc) = (*(int *)(actor + 0xc) + 0xfffe0000);
            actor = __MapActor_GetActor(8);
            /* Preserve the first lookup across the independent position lookup. */
            savedActor = actor;
            actor = __MapActor_GetActor(8);
            *(int *)(savedActor + 0x3c) = *(int *)(actor + 0xc);
            API_CopyMapTiles(6, 29, 10, 23, 1, 1);
            API_CopyMapTiles(10, 28, 10, 18, 1, 2);
            API_Func_8010704(10, 16, 1, 1, 10, 19);
            __Func_800fe9c();
            goto L924_466c;
        case 16:
        L924_447c:;
            API_WaitFrames(1);
            API_MapActor_SetPos(10, 0x3300000, 0x2600000);
            API_MapActor_SetPos(11, 0x3080000, 0x2400000);
            actor = __MapActor_GetActor(0);
            OvlFunc_common0_0((struct Actor *)actor, 1);
            OvlFunc_924_200a030(0);
            OvlFunc_924_2009db4(1);
        case 14:
        L924_44b6:;
            if (MercuryState.room != 14) goto L924_44cc;
            API_PlaySound(0xd3);
        L924_44cc:;
            actor = __MapActor_GetActor(9);
            OvlFunc_common0_0((struct Actor *)actor, 1);
            API_Func_8092b08(10, 2);
            actor = __MapActor_GetActor(10);
            actor += 0x22;
            *actor = 2;
            actor = __MapActor_GetActor(11);
            OvlFunc_common0_0((struct Actor *)actor, 1);
            actor = __MapActor_GetActor(12);
            OvlFunc_common0_0((struct Actor *)actor, 1);
            actor = __MapActor_GetActor(13);
            OvlFunc_common0_0((struct Actor *)actor, 1);
            actor = __MapActor_GetActor(14);
            OvlFunc_common0_0((struct Actor *)actor, 1);
            OvlFunc_924_2008ba4(10);
            OvlFunc_924_2008ba4(11);
            if (MercuryState.room == 14) goto L924_4532;
            goto L924_466c;
        L924_4532:;
            flagValue21 = API_GetFlag(0x109);
            if (flagValue21 != 0) goto L924_4558;
            API_ClearFlag(0x318);
            API_ClearFlag(0x319);
            API_ClearFlag(0x31a);
            API_ClearFlag(0x31b);
            goto L924_466c;
        L924_4558:;
            OvlFunc_924_200a030(0);
            flagValue22 = API_GetFlag(0x319);
            if (flagValue22 == 0) goto L924_4588;
            OvlFunc_924_2009db4(2);
            actor = __MapActor_GetActor(9);
            if ((*(int *)(actor + 0x10) >> 20) != 0x2c) goto L924_466c;
            API_StartTask(OvlFunc_924_200a2c4, 0xc80);
            goto L924_466c;
        L924_4588:;
            flagValue23 = API_GetFlag(0x31a);
            if (flagValue23 == 0) goto L924_459a;
            OvlFunc_924_2009db4(1);
            goto L924_466c;
        L924_459a:;
            flagValue24 = API_GetFlag(0x31b);
            if (flagValue24 != 0) goto L924_466c;
            OvlFunc_924_2009db4(0);
            goto L924_466c;
        case 15:
        L924_45ac:;
            API_CutsceneStart();
            actor = __MapActor_GetActor(8);
            OvlFunc_common0_0((struct Actor *)actor, 1);
            __Func_8092950(0, 15);
            actor = __MapActor_GetActor(0);
            MercurySpriteFlags(actor, 0);
            actor = __MapActor_GetActor(8);
            *(int *)(actor + 0xc) = 0x900000;
            actor = __MapActor_GetActor(8);
            /* The movement byte and bounce share this full-width zero. */
            stoppedMotion = 0;
            actor += 0x55;
            MercuryWriteByte(actor, stoppedMotion);
            actor = __MapActor_GetActor(8);
            *(int *)(actor + 0x44) = stoppedMotion;
            actor = __MapActor_GetActor(8);
            *(int *)(actor + 0x48) = 0x4ccc;
            MercuryField->transition = 0x100;
            API_MapTransitionIn();
            API_WaitMapTransition();
            actor = __MapActor_GetActor(8);
            actor += 0x55;
            *actor = 3;
            API_PlaySound(0xbd);
            API_CutsceneWait(0x20);
            API_PlaySound(0xbc);
            actor = __MapActor_GetActor(8);
            OvlFunc_common0_0((struct Actor *)actor, 2);
            API_Func_8012330(0x30000, 0x30000, 0x10000);
            API_Func_8012330(-1, -1, 0xe666);
            API_Func_8012350();
            API_CutsceneWait(0x3c);
            API_Func_8091e9c(16);
            API_CutsceneEnd();
        }
    }
L924_466c:;
    if (MercuryState.map == (int)MercuryUpperFloors) {
        switch (MercuryState.room) {
        case 10:
        L924_46a8:;
            API_StartTask(OvlFunc_924_200adcc, 0xc80);
            flagValue25 = API_GetFlag(0x109);
            if (flagValue25 == 0) goto L924_46be;
            goto L924_49ea;
        L924_46be:;
            OvlFunc_924_200b788();
            __Func_8091ff0(0xaa);
            API_Func_8091220(0x10000, 0);
            API_Func_8091200(0x10003, 1);
            API_Func_8091254(30);
            API_WaitMapTransition();
            API_MapActor_SetAnim(0, 1);
            API_CutsceneWait(30);
            __Func_8019aa0(0x1633, 0, 0);
            API_Func_8091200(0x10000, 0);
            API_Func_8091254(30);
            goto L924_49ea;
        case 15:
        L924_470e:;
            API_MapActor_SetPos(3, 0, 0);
            __Func_8011ae0();
            MercuryWriteRegister(0, (volatile unsigned short *)REG_BLDCNT);
            actor = __MapActor_GetActor(9);
            *(int *)(actor + 0x18) = 0xffff0000;
            API_Func_8092b08(14, 1);
            API_Func_8092b08(15, 1);
            API_Func_8092b08(16, 1);
            completionFlag = API_GetFlag(0x109);
            if (completionFlag != 0) {

                API_Func_8010704(0x68, 0x22, 5, 4, 0x28, 0x22);
                API_CopyMapTiles(0x2d, 0x5b, 0x28, 0x5b, 5, 4);

            } else {

                API_MapActor_SetPos(10, 0x3380000, 0x2580000);
                API_Func_8010704(0x74, 0x24, 3, 4, 0x34, 0x24);
                actor = __MapActor_GetActor(10);
                actor += 0x55;
                MercuryWriteByte(actor, completionFlag);
                actor = __MapActor_GetActor(10);
                OvlFunc_common0_0((struct Actor *)actor, 1);
                API_CutsceneStart();
                API_Func_80933f8(-1, -1, -1, 0);
                cameraActor = __Func_8093554();
                MercuryWriteByte(((unsigned char *)cameraActor) + 0x55, completionFlag);
                API_Func_8092b08(0, 1);
                API_Func_8092b08(13, 1);
                OvlFunc_924_200cc68();
                __Func_8011af0();
                API_CutsceneEnd();

            }
            goto L924_49ea;
        case 12:
        L924_47ee:;
            API_CutsceneWait(1);
            actor = __MapActor_GetActor(0);
            OvlFunc_common0_0((struct Actor *)actor, 1);
        case 11:
        L924_4800:;
            API_Func_8010704(0x68, 0x22, 5, 4, 0x28, 0x22);
            API_CopyMapTiles(0x2d, 0x5b, 0x28, 0x5b, 5, 4);
            flagValue28 = API_GetFlag(0x881);
            if (flagValue28 != 0) goto L924_48a4;
            API_CopyMapTiles(30, 0x2d, 0x32, 0x2d, 5, 6);
            API_CopyMapTiles(0x32, 0x69, 0x32, 0x6d, 5, 3);
            __Func_800fe9c();
            API_WaitFrames(1);
            goto L924_48bc;
        L924_48a4:;
            API_Func_8092b08(14, 1);
            API_Func_8092b08(15, 1);
            API_Func_8092b08(16, 1);
        L924_48bc:;
            actor = __MapActor_GetActor(9);
            *(int *)(actor + 0x18) = 0xffff0000;
            flagValue29 = API_GetFlag(0x82b);
            if (flagValue29 != 0) goto L924_4924;
            API_MapActor_SetPos(3, 0, 0);
            API_MapActor_SetPos(10, 0x3380000, 0x2580000);
            API_Func_8092b08(10, 1);
            API_Func_8010704(0x74, 0x25, 3, 3, 0x34, 0x25);
            API_CopyMapTiles(0x7e, 0x23, 0x74, 0x23, 1, 2);
            API_StartTask(OvlFunc_924_200a648, 0xc80);
            goto L924_49ea;
        L924_4924:;
            flagValue30 = API_GetFlag(0x871);
            if (flagValue30 != 0) goto L924_4994;
            flagValue31 = API_GetFlag(0x870);
            if (flagValue31 != 0) goto L924_494e;
            API_Func_8092adc(3, 0, 0);
            API_MapActor_SetAnim(3, 16);
            goto L924_4968;
        L924_494e:;
            API_MapActor_SetPos(3, 0x3480000, 0x2780000);
            API_Func_8092adc(3, 0xc000, 0);
        L924_4968:;
            actor = __MapActor_GetActor(3);
            OvlFunc_common0_0((struct Actor *)actor, 1);
            API_CopyMapTiles(0x7e, 0x23, 0x74, 0x23, 1, 2);
            API_StartTask(OvlFunc_924_200a648, 0xc80);
            goto L924_49d2;
        L924_4994:;
            API_MapActor_SetPos(3, 0, 0);
            API_MapActor_SetPos(10, 0x3380000, 0x2580000);
            API_Func_8010704(0x74, 0x24, 3, 4, 0x34, 0x24);
            actor = __MapActor_GetActor(10);
            actor += 0x59;
            *actor = 0xfe;
            API_CutsceneWait(1);
        L924_49d2:;
            actor = __MapActor_GetActor(10);
            actor += 0x55;
            *actor = 0;
            actor = __MapActor_GetActor(10);
            OvlFunc_common0_0((struct Actor *)actor, 1);
        }
    }
L924_49ea:;
    return 0;
}
