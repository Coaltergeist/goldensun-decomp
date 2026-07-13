typedef struct FieldActor FieldActor;

extern FieldActor *GetFieldActor(int actorId);
extern void Func_8092878(FieldActor *first, FieldActor *second);
extern void CutsceneWait(int frames);

void Func_8092848(int firstActorId, int secondActorId, int waitFrames)
{
    FieldActor *first = GetFieldActor(firstActorId);
    FieldActor *second = GetFieldActor(secondActorId);

    if (first != 0 && second != 0) {
        Func_8092878(first, second);
        CutsceneWait(waitFrames);
    }
}

asm(".size Func_8092848, 48");
