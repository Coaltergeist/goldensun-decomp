typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

typedef struct {
    u32 pad0 : 4;
    u32 id : 2;
    u32 pad1 : 26;
} SiocntBits;

extern u16 iwram_3001f64;
extern u32 CHAR_ARRAY_ARRAY_971__02009928[];
extern u8 ewram_2002024[];
extern u8 OvlData_971_2009940[] asm(".L1940");

extern void __SetFlag(int flag);
extern void __ClearFlag(int flag);
extern int __GetFlag(int flag);

int OvlFunc_971_200808c(int index)
{
    int id;
    u32 *entry;
    int flag;
    u32 val;
    u8 *base;
    u8 *row;
    u32 col;

    id = -1;
    if ((iwram_3001f64 & 3) == 3) {
        id = ((volatile SiocntBits *)0x04000128)->id;
        __SetFlag(0x303);
        goto check;
    }
    goto no_mp;

body:
    entry = &CHAR_ARRAY_ARRAY_971__02009928[index];
    if (id != 0)
        __SetFlag(0x302);
    else
        __ClearFlag(0x302);
    flag = __GetFlag(0x302) ^ 1;
    base = ewram_2002024;
    row = base + flag * 24;
    col = OvlData_971_2009940[index] * 4;
    val = *(u32 *)(row + col);
    if (val != *entry)
        goto ret0;
    return 1;

no_mp:
    __ClearFlag(0x303);
    goto check;

check:
    if (id < 0)
        goto ret0;
    if (__GetFlag(0x303) != 0)
        goto body;

ret0:
    return 0;
}
