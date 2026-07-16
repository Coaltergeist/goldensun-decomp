typedef unsigned char u8;
typedef unsigned short u16;
typedef signed char s8;
typedef unsigned int u32;
typedef int s32;

extern s32 Func_80b6a60(u16 *output);
extern s32 Func_80b6ae0(u16 *output);
extern u8 *iwram_3001e74;
extern const u8 gLc2a10[] asm(".Lc2a10");

void Func_80b5a0c(void)
{
    u16 buf[14];
    u8 *base;
    register u8 *base2 asm("r12");
    u16 *dst;
    register s32 count asm("r6");
    s32 flag;
    s32 n;
    register s32 half asm("lr");

    base = iwram_3001e74;
    count = Func_80b6a60(buf);
    if (count > 0) {
        register s32 bufReg asm("r0") = (s32)(const u8 *)buf;
        dst = (u16 *)(base + 0x58);
        {
            register const u8 *offReg asm("r4") = (const u8 *)0;
            n = count;
            do {
                n--;
                *dst = *(u16 *)(offReg + bufReg);
                offReg += 2;
                dst++;
            } while (n != 0);
        }
    }
    {
        register s32 sentOff asm("r3") = count * 2 + 0x58;
        *(u16 *)(base + sentOff) = 0xff;
    }
    count = Func_80b6ae0(buf);
    flag = base[0x42];
    if (flag < 0)
        goto out_of_range;
    if (flag > 1)
        goto out_of_range;
    n = 0;
    if (n >= count)
        goto skip;
    base2 = base + 2;
    {
        register s32 bufReg asm("r0") = (s32)(const u8 *)buf;
        dst = (u16 *)(base + 0x66);
        {
            register const u8 *offReg asm("r4") = (const u8 *)0;
            do {
                n++;
                *dst = *(u16 *)(offReg + bufReg);
                offReg += 2;
                dst++;
            } while (n < count);
        }
    }
    goto done;
out_of_range:
    if (count <= 0)
        goto skip;
    {
        register s32 t asm("r3");
        t = (s32)((u32)count >> 31);
        t = count + t;
        base += 2;
        t = t >> 1;
        base2 = base;
        half = t;
    }
    {
        register const u8 *bufReg asm("r0") = (const u8 *)buf;
        register const u8 *tblReg asm("r4") = gLc2a10;
        n = count;
        do {
            u8 rawTb = *tblReg;
            s32 tb;
            asm volatile("" : "+r"(rawTb));
            tb = (s32)(s8)rawTb;
            {
                register u16 preVal asm("r2") = *(u16 *)bufReg;
                register s32 off3 asm("r3") = (tb + half) * 2 + 0x64;
                n--;
                tblReg++;
                bufReg += 2;
                *(u16 *)(base + off3) = preVal;
            }
        } while (n != 0);
    }
    goto done;
skip:
    base += 2;
    base2 = base;
done:
    {
        register s32 sentOff asm("r3") = count * 2 + 0x64;
        register u8 *base2Low asm("r1") = base2;
        *(u16 *)(base2Low + sentOff) = 0xff;
    }
}
