extern void *__galloc_ewram(u32, u32);
extern struct Actor *__MapActor_GetActor(int);
extern void __Func_800c548(struct Actor *, int);
extern const int Lm896_5140[] __asm__(".Lm896_5140");
extern const int Lm896_5168[] __asm__(".Lm896_5168");
extern void OvlFunc_896_200c49c(void);
extern int __StartTask(void (*)(void), unsigned int);

struct TaskDataEntry {
    struct Actor *actor;
    u8 pad4[0x18];
    int unk1c;
    int unk20;
    u8 unk24;
    u8 pad25[3];
};

struct TaskData {
    struct TaskDataEntry entries[10];
    u16 count;
    u16 pad192;
};

void OvlFunc_896_200c78c(u32 actorId, u32 count)
{
    volatile u32 zero;
    struct TaskData *taskData;
    u32 i;

    taskData = (struct TaskData *)__galloc_ewram(0x21, sizeof(struct TaskData));
    zero = 0;
    *(volatile u32 *)0x040000d4 = (u32)&zero;
    *(volatile u32 *)0x040000d8 = (u32)taskData;
    *(volatile u32 *)0x040000dc = 0x85000065;

    if (count > 10) {
        count = 10;
    }

    for (i = 0; i < count; i++, actorId++) {
        struct Actor *actor = __MapActor_GetActor(actorId);
        taskData->entries[i].actor = actor;
        actor->sprite->flags = 0;
        actor->__unk55 = 0;
        __Func_800c548(__MapActor_GetActor(actorId), 1);
        taskData->entries[i].unk1c = Lm896_5140[i];
        taskData->entries[i].unk20 = -Lm896_5168[i];
        taskData->entries[i].unk24 = 3;
    }

    taskData->count = count;
    __StartTask(OvlFunc_896_200c49c, 0xc80);
}
