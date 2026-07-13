typedef struct MapActor {
    unsigned char padding[0x30];
    int movement_speed;
    int secondary_speed;
    unsigned char padding_38[0x1d];
    unsigned char state;
} MapActor;

extern MapActor *__MapActor_GetActor(int actor_id);
extern void __Actor_SetAnim(MapActor *actor, int animation);
extern void __Actor_SetScript(MapActor *actor, void *script);
extern void __SetFlag(int flag);
extern unsigned char actor_script[] asm("gScript_956__0200cc48");

void OvlFunc_956_2008a44(void)
{
    MapActor *actor = __MapActor_GetActor(0x1e);

    actor->state = 0;
    actor->secondary_speed = 0x19999;
    actor->movement_speed = 0x19999;
    __Actor_SetAnim(actor, 2);
    __Actor_SetScript(actor, actor_script);
    __SetFlag(0x363);
}
