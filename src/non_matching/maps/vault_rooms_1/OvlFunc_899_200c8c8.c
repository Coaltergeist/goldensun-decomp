extern struct Actor *CS899R_Actor(int) __asm__("__GetFieldActor");
extern unsigned int CS899R_Random(void) __asm__("__Random");
extern int CS899R_Angle(int, int) __asm__("__atan2");
extern void CS899R_Anim(struct Actor *, int) __asm__("__Actor_SetAnim");
extern unsigned char *OvlFunc_899_200c754(unsigned char *, short *);
extern unsigned short CS899R_BlockedFrames __asm__(".Lm899_64f8");
static inline void CS899R_SetFacing(short *p, int value) { *p = value; }
static inline int CS899R_Difference(unsigned short a, unsigned short b) { return a - b; }
void OvlFunc_899_200c8c8(void)
{
    struct Actor *actor;
    unsigned char *scene, *node, *next;
    short facing;
    int dx, dz, angle, blocked;
    {
    struct Actor *leader = CS899R_Actor(0);
    scene = *(unsigned char **)iwram_3001ebc;
    blocked = 0;
    actor = CS899R_Actor(2);
    node = OvlFunc_899_200c704(&actor->pos);
    if (node && actor->prevPos.x == (int)0x80000000) {
        dx = (unsigned int)actor->pos.x - (unsigned int)leader->pos.x;
        dz = (unsigned int)actor->pos.z - (unsigned int)leader->pos.z;
        facing = leader->facing;
        angle = (short)CS899R_Angle(dz, dx);
        dx >>= 16;
        dz >>= 16;
        if (!(*(short *)(scene + 0x19c) > 0 &&
              dx * dx + dz * dz <= 400 &&
              (short)CS899R_Difference(facing, angle) > -0x1000 &&
              (short)CS899R_Difference(facing, angle) < 0x1000)) {
            if (dx * dx + dz * dz > 64)
                facing = actor->facing;
        }
        next = OvlFunc_899_200c754(node, &facing);
        if (!OvlFunc_899_200c840(next)) {
            OvlFunc_899_200c8a4((int)actor, next);
            CS899R_Anim(actor, 2);
        } else {
            CS899R_Anim(actor, 1);
        }
    }
    }
    actor = CS899R_Actor(24);
    node = OvlFunc_899_200c704(&actor->pos);
    if (node && actor->prevPos.x == (int)0x80000000) {
        CS899R_SetFacing(&facing, actor->facing + (unsigned short)(((CS899R_Random() << 1) >> 16) * 0x6000 - 0x3000));
        next = OvlFunc_899_200c754(node, &facing);
        if (OvlFunc_899_200c840(next)) {
            facing = actor->facing + 0x8000;
            next = OvlFunc_899_200c754(node, &facing);
            if (!OvlFunc_899_200c840(next)) {
                API_MapActor_Surprise(24, 2);
            } else {
                CS899R_Anim(actor, 4);
                blocked = 1;
                goto actor25;
            }
        }
        OvlFunc_899_200c8a4((int)actor, next);
        CS899R_Anim(actor, 2);
    }
actor25:
    actor = CS899R_Actor(25);
    node = OvlFunc_899_200c704(&actor->pos);
    if (node && actor->prevPos.x == (int)0x80000000) {
        CS899R_SetFacing(&facing, actor->facing + (unsigned short)(((CS899R_Random() * 3) >> 16) * 0x3000 - 0x3000));
        next = OvlFunc_899_200c754(node, &facing);
        if (OvlFunc_899_200c840(next)) {
            facing = actor->facing + 0x8000;
            next = OvlFunc_899_200c754(node, &facing);
            if (!OvlFunc_899_200c840(next)) {
                API_MapActor_Surprise(25, 2);
            } else {
                CS899R_Anim(actor, 4);
                blocked += 2;
                goto finish;
            }
        }
        OvlFunc_899_200c8a4((int)actor, next);
        CS899R_Anim(actor, 2);
    }
finish:
    if (blocked) {
        if (++CS899R_BlockedFrames > 29)
            *(short *)(scene + 0x182) = blocked + 200;
    } else {
        CS899R_BlockedFrames = blocked;
    }
}
