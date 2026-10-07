extern unsigned char *__MapActor_GetActor(unsigned int);
extern void __MapActor_TravelBy(unsigned int, int, int);
void __MapActor_WaitMovement(unsigned int);
void __MapActor_SetSpeed(unsigned int, int, int);
extern void __Func_8010704(unsigned int, unsigned int, unsigned int, unsigned int, unsigned int, unsigned int);
extern void __Actor_SetSpriteFlags(void *, int);
extern void __Func_8092950(int, int);
extern void __Func_800c548(void *, int);
extern unsigned int __Random(void);
extern void OvlFunc_905_2008bd0(void);
extern void OvlFunc_905_2008a68(int, int, int, int, int, int, int);

void OvlFunc_905_2008ce0(void)
{
    int x;
    int px;
    unsigned char *a;
    int pz;
    int r;
    int t;
    int vy;
    int vz;
    int t5;
    int t6;

    x = *(int *)(__MapActor_GetActor(9) + 8);
    if (x < 0) {
        x += 0xfffff;
    }
    x >>= 20;
    API_CutsceneStart();
    if (x == 0x19) {
        ((struct Actor *)__MapActor_GetActor(11))->layer = 1;
        __Actor_SetSpriteFlags(__MapActor_GetActor(11), 0);
        __Func_8092950(11, 14);
        __Func_800c548(__MapActor_GetActor(11), 1);
        API_MapActor_SetPos(11, 0xcf << 17, 0xf0 << 16);
        API_CutsceneWait(10);
        API_StartTask(OvlFunc_905_2008bd0, 0xc80);
        API_PlaySound(0x8d);
        __MapActor_TravelBy(9, 1, 0);
        __MapActor_WaitMovement(9);
        API_CutsceneWait(10);
        __MapActor_TravelBy(9, 2, 0);
        __MapActor_WaitMovement(9);
        ((struct Actor *)__MapActor_GetActor(9))->bounce = 0;
        ((struct Actor *)__MapActor_GetActor(9))->gravity = 0x9999;
        API_CutsceneWait(3);
        __MapActor_SetSpeed(9, 0x28000, 0x4000);
        API_PlaySound(0x120);
        API_MapActor_TravelTo(9, 0x1a0, 0xc8);
        __Actor_SetSpriteFlags(__MapActor_GetActor(9), 0);
        API_StopTask(OvlFunc_905_2008bd0);
        API_CutsceneWait(12);
        API_PlaySound(0xbd);

        px = ((struct Actor *)__MapActor_GetActor(9))->pos.x
           + (((__Random() * 12) >> 16) << 16);
        a = __MapActor_GetActor(9);
        pz = ((struct Actor *)__MapActor_GetActor(9))->pos.z + 0x60000;
        r = (__Random() * 5) >> 16;
        t = r * 13;
        t = t * 63;
        vy = -((t << 3) + r);
        vz = (__Random() * 2) >> 16;
        OvlFunc_905_2008a68(px, ((struct Actor *)a)->pos.y, pz, 0, vy, vz, 0);

        API_CutsceneWait(20);
        API_PlaySound(0x9a);
        API_Func_8012330(0x50000, 0x50000, 0x10000);
        API_Func_8012330(-1, -1, 0xe666);
        API_Func_8012350();
        API_MapActor_SetPos(9, 0, 0);
        API_MapActor_SetPos(11, 0, 0);
        API_SetFlag(0x300);
        t5 = 0x15;
        t6 = 0xb;
        __Func_8010704(0x15, 0x2d, 4, 2, t5, t6);
    }
    API_CutsceneEnd();
}
