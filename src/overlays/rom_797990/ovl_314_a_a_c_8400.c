typedef unsigned char u8;
typedef unsigned short u16;
typedef signed short s16;

struct FieldWork {
    u8 *saveData;
    u8 _pad04[0x2c];
    u8 *mapData;
};

extern struct FieldWork iwram_3001e8c;
extern u8 *__MapActor_GetActor(int actorId);
extern int OvlFunc_901_2008350(u8 *actor, u8 *target, int command, int option);

/* 相手役を選び、接触時の動作を更新する */
int OvlFunc_901_2008400(u8 *actor)
{
    register struct FieldWork *work asm("r3");
    register u8 *actorReg asm("r5");
    register unsigned int temp asm("r2");
    register u8 *saveData asm("r8");
    register u16 *flags asm("r6");
    register int command asm("r10");
    register u8 *mapData asm("r7");
    register int option asm("r9");
    u8 *target;

    /* GCC 2.96のレジスタ割当と初期化順を保つ */
    work = &iwram_3001e8c;
    asm volatile("" : "+r"(work) : : "memory");
    actorReg = actor;
    asm volatile("" : "+r"(actorReg) : : "memory");
    temp = (unsigned int)work->saveData;
    asm volatile("" : "+r"(temp) : : "memory");
    flags = (u16 *)actorReg;
    asm volatile("" : "+r"(flags) : : "memory");
    saveData = (u8 *)temp;
    asm volatile("" : "+r"(saveData) : : "memory");
    flags = (u16 *)((u8 *)flags + 0x64);
    asm volatile("" : "+r"(flags) : : "memory");
    temp = 0x12;
    asm volatile("" : "+r"(temp) : : "memory");
    mapData = work->mapData;
    asm volatile("" : "+r"(mapData) : : "memory");
    command = temp;
    asm volatile("" : "+r"(command) : : "memory");
    work = 0;
    asm volatile("" : "+r"(work) : : "memory");
    temp = *flags;
    asm volatile("" : "+r"(temp) : : "memory");
    option = (int)work;
    asm volatile("" : "+r"(option) : : "memory");

    if ((temp & 1) != 0)
        target = __MapActor_GetActor(0xf);
    else
        target = __MapActor_GetActor(0xe);

    if (OvlFunc_901_2008350(actorReg, target, 0x20, 0) == 0) {
        target = __MapActor_GetActor(0);
        if (*(s16 *)(mapData + 0x178) != 0 || saveData[0xea4] != 0) {
            command = 0x1a;
            if ((*flags & 2) != 0)
                option = 1;
        }
        OvlFunc_901_2008350(actorReg, target, command, option);
    }

    return 0;
}
