__asm__(".set __divsi3, _divsi3_RAM");

#define EFFECT_SPAWN_FUNCTION OvlFunc_common0_10c
#define EFFECT_MAP_ACTOR_GET __MapActor_GetActor
#define EFFECT_CREATE_ACTOR __CreateActor
#define EFFECT_SET_ANIM __Actor_SetAnim
#define EFFECT_SET_SCRIPT __Actor_SetScript
#define EFFECT_APPLY_INIT __Func_80929d8
#define EFFECT_DEFAULT_UPDATE OvlFunc_common0_d4
#define EFFECT_SCRIPT_TABLE_LABEL ".Lcommon0EffectScripts"
#define EFFECT_DIVIDE(numerator, denominator) ((numerator) / (denominator))

#include "../../effect_actor_spawn.inc"

__asm__(
    ".section .data\n"
    ".Lcommon0EffectScript1:\n"
    ".incbin \"overlays/rom_78ef88/orig.bin\", 0x4b1c, (0x4b54-0x4b1c)\n"
    ".Lcommon0EffectScript2:\n"
    ".incbin \"overlays/rom_78ef88/orig.bin\", 0x4b54, (0x4b8c-0x4b54)\n"
    ".Lcommon0EffectScript3:\n"
    ".incbin \"overlays/rom_78ef88/orig.bin\", 0x4b8c, (0x4bc4-0x4b8c)\n"
    ".section .data1\n"
    ".Lcommon0EffectScripts:\n"
    ".word .Lcommon0EffectScript1\n"
    ".word .Lcommon0EffectScript2\n"
    ".word .Lcommon0EffectScript3\n");
