typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef int s32;

extern u8 *iwram_3001e8c;
extern u32 UploadSpriteGFX(u32 slot, u32 size, void *gfx);
extern s32 StartTask(void (*task)(void), u32 priority);
extern void Func_801789c(void);

void Func_8017464(int param_1)
{
    register u8 *state asm("r5") = iwram_3001e8c;
    register unsigned int value asm("r3");
    register u8 *field asm("r2");

    if (param_1 != 0) {
        register u32 result asm("r0");
        register unsigned int off1 asm("r2");
        register u8 *fld1 asm("r3");

        result = UploadSpriteGFX(0x5f, 0x80 << 6, 0);
        off1 = 0x12b8;
        fld1 = state + off1;
        asm("" : "+r"(fld1), "+r"(result));
        *(u16 *)fld1 = result;
    }

    value = 0x12b0;
    field = state + value;
    value = 9;
    asm("" : "+r"(field), "+r"(value));
    *(u16 *)field = value;

    value = 0xea8;
    field = state + value;
    value = 0xa;
    asm("" : "+r"(field), "+r"(value));
    *(u16 *)field = value;

    {
        register unsigned int off4 asm("r2");
        register unsigned int val4 asm("r1");
        register u8 *fld4 asm("r3");
        off4 = 0xeac;
        val4 = 0;
        fld4 = state + off4;
        asm("" : "+r"(fld4), "+r"(val4));
        *(u16 *)fld4 = val4;

        value = 0xeae;
        field = state + value;
        value = 0xf;
        asm("" : "+r"(field), "+r"(value));
        *(u16 *)field = value;

        {
            register unsigned int off6 asm("r2");
            register u8 *fld6 asm("r3");
            off6 = 0x12b2;
            fld6 = state + off6;
            asm("" : "+r"(fld6), "+r"(val4));
            *(u16 *)fld6 = val4;
        }
    }

    StartTask(Func_801789c, 0xc8 << 4);
}
