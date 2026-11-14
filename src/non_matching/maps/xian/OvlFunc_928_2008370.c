/* Matches 100% byte-for-byte under GAIA_CFLAGS (-fstrict-aliasing).
 * Under -fno-strict-aliasing, storing data.unk1c (void *) aliases actor->pos.z (s32),
 * preventing sched from hoisting ldr r2, [r5, #16] before str r3, [r4, #28].
 */
#include "actor.h"
#include "context.h"

extern void *__MapActor_GetActor(int);
extern unsigned char Lm928_1740[] __asm__(".Lm928_1740");
extern unsigned int iwram_3001e40;

struct XianEffectData {
    int unk0;
    int unk4;
    int unk8;
    int unkc;
    int unk10;
    int unk14;
    short unk18;
    short unk1a;
    void *unk1c;
    int unk20;
    int unk24;
};

void OvlFunc_928_2008370(void)
{
    struct Actor *actor = (struct Actor *)__MapActor_GetActor(0xe);
    struct XianEffectData data;

    if ((iwram_3001e40 & 3) == 0) {
        data.unk0 = 1;
        data.unk4 = 9;
        data.unk18 = 0xa9;
        data.unk1c = Lm928_1740;
        OvlFunc_common0_10c(actor->pos.x, actor->pos.y, actor->pos.z - 0x10000, 0,
            -0x10000, -0x10000, 0xcc << 14, &data);
    }
}
