struct ActorScriptState {
    int *script;
    signed short commandIndex;
};

unsigned int ActorCmd_SetScript(struct ActorScriptState *actor) {
    actor->script = actor->script + actor->commandIndex + 1;
    actor->commandIndex = 0;
    return 1;
}
