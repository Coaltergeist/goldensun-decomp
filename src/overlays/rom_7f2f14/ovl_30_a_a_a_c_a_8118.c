__asm__(".set __divsi3, _divsi3_RAM");

#define EFFECT_SPAWN_FUNCTION OvlFunc_968_2008118
#define EFFECT_MAP_ACTOR_GET __MapActor_GetActor
#define EFFECT_CREATE_ACTOR __CreateActor
#define EFFECT_SET_ANIM __Actor_SetAnim
#define EFFECT_SET_SCRIPT __Actor_SetScript
#define EFFECT_APPLY_INIT __Func_80929d8
#define EFFECT_DEFAULT_UPDATE OvlFunc_968_20080e0
#define EFFECT_SCRIPT_TABLE_LABEL ".L51d4"
#define EFFECT_DIVIDE(numerator, denominator) ((numerator) / (denominator))

#include "../../effect_actor_spawn.inc"
