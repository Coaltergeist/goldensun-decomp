typedef unsigned char u8;
typedef unsigned short u16;

extern const u8 message_1cc0[] asm("_MSG_1cc0");
extern u8 *__MapActor_GetActor(int actor_id);
extern void __CutsceneStart(void);
extern int __GetFlag(int flag);
extern void __MessageID(int message_id);
extern void OvlFunc_901_20084b4(int actor_id);
extern void OvlFunc_901_200858c(void);
extern void __SetFlag(int flag);
extern void __CutsceneEnd(void);

void OvlFunc_901_2008804(void)
{
    register u8 *actor asm("r0") = __MapActor_GetActor(0xe);
    int repeat_scene;

    actor += 0x64;
    asm volatile("" : "+r"(actor));
    {
        register u16 old_flags asm("r2") = *(u16 *)actor;
        register u16 new_flags asm("r3") = 2;

        new_flags |= old_flags;
        *(u16 *)actor = new_flags;
    }
    __CutsceneStart();
    {
        register int scene_flag asm("r0") = 0x307;

        asm volatile("" : "+r"(scene_flag));
        repeat_scene = __GetFlag(scene_flag);
    }
    if (repeat_scene) {
        __MessageID((int)message_1cc0);
        OvlFunc_901_20084b4(0xe);
    } else {
        OvlFunc_901_200858c();
        {
            register int scene_flag asm("r0") = 0x307;

            asm volatile("" : "+r"(scene_flag));
            __SetFlag(scene_flag);
        }
    }
    __CutsceneEnd();
    actor = __MapActor_GetActor(0xe);
    {
        register int one asm("r3") = 1;

        asm volatile("" : "+r"(actor), "+r"(one));
        *(u16 *)(actor + 0x64) = one;
    }
}
