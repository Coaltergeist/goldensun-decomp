extern int *GetBattleActor(unsigned int unit) __asm__("_GetBattleActor");
extern void ActorStop(unsigned char *actor) __asm__("_Actor_Stop");
extern void ActorTravelTo(unsigned char *actor, int x, int y, int z)
    __asm__("_Actor_TravelTo");
extern void ActorSetAnim(unsigned char *actor, int animation)
    __asm__("_Actor_SetAnim");

void Func_80df8b8(unsigned int unit)
{
    int *battle = GetBattleActor(unit);
    unsigned char *actor = (unsigned char *)battle[0];

    *(int *)(actor + 0x34) = 0x80 << 10;
    *(int *)(actor + 0x30) = 0x80 << 12;
    *(int *)(actor + 0x28) = 0x80 << 11;
    *(int *)(actor + 0x48) = 0xab85;
    *(int *)(actor + 0x44) = 0;
    actor[0x5a] = 0;
    actor[0x58] = 1;
    ActorStop(actor);
    ActorTravelTo(actor, battle[3], 0, battle[4]);
    ActorSetAnim(actor, 1);
}
