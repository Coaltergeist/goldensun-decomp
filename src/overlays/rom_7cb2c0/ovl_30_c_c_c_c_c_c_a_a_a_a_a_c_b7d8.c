typedef unsigned int u32;
typedef int s32;

extern s32 __GetFlag(u32 flag);
extern s32 OvlFunc_945_200cfa8(s32 arg0, s32 arg1);
extern void OvlFunc_945_200c890(s32 arg0, s32 arg1, s32 arg2, s32 arg3);
extern void __MapActor_SetPos(s32 actor, s32 x, s32 z);

void OvlFunc_945_200b7d8(s32 arg0)
{
    s32 actor;

    if (arg0 == 0 || __GetFlag(0x929) != 0) {
        actor = OvlFunc_945_200cfa8(0, 0);
        if (actor != 0) {
            OvlFunc_945_200c890(actor, 0xcd << 1, 0xac, 0xd0 << 8);
            __MapActor_SetPos(0xa, 0, 0);
        }
        if (arg0 == 0 || __GetFlag(0x92a) != 0) {
            actor = OvlFunc_945_200cfa8(1, 0);
            if (actor != 0) {
                OvlFunc_945_200c890(actor, 0xeb << 1, 0xac, 0xb0 << 8);
                __MapActor_SetPos(0xb, 0, 0);
            }
            if (arg0 == 0 || __GetFlag(0x92b) != 0) {
                actor = OvlFunc_945_200cfa8(2, 0);
                if (actor != 0) {
                    OvlFunc_945_200c890(actor, 0xcd << 1, 0xcc, 0xd0 << 8);
                    __MapActor_SetPos(0xc, 0, 0);
                }
                if (arg0 == 0) {
                    actor = OvlFunc_945_200cfa8(3, 0);
                    if (actor != 0) {
                        OvlFunc_945_200c890(actor, 0xeb << 1, 0xcc, 0xb0 << 8);
                        __MapActor_SetPos(0xd, 0, 0);
                    }
                }
            }
        }
    }
}
