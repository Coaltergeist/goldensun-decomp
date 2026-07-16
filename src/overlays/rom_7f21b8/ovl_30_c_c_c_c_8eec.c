typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;
#define NULL 0

void __ActorMessage();
void __CutsceneWait();
void __Func_80925cc();
void __Func_809280c();
void __Func_8092adc();
s32 __Func_8092c40();
void __MapActor_DoAnim();
void __MapActor_Emote();
void __MessageID();
extern s32 _MSG_2880;

void OvlFunc_967_2008eec(void) {
__MessageID ( & _MSG_2880 ) ;
__CutsceneWait ( 0x14 ) ;
__Func_80925cc ( 0xB , 2 ) ;
__CutsceneWait ( 0x14 ) ;
__ActorMessage ( 0xB , 0 ) ;
__CutsceneWait ( 0xA ) ;
__Func_809280c ( 1 , 0 , 0x32 ) ;
__MapActor_Emote ( 0 , 0x105 , 0x3C ) ;
__CutsceneWait ( 0xA ) ;
__Func_8092adc ( 1 , 0xC000 , 0 ) ;
__CutsceneWait ( 0x14 ) ;
__ActorMessage ( 1 , 0 ) ;
__CutsceneWait ( 0xA ) ;
__MapActor_DoAnim ( 3 , 4 ) ;
__CutsceneWait ( 0x14 ) ;
__ActorMessage ( 3 , 0 ) ;
__CutsceneWait ( 0xA ) ;
__Func_80925cc ( 2 , 2 ) ;
__CutsceneWait ( 0x14 ) ;
__ActorMessage ( 2 , 0 ) ;
__CutsceneWait ( 0xA ) ;
__Func_80925cc ( 0xC , 2 ) ;
__CutsceneWait ( 0x14 ) ;
__ActorMessage ( 0xC , 0 ) ;
__CutsceneWait ( 0x14 ) ;
__Func_80925cc ( 0 , 2 ) ;
__CutsceneWait ( 0x14 ) ;
__CutsceneWait ( 0x19 ) ;
__Func_80925cc ( 1 , 2 ) ;
__CutsceneWait ( 0x1E ) ;
__ActorMessage ( 1 , 0 ) ;
__CutsceneWait ( 0x1E ) ;
__MapActor_DoAnim ( 1 , 4 ) ;
__CutsceneWait ( 0x14 ) ;
__ActorMessage ( 1 , 0 ) ;
__CutsceneWait ( 0xA ) ;
__MapActor_DoAnim ( 3 , 4 ) ;
__CutsceneWait ( 0x14 ) ;
__ActorMessage ( 3 , 0 ) ;
__CutsceneWait ( 0xA ) ;
__MapActor_DoAnim ( 2 , 3 ) ;
__CutsceneWait ( 0x1E ) ;
__ActorMessage ( 2 , 0 ) ;
__CutsceneWait ( 0xA ) ;
__Func_809280c ( 2 , 0 , 0x1E ) ;
__Func_8092c40 ( 0x2002 , 0 ) ;
}

