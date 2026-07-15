typedef unsigned char u8;
typedef unsigned int u32;
typedef int s32;

typedef struct MapActor {
    u8 pad00[8];
    s32 x;
    s32 field0c;
    s32 y;
    u8 pad14[0x14];
    s32 field28;
    u8 pad2c[0x1c];
    s32 field48;
    u8 pad4c[0xf];
    u8 field5b;
} MapActor;

extern MapActor *__MapActor_GetActor(int actorId);
extern u32 __Random(void);
extern s32 __GetFlag(int flag);
extern void __PlaySound(int sound);
extern int _umodsi3_RAM(unsigned int a, int b);

extern u32 Counter_222c asm(".L222c");
extern s32 SelectedActor_2230 asm(".L2230");

void OvlFunc_935_2008aa0(void)
{
    MapActor *actor;
    s32 i;
    s32 flag;

    actor = __MapActor_GetActor(10);
    if (actor->field5b != 0)
        return;

    if ((++Counter_222c & 0x3f) == 0) {
        s32 *sel = &SelectedActor_2230;

        *sel = _umodsi3_RAM(__Random(), 6);
        actor = __MapActor_GetActor(*sel + 10);
        actor->field48 = 0xa3d;
    }

    for (i = 0; i <= 5; i++) {
        actor = __MapActor_GetActor(i + 10);
        flag = __GetFlag(i + 0x200);
        if (flag != 0) {
            if (actor->field28 > 0 || actor->field0c <= 0x20ffff) {
                actor->field0c = 0xff0000;
                actor->field48 = 0;
                actor->field28 = 0;
                __PlaySound(0x6a);
            }
        } else {
            if (actor->field28 > 0 || actor->field0c <= 0xffff) {
                actor->field48 = 0;
                actor->field28 = 0;
                actor->field0c = 0xff0000;
                __PlaySound(0x6a);
            }
        }
    }
}
