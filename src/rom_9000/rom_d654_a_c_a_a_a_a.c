struct ScriptActor {
    int (**script)(struct ScriptActor *actor);
    signed short commandIndex;
};

int ActorCmd_CallNative(struct ScriptActor *actor) {
    signed short savedIndex = actor->commandIndex;
    int result = actor->script[savedIndex + 1](actor);

    if (result != 0)
        return 0;
    if (actor->commandIndex == savedIndex)
        actor->commandIndex += 2;
    return 1;
}
