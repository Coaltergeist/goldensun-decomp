extern struct Actor *CS968D_FindAt(vec3_t *, int) __asm__("OvlFunc_968_200832c");
extern void CS968D_SetScript(struct Actor *, const void *) __asm__("__Actor_SetScript");
extern unsigned char gScript_968__0200d564[];
extern unsigned char CS968D_NegX[] __asm__(".Lm968_51a4");
extern unsigned char CS968D_PosX[] __asm__(".Lm968_51a8");
extern unsigned char CS968D_NegZ[] __asm__(".Lm968_51ac");
extern unsigned char CS968D_PosZ[] __asm__(".Lm968_51b0");
extern const int CS968D_PositionsA[][2] __asm__(".Lm968_5128");
extern const int CS968D_PositionsB[][2] __asm__(".Lm968_5164");
extern unsigned char *CS968D_CursorsA[] __asm__(".Lm968_772c");
extern unsigned char *CS968D_CursorsB[] __asm__(".Lm968_778c");
extern void **CS968D_ScriptsA[] __asm__(".Lm968_777c");
extern void **CS968D_ScriptsB[] __asm__(".Lm968_77ec");
struct CS968D_State { unsigned char pad[0x1c0]; short map; };
extern struct CS968D_State CS968D_State __asm__("gState");
unsigned int OvlFunc_968_200cbd8(struct Actor *actor)
{
    vec3_t point;
    struct Actor *other;
    struct Sprite *sprite;
    unsigned char *allowed;
    int dx, dz, magnitudeX, magnitudeZ;
    unsigned int index, skipped;
    point.x = actor->pos.x;
    point.y = actor->pos.y - 0x100000;
    point.z = actor->pos.z;
    other = CS968D_FindAt(&point, 0);
    sprite = other->sprite;
    if ((short)sprite->layers[0]->spriteID == 0x100) {
        dx = actor->motion.x;
        magnitudeX = dx;
        if (magnitudeX < 0) magnitudeX = -magnitudeX;
        dz = actor->motion.z;
        magnitudeZ = dz;
        if (magnitudeZ < 0) magnitudeZ = -magnitudeZ;
        if (magnitudeX > magnitudeZ) {
            if (dx / 0x10000 < 0) allowed = CS968D_NegX;
            else allowed = CS968D_PosX;
        } else {
            if (dz / 0x10000 < 0) allowed = CS968D_NegZ;
            else allowed = CS968D_PosZ;
        }
        while (*allowed != 0 && sprite->animID != *allowed) ++allowed;
        if (*allowed == 0) {
        reject:
            CS968D_SetScript(actor, gScript_968__0200d564);
            return 0;
        }
        if (CS968D_State.map == 0xb9) {
            for (index = 0; index <= 3; ++index) {
                if ((actor->pos.x >> 20) == CS968D_PositionsA[index][0] &&
                    (actor->pos.z >> 20) == CS968D_PositionsA[index][1]) break;
            }
            skipped = 0;
            for (;;) {
                if (*CS968D_CursorsA[index] == 0) goto reject;
                if (*CS968D_CursorsA[index] == other->sprite->animID) break;
                ++CS968D_CursorsA[index];
                ++skipped;
            }
            CS968D_SetScript(actor, CS968D_ScriptsA[index][skipped]);
        } else {
            for (index = 0; index <= 7; ++index) {
                if ((actor->pos.x >> 20) == CS968D_PositionsB[index][0] &&
                    (actor->pos.z >> 20) == CS968D_PositionsB[index][1]) break;
            }
            skipped = 0;
            for (;;) {
                if (*CS968D_CursorsB[index] == 0) goto reject;
                if (*CS968D_CursorsB[index] == other->sprite->animID) break;
                ++CS968D_CursorsB[index];
                ++skipped;
            }
            CS968D_SetScript(actor, CS968D_ScriptsB[index][skipped]);
        }
    } else {
        CS968D_SetScript(actor, gScript_968__0200d564);
    }
 done:
    return 0;
}
