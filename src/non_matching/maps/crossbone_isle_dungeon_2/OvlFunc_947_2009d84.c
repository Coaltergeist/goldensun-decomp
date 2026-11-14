// Remaining diff: proven 100% byte-for-byte match under `-fstrict-aliasing`; under
// `-fno-strict-aliasing`, `strb r3, [r0, #1]` (`tile.f2`) has alias set 0 and blocks
// sched2 from hoisting `ldr r1, [r6, #8]; ldr r2, [r6, #16]` above `strb` at +0x194.
struct Tile947 {
    u16 id : 12;
    u16 f1 : 2;
    u16 f2 : 2;
    u8 f3;
    u8 f4;
};

struct CS947S_Record { int x, y, z; struct Tile947 tile; int flag; };
extern struct CS947S_Record CS947S_Records[] __asm__("bss_36d0");
extern vec3_t CS947U_Probe __asm__(".Lm947_3720");

void OvlFunc_947_2009d84(void)
{
    extern int __Func_8012038(int, int, int);
    struct Actor *actor, *other;
    unsigned int id, index, j;
    struct Tile947 tile;
    for (id = 8; id <= 11; id++) {
        actor = (struct Actor *)__MapActor_GetActor(id);
        actor->layer = 2;
        index = id - 8;
        if ((actor->pos.x >> 20) == CS947S_Records[index].x &&
            (actor->pos.z >> 20) == CS947S_Records[index].z && actor->motion.y == 0)
            continue;
        DMA3_SET(&actor->pos, &CS947U_Probe, 0x84000003);
        WaitForDma3();
        if (__TestCollision(actor, (int *)&CS947U_Probe) == -1)
            actor->__unk55 = 3;
        OvlFunc_947_200901c(0, CS947S_Records[index].x, CS947S_Records[index].z, (unsigned char *)&CS947S_Records[index].tile);
        OvlFunc_947_200901c(2, CS947S_Records[index].x, CS947S_Records[index].z, (unsigned char *)&CS947S_Records[index].tile);
        if (actor->__unk55 & 1) {
            if (__Func_8012038(2, actor->pos.x, actor->pos.z) == 50) {
                API_PlaySound(0xbd);
                actor->flags &= ~1;
                OvlFunc_947_2009074(id, 1);
                actor->flags |= 1;
            } else if (__Func_8012038(2, actor->pos.x, actor->pos.z) == 51) {
                OvlFunc_947_2008da8((unsigned int)actor, 0);
                API_PlaySound(0xbd);
                actor->pos.y = 0;
                actor->flags &= ~1;
                OvlFunc_947_2009174(id);
                actor->pos.x = 0;
                actor->pos.y = 0;
                actor->pos.z = 0;
                actor->flags |= 1;
            } else {
                OvlFunc_947_2008d78((unsigned int)actor);
            }
            actor->__unk55 = 0;
        }
        OvlFunc_947_2008fcc(0, actor->pos.x >> 20, actor->pos.z >> 20, &CS947S_Records[index].tile);
        if (actor->pos.y >= 0) {
            OvlFunc_947_2008fcc(0, 27, (actor->pos.y >> 20) + 6, &tile);
            OvlFunc_947_200901c(0, actor->pos.x >> 20, actor->pos.z >> 20, (unsigned char *)&tile);
            tile.f2 = CS947S_Records[index].tile.f2;
            OvlFunc_947_200901c(2, actor->pos.x >> 20, actor->pos.z >> 20, (unsigned char *)&tile);
        }
        CS947S_Records[index].x = actor->pos.x >> 20;
        CS947S_Records[index].y = actor->pos.y >> 20;
        CS947S_Records[index].z = actor->pos.z >> 20;
        for (j = 0; j <= 3; j++) {
            if (j != index) {
                API_ClearFlag(CS947S_Records[j].flag);
                other = (struct Actor *)__MapActor_GetActor(j + 8);
                if ((actor->pos.x >> 20) == (other->pos.x >> 20) &&
                    (actor->pos.z >> 20) == (other->pos.z >> 20) &&
                    actor->pos.y > other->pos.y)
                    API_SetFlag(CS947S_Records[j].flag);
            }
        }
    }
    OvlFunc_947_2009be8();
}
