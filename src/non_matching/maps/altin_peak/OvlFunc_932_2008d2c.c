extern struct Actor *CS932R_Actor(unsigned int) __asm__("__MapActor_GetActor");
extern int CS932R_Cos(int) __asm__("__cos");
extern int CS932R_Sin(int) __asm__("__sin");
extern void OvlFunc_932_2008ec0(int);
static inline unsigned int CS932R_Accelerate(unsigned int rate) { return ((rate >> 16) + (rate >> 19)) << 16; }
void OvlFunc_932_2008d2c(void)
{
    struct Actor *actor = CS932R_Actor(10);
    int baseY = actor->pos.y;
    int baseX = actor->pos.x;
    struct Sprite *sprite = actor->sprite;
    unsigned int forwardSpeed, backwardSpeed, fallSpeed, step;
    int cosine, sine;
    __CutsceneStart();
    __PlaySound(0x8d);
    API_Func_8012330(0x20000, 0x10000, 0x10000);
    __CutsceneWait(10);
    __PlaySound(0x121);
    API_Func_8012330(-1, -1, 0xe666);
    __CutsceneWait(20);
    forwardSpeed = 0;
forward_swing:
    {
        forwardSpeed += 0x80000;
        sprite->rotation += forwardSpeed >> 16;
        cosine = CS932R_Cos(sprite->rotation + 0x4000);
        actor->pos.x = baseX + cosine * 16;
        if (sprite->rotation > 0x8fff) goto begin_backward;
        __WaitFrames(1);
        goto forward_swing;
    }
begin_backward:
    backwardSpeed = 0;
backward_swing:
    {
        backwardSpeed += 0x80000;
        sprite->rotation -= backwardSpeed >> 16;
        cosine = CS932R_Cos(sprite->rotation + 0x4000);
        actor->pos.x = baseX + cosine * 16;
        if (sprite->rotation <= 0x7000) goto begin_fall;
        __WaitFrames(1);
        goto backward_swing;
    }
begin_fall:
    fallSpeed = 0x80000;
fall:
    {
        fallSpeed = CS932R_Accelerate(fallSpeed);
        step = fallSpeed >> 16;
        sprite->rotation += step;
        cosine = CS932R_Cos(sprite->rotation + 0x4000);
        sine = CS932R_Sin(sprite->rotation + 0x8000);
        actor->pos.x = baseX + cosine * 16;
        if (sprite->rotation > 0x8000) actor->pos.y = baseY - sine * 8;
        if ((int)sprite->rotation + (int)step > 0xbfff) goto finish;
        __WaitFrames(1);
        goto fall;
    }
finish:
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
