extern void *__galloc_ewram(u32, u32);
extern void *__MapActor_GetActor(int);
extern void __Func_800c548(struct Actor *, int);
extern const int Lm896_5140[] __asm__(".Lm896_5140");
extern const int Lm896_5168[] __asm__(".Lm896_5168");
extern void OvlFunc_896_200c49c(void);
extern int __StartTask(void (*)(void), unsigned int);

struct DmaTransfer {
    const void *src;
    void *dest;
    u32 cnt;
};

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
    u32 zero;
    struct TaskData *taskData;
    struct TaskDataEntry *entry;
    struct DmaTransfer dma;
    u32 i;
    u32 clear;

    taskData = (struct TaskData *)__galloc_ewram(0x21, sizeof(struct TaskData));
    zero = 0;
    entry = taskData->entries;
    dma.src = &zero;
    dma.dest = taskData;
    dma.cnt = 0x85000065;
    *(struct DmaTransfer *)0x040000d4 = dma;

    if (count > 10) {
        count = 10;
    }

    clear = 0;
    for (i = 0; i < count; i++, actorId++, entry++) {
        struct Actor *actor = (struct Actor *)__MapActor_GetActor(actorId);
        entry->actor = actor;
        actor->sprite->flags = clear;
        actor->__unk55 = clear;
        __Func_800c548(__MapActor_GetActor(actorId), 1);
        entry->unk1c = Lm896_5140[i];
        entry->unk20 = -Lm896_5168[i];
        entry->unk24 = 3;
    }

    taskData->count = count;
    __StartTask(OvlFunc_896_200c49c, 0xc80);
}
