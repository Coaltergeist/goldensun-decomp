extern unsigned char gScript_921__0200a5ec[];
extern void __MapActor_SetBehavior(int actor, void *script);
extern void __ActorMessage(int actor, int message);

void OvlFunc_921_20096ac(void) {
    __MapActor_SetBehavior(9, gScript_921__0200a5ec);
    __ActorMessage(9, 0);
}
