typedef struct MapActor {
    unsigned char padding00[8];
    unsigned int x;
    unsigned int y;
    unsigned int z;
    unsigned int spriteY;
    unsigned char padding18[0x3d];
    unsigned char state;
} MapActor;

extern MapActor *__MapActor_GetActor(int actor);
extern int OvlFunc_927_2008cd0(unsigned int *position);
extern void __CutsceneStart(void);
extern void __MapActor_SetAnim(int actor, int animation);
extern void __WaitFrames(int frames);
extern void __CutsceneEnd(void);

void OvlFunc_927_2009078(void)
{
    register MapActor *actor asm("r6");
    register unsigned char *state asm("r7");
    register unsigned int movement asm("r5");
    register unsigned char savedState asm("r8");
    unsigned int position[3];

    actor = __MapActor_GetActor(0);
    state = &actor->state;
    savedState = *state;
    position[0] = (actor->x & 0xfff00000) + 0x80000;
    position[1] = actor->y;
    position[2] = (actor->z & 0xfff00000) + 0x280000;

    if (OvlFunc_927_2008cd0(position) != 0) {
        __CutsceneStart();
        *state = 0;
        __MapActor_SetAnim(9, 7);

        movement = 0xffff0000;
        actor->y += movement;
        actor->spriteY += movement;
        __WaitFrames(2);
        actor->y += movement;
        actor->spriteY += movement;
        __WaitFrames(10);

        movement = 0x10000;
        actor->y += movement;
        actor->spriteY += movement;
        __WaitFrames(4);
        actor->y += movement;
        actor->spriteY += movement;

        *state = savedState;
        __CutsceneEnd();
    }
}
