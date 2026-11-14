/* Remaining diff: exact 0xf4 byte size and pool layout; 1 adjacent shift-instruction
 * scheduling swap at +0x18 (`lsls r3, r3, #1; lsls r5, r5, #16` vs `lsls r5, r5, #16; lsls r3, r3, #1`)
 * while computing the two random coordinates passed to `API_CreateActor`.
 */
#include "actor.h"
#include "api.h"
#include "sprite.h"

void OvlFunc_881_200b1fc(void)
{
    extern unsigned int __Random(void);
    extern void __Actor_SetAnim(unsigned char *, unsigned int);
    extern void __Actor_SetScript(struct Actor *, const void *);
    extern unsigned int _umodsi3_RAM(unsigned int, unsigned int);
    extern void __Func_80933f8(int, int, int, int);
    extern unsigned int iwram_3001e40;
    extern unsigned char gScript_881__0200d14c[];
    struct Actor *actor;
    struct Sprite *sprite;
    int scale;

    actor = API_CreateActor(0xde, ((__Random() * 40 >> 16) << 16) + 0x17b00000, 0, ((__Random() * 30 >> 16) << 16) + 0x0c4c0000);
    if (actor != NULL) {
        sprite = actor->sprite;
        scale = 0x13333 + ((__Random() * 0x8000) >> 16);
        sprite->flags = 0;
        sprite->oam.priority = 2;
        actor->__unk55 = 0;
        actor->scale.x = scale;
        actor->scale.y = scale;
        __Actor_SetAnim((unsigned char *)actor, 1);
        __Actor_SetScript(actor, gScript_881__0200d14c);
    }
    if (_umodsi3_RAM(iwram_3001e40, 3) == 0) {
        switch ((__Random() * 4) >> 16) {
        case 0:
            __Func_80933f8(0x17c70000, -1, 0x0c690000, 1);
            break;
        case 1:
            __Func_80933f8(0x17c90000, -1, 0x0c670000, 1);
            break;
        case 2:
            __Func_80933f8(0x17c90000, -1, 0x0c690000, 1);
            break;
        case 3:
            __Func_80933f8(0x17c70000, -1, 0x0c670000, 1);
            break;
        }
    }
}
