struct CS968_DustData {
    unsigned int unused[8];
    unsigned short rotation;
    unsigned short angularVelocity;
    unsigned int callback;
};
struct CS968_StateView { unsigned char pad[0x1f4]; int actorId; };
extern struct CS968_StateView CS968_State __asm__("gState");
extern unsigned char *CS968_Scene __asm__("iwram_3001ebc");
extern unsigned int CS968_FrameFlags __asm__("iwram_3001e40");
extern struct Actor *CS968_Actor(int) __asm__("__MapActor_GetActor");
extern int CS968_Collision(struct Actor *, vec3_t *) __asm__("__TestCollision");
extern unsigned int __Random(void);
extern void CS968_Travel(struct Actor *, int, int, int) __asm__("__Actor_TravelTo");
extern void CS968_Anim(struct Actor *, int) __asm__("__Actor_SetAnim");
extern void CS968_WaitMovement(struct Actor *) __asm__("__Actor_WaitMovement");
void OvlFunc_968_200c048(unsigned int directionAddress)
{
    unsigned int *direction = (unsigned int *)directionAddress;
    unsigned char *scene = CS968_Scene;
    int actorId = CS968_State.actorId;
    struct Actor *other = *(struct Actor **)(scene + 0x1e0);
    struct Actor *actor = CS968_Actor(actorId);
    vec3_t probe;
    struct CS968_DustData data;
    int collision;
    unsigned int skipDust;
    unsigned int x, vx, vz, dx, dz;

    probe.x = actor->pos.x + direction[0] * 0x18000;
    probe.y = actor->pos.y;
    probe.z = actor->pos.z + direction[2] * 0x18000;
    collision = CS968_Collision(actor, &probe);
    skipDust = CS968_FrameFlags & 4;
    if (!skipDust) {
        data.angularVelocity = ((__Random() << 12) >> 16) + 0xf800;
        x = actor->pos.x + ((__Random() * 12 >> 16) << 16) - 0x60000;
        vx = ((__Random() * 5 >> 16) * 0x1999 + 0x7ffd) * direction[0];
        vz = ((__Random() * 5 >> 16) * 0x1999 + 0x7ffd) * direction[2];
        OvlFunc_968_2008118(x, actor->pos.y, actor->pos.z, vx, 0, vz, 0x800000, &data);
    }
    if (collision < 0) {
        API_MapActor_Surprise(actorId, 0x102);
        CS968_Travel(actor, actor->pos.x, actor->pos.y, actor->pos.z + 0x80000);
        CS968_Anim(actor, 7);
        CS968_WaitMovement(actor);
        do { API_WaitFrames(1); } while (actor->pos.y != actor->floorPos);
        CS968_Anim(actor, 6);
        API_WaitFrames(3);
    } else {
        probe.x = actor->pos.x + (direction[0] << 19);
        probe.y = actor->pos.y;
        probe.z = actor->pos.z + (direction[2] << 19);
        collision = CS968_Collision(actor, &probe);
        if (collision <= 0) {
            probe.x = actor->pos.x + (dx = direction[0] * 0x5b333) - (dz = direction[2] * 0x5b333);
            probe.y = actor->pos.y;
            probe.z = actor->pos.z + dz - dx;
            collision = CS968_Collision(actor, &probe);
            if (collision > 0) {
                actor->pos.x += direction[2] * 0x18000;
                actor->pos.z += direction[0] * 0x18000;
            } else {
                unsigned int diagonal = (direction[0] + direction[2]) * 0x5b333;
                probe.x = diagonal + actor->pos.x;
                probe.y = actor->pos.y;
                probe.z = diagonal + actor->pos.z;
                collision = CS968_Collision(actor, &probe);
                if (collision > 0) {
                    actor->pos.x -= direction[2] * 0x18000;
                    actor->pos.z -= direction[0] * 0x18000;
                } else {
                    other->pos.x += direction[0] * 0x18000;
                    actor->pos.x += direction[0] * 0x18000;
                    other->pos.z += direction[2] * 0x18000;
                    actor->pos.z += direction[2] * 0x18000;
                }
            }
        }
    }
}
