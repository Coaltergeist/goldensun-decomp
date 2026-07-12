typedef void (*ActorAttrFunc)(unsigned char *, int, unsigned int);

extern ActorAttrFunc Data_80136e0[];

#define DEFINE_ACTOR_ATTR_COMMAND(name, mode)                              \
    int name(unsigned char *actor) {                                      \
        unsigned int *command;                                            \
        register ActorAttrFunc callback asm("r3");                       \
        register unsigned int position asm("r0");                        \
                                                                          \
        command = (unsigned int *)(*(unsigned int *)actor +                \
                                   *(short *)(actor + 4) * 4 + 4);        \
        callback = Data_80136e0[command[0]];                              \
        asm("" : "+r"(callback));                                       \
        position = *(unsigned short *)(actor + 4);                         \
        asm("" : "+r"(position) : "r"(callback));                       \
        if (callback != 0) {                                              \
            callback(actor, mode, command[1]);                            \
            position = *(unsigned short *)(actor + 4);                     \
            asm("" : "+r"(position));                                   \
        }                                                                 \
        {                                                                 \
            register unsigned int next asm("r3") = position + 3;          \
            asm("" : "+r"(next));                                       \
            *(unsigned short *)(actor + 4) = next;                         \
        }                                                                 \
        return 1;                                                         \
    }

DEFINE_ACTOR_ATTR_COMMAND(ActorCmd_SetAttr, 0)
DEFINE_ACTOR_ATTR_COMMAND(ActorCmd_IncAttr, 1)
DEFINE_ACTOR_ATTR_COMMAND(ActorCmd_CmpAttr, 2)
