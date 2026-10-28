struct PuzzleOrbit957 { short phase, timer, unused, angle, speed, soundAngle; };
extern struct PuzzleOrbit957 *PuzzleOrbit957 __asm__(".Lm957_3f6c");
extern unsigned char PuzzleBytes957[] __asm__("ewram_2001001");
extern unsigned char PuzzleCount957 __asm__("ewram_2001000");
extern int PuzzleActor957(int) __asm__("__MapActor_GetActor");
extern int PuzzleDivide957(int, int) __asm__("_divsi3_RAM");
extern int PuzzleModulo957(int, int) __asm__("_modsi3_RAM");
extern void OvlFunc_957_2008f10(int, int, int);
extern void OvlFunc_957_2008f94(void);
extern void OvlFunc_957_200bad4(void);
extern void __Func_808e118(void);
extern unsigned int PuzzleRandom957(void) __asm__("__Random");
static inline void PuzzleShake957(int x, int y, int speed) { extern void __Func_8012330(int, int, int); __Func_8012330(x, y, speed); }

void OvlFunc_957_200909c(int selectedActor)
{
    int advance = 0;
    int i, actorId, scale, radius;
    unsigned int state, oldTarget, count;
    int target;
    int angle;
    unsigned int facing;
    struct Actor *actor;
    struct PuzzleOrbit957 *orbit;

    API_CutsceneStart();
    __Func_808e118();
    API_MessageID(0x21db);
    API_ActorMessage(16, 0);
    API_CutsceneEnd();
    for (i = 0; i <= 4; i++) {
        actor = (struct Actor *)PuzzleActor957(i + 11);
        actor->update = 0;
        actor->scale.x = 0x10000;
        actor->scale.y = 0x10000;
    }
    state = PuzzleBytes957[0];
    target = (signed char)PuzzleBytes957[1];
    orbit = PuzzleOrbit957;
    oldTarget = PuzzleBytes957[1];
    orbit->angle = PuzzleDivide957(target * 0x10000, 5) + 0x4000;
    if ((signed char)state == 0) {
        if (selectedActor == 16) {
            state = 1;
            API_PlaySound(0x6e);
        } else API_PlaySound(0x72);
        PuzzleCount957 = 0;
    } else if ((signed char)state == 1) {
        if (selectedActor == 16) {
            API_PlaySound(0x6e);
        } else if (selectedActor == 20) {
            state = 2;
            API_PlaySound(0x6e);
            API_WaitFrames(30);
            angle = PuzzleOrbit957->angle;
            for (i = 0; i <= 4; i++) {
                actorId = i + 11;
                facing = (unsigned short)angle;
                OvlFunc_957_2008f10(actorId, 0x180000, facing);
                API_PlaySound(0x97);
                actor = (struct Actor *)PuzzleActor957(actorId);
                actor->scale.x = 0;
                scale = 0x6666;
                do {
                    actor->scale.y = scale;
                    actor->scale.x = scale;
                    API_WaitFrames(1);
                    scale += 0xc00;
                } while (actor->scale.x <= 0xffff);
                angle = (short)(facing - 0x3333);
            }
            API_WaitFrames(30);
            advance = 1;
        } else {
            API_PlaySound(0x72);
            state = 0;
        }
    } else if ((signed char)state == 2) {
        if (selectedActor != target + 16) {
            state = 0;
            API_PlaySound(0x72);
            API_WaitFrames(30);
            for (i = 0; i <= 4; i++) {
                actorId = i + 11;
                actor = (struct Actor *)PuzzleActor957(actorId);
                API_PlaySound(0x97);
                scale = actor->scale.x;
                if (scale > 0x6666) {
                    do {
                        actor->scale.y = scale;
                        actor->scale.x = scale;
                        API_WaitFrames(1);
                        scale -= 0xc00;
                    } while (actor->scale.x > 0x6666);
                }
                API_MapActor_SetPos(actorId, 0, 0);
            }
        } else {
            API_PlaySound(0x6e);
            advance = 1;
            API_WaitFrames(30);
        }
    }
    PuzzleBytes957[0] = state;
    if (advance != 0) {
        { unsigned char *counter = PuzzleBytes957 - 1;
          count = *counter + 1;
          *counter = count; }
        target = (signed char)(((PuzzleRandom957() << 2) >> 16) + oldTarget + 1);
        PuzzleBytes957[1] = PuzzleModulo957(target + 5, 5);
        orbit = PuzzleOrbit957;
        orbit->phase = 0;
        orbit->timer = 0;
        orbit->speed = 0x200;
        orbit->soundAngle = 0x3000;
        API_StartTask(OvlFunc_957_2008f94, 0xc80);
        if ((unsigned char)count <= 2) {
            while (PuzzleOrbit957->phase != 99) API_WaitFrames(1);
            API_WaitFrames(10);
            API_PlaySound(0x6e);
        } else {
            PuzzleBytes957[0] = 99;
            while (PuzzleOrbit957->phase != 2) API_WaitFrames(1);
            orbit = PuzzleOrbit957;
            orbit->phase = 2;
            orbit->timer = 0;
            PuzzleShake957(0x20000, 0x20000, 0x10000);
            API_CutsceneWait(20);
            PuzzleShake957(0x40000, 0x40000, 0x10000);
            PuzzleOrbit957->phase = 99;
            API_PlaySound(0xbe);
            radius = 0x180000;
            angle = PuzzleOrbit957->angle;
            do {
                for (i = 0; i <= 4; i++) {
                    actorId = i + 11;
                    actor = (struct Actor *)PuzzleActor957(actorId);
                    actor->scale.x -= 16;
                    actor->scale.y -= 16;
                    facing = (unsigned short)angle;
                    OvlFunc_957_2008f10(actorId, radius, facing);
                    angle = (short)(facing - 0x3333);
                }
                angle = (short)((unsigned short)angle + 0xc00);
                radius -= 0x3333;
                API_WaitFrames(1);
            } while (radius > 0);
            for (i = 0; i <= 4; i++) API_MapActor_SetPos(i + 11, 0, 0);
            OvlFunc_957_200bad4();
            API_PlaySound(0x50);
        }
        API_StopTask(OvlFunc_957_2008f94);
    }
}
