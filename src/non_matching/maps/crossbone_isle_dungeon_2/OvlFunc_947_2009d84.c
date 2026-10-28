#include "actor.h"
extern struct Actor *CS947U_Actor(int) __asm__("__MapActor_GetActor");
extern int CS947U_Collision(struct Actor *, vec3_t *) __asm__("__TestCollision");
extern int CS947U_TileType(int, int, int) __asm__("__Func_8012038");
extern void OvlFunc_947_2009074(unsigned int, unsigned int);
extern void OvlFunc_947_2009be8(void);
struct CS947U_Record { int x, y, z; unsigned char tile[4]; int flag; };
extern struct CS947U_Record CS947U_Cache[] __asm__("bss_36d0");
extern vec3_t CS947U_Probe __asm__(".Lm947_3720");
static inline void CS947U_StoreByte(unsigned char *p, int value) { *p = value; }
void OvlFunc_947_2009d84(void)
{
    struct Actor *actor, *other;
    struct CS947U_Record *entry;
    unsigned int id, index, j;
    unsigned int tile;
    unsigned char *motionFlags, *flags;
    entry = CS947U_Cache;
    for (id = 8; id <= 11; id++, entry++) {
        actor = CS947U_Actor(id);
        actor->layer = 2;
        index = id - 8;
        if ((actor->pos.x >> 20) == CS947U_Cache[index].x &&
            (actor->pos.z >> 20) == CS947U_Cache[index].z && actor->motion.y == 0)
            continue;
        DMA3_SET(&actor->pos, &CS947U_Probe, 0x84000003);
        WaitForDma3();
        if (CS947U_Collision(actor, &CS947U_Probe) == -1)
            actor->__unk55 = 3;
        motionFlags = &actor->__unk55;
        OvlFunc_947_200901c(0, CS947U_Cache[index].x, CS947U_Cache[index].z, CS947U_Cache[index].tile);
        OvlFunc_947_200901c(2, entry->x, CS947U_Cache[index].z, CS947U_Cache[index].tile);
        if (*motionFlags & 1) {
            if (CS947U_TileType(2, actor->pos.x, actor->pos.z) == 50) {
                API_PlaySound(0xbd);
                flags = &actor->flags;
                *flags &= 0xfe;
                OvlFunc_947_2009074(id, 1);
                CS947U_StoreByte(flags, *flags | 1);
            } else if (CS947U_TileType(2, actor->pos.x, actor->pos.z) == 51) {
                OvlFunc_947_2008da8((unsigned int)actor, 0);
                API_PlaySound(0xbd);
                actor->pos.y = 0;
                flags = &actor->flags;
                *flags &= 0xfe;
                OvlFunc_947_2009174(id);
                actor->pos.x = 0;
                actor->pos.y = 0;
                actor->pos.z = 0;
                CS947U_StoreByte(flags, *flags | 1);
            } else {
                OvlFunc_947_2008d78((unsigned int)actor);
            }
            *motionFlags = 0;
        }
        OvlFunc_947_2008fcc(0, actor->pos.x >> 20, actor->pos.z >> 20, CS947U_Cache[index].tile);
        if (actor->pos.y >= 0) {
            OvlFunc_947_2008fcc(0, 27, (actor->pos.y >> 20) + 6, &tile);
            OvlFunc_947_200901c(0, actor->pos.x >> 20, actor->pos.z >> 20, (unsigned char *)&tile);
            CS947U_StoreByte((unsigned char *)&tile + 1, ((entry->tile[1] >> 6) << 6) | (((unsigned char *)&tile)[1] & 0x3f));
            OvlFunc_947_200901c(2, actor->pos.x >> 20, actor->pos.z >> 20, (unsigned char *)&tile);
        }
        CS947U_Cache[index].x = actor->pos.x >> 20;
        CS947U_Cache[index].y = actor->pos.y >> 20;
        CS947U_Cache[index].z = actor->pos.z >> 20;
        for (j = 0; j <= 3; j++) {
            if (j != index) {
                API_ClearFlag(CS947U_Cache[j].flag);
                other = CS947U_Actor(j + 8);
                if ((actor->pos.x >> 20) == (other->pos.x >> 20) &&
                    (actor->pos.z >> 20) == (other->pos.z >> 20) &&
                    actor->pos.y > other->pos.y)
                    API_SetFlag(CS947U_Cache[j].flag);
            }
        }
    }
    OvlFunc_947_2009be8();
}
