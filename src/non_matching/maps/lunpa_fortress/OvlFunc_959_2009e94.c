#include "api.h"

struct CS959D_Field { unsigned char pad[0x1c0]; unsigned int transition; };
extern struct CS959D_Field *CS959D_Field __asm__("iwram_3001ebc");
struct CS959D_State { unsigned char pad[0x22b]; unsigned char battleMode; };
extern struct CS959D_State CS959D_State __asm__("gState");
void OvlFunc_959_2009e94(void)
{
    extern void __Func_8091f90(int, int);
    extern void __StartMapBattle(int, int);
    int message;

    API_MapActor_SetAnim(0, 1);
    API_MapActor_SetAnim(12, 1);
    API_MapActor_SetAnim(13, 1);
    API_MapActor_SetAnim(14, 1);
    API_PlaySound(0x71);
    API_MapActor_Emote(12, 0x100, 0);
    API_CutsceneWait(30);
    API_MapActor_Face(12, 0, 0);
    message = 0x2438;
    API_MessageID(message);
    API_ActorMessage(12, 0);
    API_MapActor_Emote(13, 0x100, 0);
    API_MapActor_Emote(14, 0x100, 0);
    API_MapActor_Face(13, 0, 0);
    API_MapActor_Face(14, 0, 0);
    API_MapActor_Face(0, 13, 0);
    API_CutsceneWait(0x41);
    API_Func_8092adc(13, 0x5000, 0);
    API_Func_8092adc(14, 0xd000, 0);
    API_MessageID(message + 1);
    API_ActorMessage(13, 0);
    API_MapActor_DoAnim(14, 3);
    API_MessageID(message + 2);
    API_ActorMessage(14, 0);
    API_MessageID(message + 3);
    API_ActorMessage(12, 0);
    API_Func_80925cc(13, 1);
    API_MessageID(message + 4);
    API_ActorMessage(13, 0);
    API_MapActor_DoAnim(14, 3);
    API_MessageID(message + 5);
    API_ActorMessage(14, 0);
    API_MapActor_DoAnim(14, 3);
    API_CutsceneWait(0x3c);
    API_MapActor_Face(13, 0, 0);
    API_MapActor_Face(14, 0, 0);
    API_CutsceneWait(0x46);
    API_MapActor_TravelToAnim(12, 0x2a0, 0x58);
    API_MapActor_WaitMovement(12);
    API_MapActor_Face(12, 0, 0);
    API_MapActor_DoAnim(12, 3);
    message += 6;
    API_CutsceneWait(30);
    API_MessageID(message);
    API_ActorMessage(12, 0);
    CS959D_Field->transition = 0x200;
    __Func_8091f90(0xa1, 31);
    CS959D_State.battleMode = 3;
    __StartMapBattle(0x62, 3);
    API_MapActor_SetPos(12, 0, 0);
    API_MapActor_SetPos(13, 0, 0);
    API_MapActor_SetPos(14, 0, 0);
    API_CutsceneEnd();
    API_SetFlag(0x94a);
}
