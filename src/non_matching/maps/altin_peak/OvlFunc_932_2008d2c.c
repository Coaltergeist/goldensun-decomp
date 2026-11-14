/* Exact section size match (0x194 bytes); remaining diff:
 * 1) r9 vs fp swap between baseX and hoisted 0x8000 constant
 * 2) at +0xe0..+0xe4: adds r7, r3, #0 ; lsrs r2, r7, #16 vs lsrs r2, r3, #16 ; adds r7, r3, #0
 *    (computing step directly from speed triggers GCSE PRE hoisting speed >> 16 = 8 before loop 3)
 */
extern int __cos(int);
extern int __sin(int);
extern void OvlFunc_932_2008ec0(int);

void OvlFunc_932_2008d2c(void)
{
    struct Actor *actor;
    struct Sprite *sprite;
    int baseY, baseX;
    unsigned int speed, nextSpeed, step;
    int cosine, sine;

    actor = (struct Actor *)__MapActor_GetActor(10);
    baseX = actor->pos.x;
    sprite = actor->sprite;
    baseY = actor->pos.y;
    __CutsceneStart();
    __PlaySound(0x8d);
    API_Func_8012330(0x20000, 0x10000, 0x10000);
    __CutsceneWait(10);
    __PlaySound(0x121);
    API_Func_8012330(-1, -1, 0xe666);
    __CutsceneWait(20);
    speed = 0;
    while (1) {
        int rot = sprite->rotation;
        speed += 0x80000;
        sprite->rotation = (speed >> 16) + rot;
        cosine = __cos(sprite->rotation + 0x4000);
        actor->pos.x = baseX + cosine * 16;
        if (sprite->rotation > 0x8fff)
            break;
        __WaitFrames(1);
    }
    speed = 0;
    while (1) {
        speed += 0x80000;
        sprite->rotation -= speed >> 16;
        cosine = __cos(sprite->rotation + 0x4000);
        actor->pos.x = baseX + cosine * 16;
        if (sprite->rotation <= 0x7000)
            break;
        __WaitFrames(1);
    }
    speed = 0x80000;
    while (1) {
        nextSpeed = ((speed >> 16) + (speed >> 19)) << 16;
        step = nextSpeed >> 16;
        speed = nextSpeed;
        sprite->rotation += step;
        cosine = __cos(sprite->rotation + 0x4000);
        sine = __sin(sprite->rotation + 0x8000);
        actor->pos.x = baseX + cosine * 16;
        if (sprite->rotation > 0x8000)
            actor->pos.y = baseY - sine * 8;
        if ((int)sprite->rotation + (int)step > 0xbfff)
            break;
        __WaitFrames(1);
    }
    __WaitFrames(1);
    sprite->rotation = 0xc000;
    __PlaySound(0xb7);
    API_Func_8012330(0x30000, 0x30000, 0x10000);
    __CutsceneWait(20);
    __PlaySound(0x121);
    API_Func_8012330(-1, -1, 0xe666);
    OvlFunc_932_2008ec0(5);
    __CutsceneEnd();
}
