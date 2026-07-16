typedef unsigned char u8;
typedef unsigned short u16;

typedef struct Actor {
    u8 pad0[6];
    u16 angle;
    int x;
    int y;
    int z;
    u8 pad14[4];
    int field18;
    int field1c;
    u8 pad20[4];
    int field24;
    int field28;
    int field2c;
    int field30;
    int field34;
    int field38;
    int field3c;
    int field40;
    u8 pad44[4];
    int field48;
    u8 pad4c[9];
    u8 field55;
} Actor;

extern void __PlaySound(int);
extern void __WaitFrames(int);
extern Actor *__CreateActor(int, int, int, int);
extern void __Actor_SetSpriteFlags(Actor *, int);
extern void __Actor_SetScript(Actor *, const void *);
extern const u8 gScript_883__0200e6e4[];
extern int __Random(void);
extern void OvlFunc_883_200d8f0(Actor *, int, int);

void OvlFunc_883_200d7fc(Actor *actor)
{
    int i;

    __PlaySound(0x9a);
    for (i = 0x1e; i >= 0; i--) {
        actor->y += 0x10000;
        actor->angle += 0x2000;
        actor->field18 -= 0x800;
        actor->field1c -= 0x800;
        __WaitFrames(1);
    }

    for (i = 7; i >= 0; i--) {
        Actor *created;

        created = __CreateActor(0x11d, actor->x, actor->y, actor->z);
        if (created) {
            int random;
            int value;

            __Actor_SetSpriteFlags(created, 0);
            __Actor_SetScript(created, gScript_883__0200e6e4);
            created->field30 = __Random() + 0x10000;
            created->field34 = 0x10000;
            created->field55 = 2;
            created->field48 = 0xa3d;
            value = __Random();
            value -= __Random();
            created->field28 = value;
            random = __Random();
            value = random << 1;
            value += random;
            value <<= 3;
            value += 0x80000;
            OvlFunc_883_200d8f0(created, value, __Random());
        }
    }

    __PlaySound(0x83);
    actor->x = 0;
    actor->y = 0;
    actor->z = 0;
    actor->field38 = 0x80000000;
    actor->field3c = 0x80000000;
    actor->field40 = 0x80000000;
    actor->field24 = 0;
    actor->field28 = 0;
    actor->field2c = 0;
}
