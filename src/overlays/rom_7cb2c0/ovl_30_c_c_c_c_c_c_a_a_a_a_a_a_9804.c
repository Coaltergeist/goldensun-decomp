typedef unsigned char u8;
typedef unsigned short u16;
typedef signed short s16;

extern u8 *iwram_3001ebc;
extern void __CutsceneStart(void);
extern void __MessageID(int message_id);
extern void __Func_8092c40(int actor_id, int value);
extern int __Func_8091c7c(int, int);
extern void OvlFunc_945_200c86c(int actor_id);
extern void __MapActor_SetAnim(int actor_id, int anim);
extern u8 *__MapActor_GetActor(int actor_id);
extern void __MapActor_TravelTo(int actor_id, int x, int y);
extern void __MapActor_WaitMovement(int actor_id);
extern void __MapActor_SetPos(int actor_id, int x, int y);
extern void __SetFlag(int flag);
extern void __CutsceneEnd(void);

void OvlFunc_945_2009804(int actor_id, int message_id, int flag)
{
    u8 *actor;

    __CutsceneStart();
    __MessageID(message_id);
    __asm__ volatile(
        "mov r1, #0\n\t"
        "mov r0, %0\n\t"
        "bl __Func_8092c40"
        :
        : "r" (actor_id)
        : "r0", "r1", "r2", "r3", "lr", "cc", "memory");
    if (__Func_8091c7c(0, 0) == 0) {
        OvlFunc_945_200c86c(actor_id);
        __MapActor_SetAnim(actor_id, 2);
        actor = __MapActor_GetActor(0);
        if (actor != 0) {
            __MapActor_TravelTo(actor_id, *(s16 *)(actor + 10), *(s16 *)(actor + 18));
        }
        __MapActor_WaitMovement(actor_id);
        __MapActor_SetPos(actor_id, 0, 0);
        __SetFlag(0x300);
        __SetFlag(flag);
    } else {
        (*(u16 *)(iwram_3001ebc + 0x1d8))++;
        OvlFunc_945_200c86c(actor_id);
    }
    __CutsceneEnd();
}
