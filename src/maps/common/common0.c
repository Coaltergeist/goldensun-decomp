/* Shared "common0" module: the field/effects actor runtime linked into all 19
 * common0-bundling overlays (dungeons, lighthouses, deserts, …). Provides the
 * per-frame physics integrator, sprite/attr helpers, and the effect-actor
 * spawner (OvlFunc_common0_10c) that map cutscenes call into.
 *
 * Skeleton: functions are INCLUDE_ASM stubs pending decomp. NOTE: this module
 * appears to require -fno-strict-aliasing to match (OvlFunc_common0_d4 needs it
 * on a type-based load lift); see FINDINGS_fno_strict_aliasing.md. Landing the
 * decompiled C will need a per-file flag override; investigation ongoing.
 */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/common/common0/OvlFunc_common0_0.s");
INCLUDE_ASM("asm/maps/common/common0/OvlFunc_common0_18.s");
INCLUDE_ASM("asm/maps/common/common0/OvlFunc_common0_70.s");
void OvlFunc_common0_d4(void *arg0)
{
    unsigned char *p = (unsigned char *)arg0;
    unsigned char *sprite;

    *(int *)(p + 8) += *(int *)(p + 0x44);
    *(int *)(p + 0xc) += *(int *)(p + 0x48);
    *(int *)(p + 0x10) += *(int *)(p + 0x4c);
    *(int *)(p + 0x18) += *(int *)(p + 0x30);
    *(int *)(p + 0x1c) += *(int *)(p + 0x34);
    sprite = *(unsigned char **)(p + 0x50);
    *(short *)(sprite + 0x1e) += *(short *)(p + 0x64);
}
INCLUDE_ASM("asm/maps/common/common0/OvlFunc_common0_10c.s");
