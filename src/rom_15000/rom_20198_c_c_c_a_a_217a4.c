typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

typedef struct {
    u32 x : 16;
    u32 y : 16;
    u32 z : 16;
    u32 w : 16;
} ShakeArgs;

typedef struct {
    u16 pos : 9;
    u16 rest : 7;
} PosBits;

typedef struct {
    u8 skip;
    u8 flag0 : 1;
    u8 dir : 5;
    u8 flag6 : 1;
    u8 flag7 : 1;
} FlagBits;

typedef union {
    PosBits pos;
    FlagBits flags;
} __attribute__((packed)) Field16;

typedef struct {
    u8 filler00[6];
    u16 field06;
    u8 field08;
    u8 filler09[6];
    u8 field0f;
    u8 filler10[4];
    u8 field14;
    u8 field15;
    Field16 field16;
} Obj;

extern volatile u32 iwram_3001800;
extern const s32 L37230[] asm(".L37230");
extern u32 Func_8003d28(s16 *buf);

void Func_80217a4(Obj *param_1)
{
    ShakeArgs args;
    s32 shake = L37230[(iwram_3001800 >> 1) & 7] / 256;

    if (param_1 != 0) {
        u32 result;

        args.x = shake;
        args.y = shake;
        args.z = 0;
        result = Func_8003d28((s16 *)&args);

        param_1->field16.flags.dir = result;
        ((u8 *)param_1)[0x15] |= 3;
        param_1->field16.pos.pos = param_1->field06 - 16;
        param_1->field14 = param_1->field08 - 16;
        param_1->field0f = 0xfc;
    }
}
