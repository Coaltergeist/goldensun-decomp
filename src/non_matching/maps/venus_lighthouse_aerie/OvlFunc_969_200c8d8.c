static inline void CS969B_API_CopyMapTiles(int a, int b, int c, int d, int e, int f) { extern void CS969B__CopyMapTiles(int, int, int, int, int, int) __asm__("__CopyMapTiles"); CS969B__CopyMapTiles(a, b, c, d, e, f); }
static inline void CS969B_API_Func_8010704(int a, int b, int c, int d, int e, int f) { extern void CS969B__Func_8010704(int, int, int, int, int, int) __asm__("__Func_8010704"); CS969B__Func_8010704(a, b, c, d, e, f); }
static inline void CS969B_API_Func_8012330(int a, int b, int c) { extern void CS969B__Func_8012330(int, int, int) __asm__("__Func_8012330"); CS969B__Func_8012330(a,b,c); }
static inline void CS969B_API_Func_8091200(int a0,int a1) { extern void CS969B__Func_8091200(int, int) __asm__("__Func_8091200"); CS969B__Func_8091200(a0,a1); }
static inline void CS969B_API_Func_8091220(int a0,int a1) { extern void CS969B__Func_8091220(int, int) __asm__("__Func_8091220"); CS969B__Func_8091220(a0,a1); }
static inline void CS969B_API_Func_8091254(int a0) { extern void CS969B__Func_8091254(int) __asm__("__Func_8091254"); CS969B__Func_8091254(a0); }
static inline void CS969B_API_Func_80933f8(int a0,int a1,int a2,int a3) { extern void CS969B__Func_80933f8(int, int, int, int) __asm__("__Func_80933f8"); CS969B__Func_80933f8(a0,a1,a2,a3); }
static inline void CS969B_API_MapActor_SetAnim(int a0,int a1) { extern void CS969B__MapActor_SetAnim(int, int) __asm__("__MapActor_SetAnim"); CS969B__MapActor_SetAnim(a0,a1); }
static inline void CS969B_API_MapTransitionIn(void) { extern void CS969B__MapTransitionIn(void) __asm__("__MapTransitionIn"); CS969B__MapTransitionIn(); }
static inline void CS969B_API_PlaySound(int a) { extern void CS969B__PlaySound(int a) __asm__("__PlaySound"); CS969B__PlaySound(a); }
static inline int CS969B_API_StartTask(void (*task)(void), unsigned int priority) { extern int CS969B__StartTask(void (*)(void), unsigned int) __asm__("__StartTask"); return CS969B__StartTask(task, priority); }
static inline void CS969B_API_WaitFrames(int a0) { extern void CS969B__WaitFrames(int) __asm__("__WaitFrames"); CS969B__WaitFrames(a0); }
extern void CS969B_Delete(int) __asm__("__DeleteFieldActor");
extern struct Actor *CS969B_Actor(int) __asm__("__MapActor_GetActor");
extern void CS969B_SpriteFlags(struct Actor *, int) __asm__("__Actor_SetSpriteFlags");
extern void CS969B_UpdateCamera(void) __asm__("__Func_808bb2c");
extern void CS969B_Refresh(void) __asm__("__Func_800fe9c");
extern void CS969B_ActorFlags(int, int) __asm__("__Func_8092950");
extern unsigned char *CS969B_Scene __asm__("iwram_3001ebc");
extern void OvlFunc_969_200d688(unsigned int);
extern void OvlFunc_969_200da28(void);
void OvlFunc_969_200c8d8(void)
{
    struct Actor *actor;
    CS969B_Delete(20);
    CS969B_Delete(19);
    CS969B_API_PlaySound(0x8d);
    CS969B_API_Func_8010704(17, 10, 4, 2, 17, 8);
    CS969B_API_CopyMapTiles(0x66, 4, 0x4a, 4, 18, 23);
    CS969B_API_CopyMapTiles(39, 72, 11, 72, 16, 21);
    CS969B_API_Func_8010704(19, 6, 3, 7, 22, 6);
    CS969B_API_Func_8010704(19, 6, 3, 7, 13, 6);
    CS969B_API_Func_8010704(19, 6, 3, 7, 22, 13);
    CS969B_API_Func_8010704(19, 6, 3, 7, 13, 13);
    CS969B_API_Func_8012330(0x20000, 0x20000, 0x10000);
    CS969B_API_Func_80933f8(-1, -1, -1, 0);
    CS969B_UpdateCamera();
    CS969B_Refresh();
    CS969B_API_WaitFrames(1);
    CS969B_API_PlaySound(0x8a);
    CS969B_API_MapActor_SetAnim(0, 19);
    CS969B_API_MapActor_SetAnim(1, 18);
    CS969B_API_MapActor_SetAnim(2, 18);
    CS969B_API_MapActor_SetAnim(3, 18);
    CS969B_SpriteFlags(CS969B_Actor(0), 0);
    CS969B_SpriteFlags(CS969B_Actor(1), 0);
    CS969B_SpriteFlags(CS969B_Actor(2), 0);
    CS969B_SpriteFlags(CS969B_Actor(3), 0);
    actor = CS969B_Actor(0);
    actor->pos.x = 0x15a0000;
    actor->pos.y = 0x200000;
    actor->pos.z = 0xcd0000;
    OvlFunc_969_200d688((unsigned int)actor);
    actor->__unk63 = 0;
    actor->motion.y = 0x20000;
    actor = CS969B_Actor(1);
    actor->pos.x = 0x1640000;
    actor->pos.y = 0x200000;
    actor->pos.z = 0xc00000;
    OvlFunc_969_200d688((unsigned int)actor);
    actor->__unk63 = 0;
    actor->motion.y = 0x20000;
    actor = CS969B_Actor(2);
    actor->pos.x = 0x1680000;
    actor->pos.y = 0x200000;
    actor->pos.z = 0xde0000;
    OvlFunc_969_200d688((unsigned int)actor);
    actor->__unk63 = 0;
    actor->motion.y = 0x20000;
    actor = CS969B_Actor(3);
    actor->pos.x = 0x14e0000;
    actor->pos.z = 0xde0000;
    actor->pos.y = 0x200000;
    OvlFunc_969_200d688((unsigned int)actor);
    actor->__unk63 = 0;
    actor->motion.y = 0x20000;
    CS969B_Actor(21)->__unk62 = 0;
    CS969B_Actor(6)->__unk62 = 0;
    CS969B_Actor(23)->__unk55 |= 4;
    CS969B_ActorFlags(23, 4);
    CS969B_API_StartTask(OvlFunc_969_200da28, 0xc80);
    *(int *)(CS969B_Scene + 0x1c8) = 1;
    CS969B_API_MapTransitionIn();
    CS969B_API_Func_8091220(0x7fff, 0);
    CS969B_API_Func_8091200(0x10000, 0);
    CS969B_API_Func_8091254(40);
    CS969B_API_WaitFrames(60);
}
