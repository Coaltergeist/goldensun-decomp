extern unsigned short ewram_2002238;
extern unsigned short iwram_3001f64;

int OvlFunc_971_2008398(void)
{
    extern void *__alloc_ewram(unsigned int);
    extern void __free(void *);
    extern unsigned char *__GetUnit(int);
    extern int __Func_8006408(void);
    extern int __Func_80064f4(void);
    extern int __WaitFrames(int);
    extern void __DecompressString2(int, unsigned short *);
    extern void __Func_8077330(int);

    unsigned short buf[24];
    unsigned int size;
    void *mem;
    int result;
    int timeout;
    int retries;
    int i;
    int j;
    int len;
    int status;
    unsigned char *unit;

    size = 0x154;
    mem = __alloc_ewram(size);
    timeout = 900;
    result = 0;

    i = 0;
    goto next_unit;

receive_unit:
    while (__Func_80064f4() != 0) {
        if (ewram_2002238 > size)
            goto fail;
        timeout--;
        __WaitFrames(1);
        if (timeout < 0 || (iwram_3001f64 & 3) != 3) {
            if (++retries > 24)
                goto fail;
        }
    }
    if (ewram_2002238 != size)
        goto fail;

    if (unit[0x12a] != 0)
        result++;
    __WaitFrames(2);

    __DecompressString2(0x80c, buf);
    for (len = 0; len < 5 && buf[len] != 0; len++)
        ;
    for (j = 14; j >= len; j--)
        unit[j] = unit[j - len];
    for (j = 0; j < len; j++)
        unit[j] = buf[j];
    unit[14] = 0;
    ++i;
next_unit:
    if (i > 2) goto start_final;
    unit = __GetUnit(i + 0x80);
    status = __Func_8006408();
    retries = 0;
    if (status != -1) goto receive_unit;
    goto init_failed;

receive_final:
    while (__Func_80064f4() != 0) {
        if (ewram_2002238 > 320)
            goto fail;
        timeout--;
        __WaitFrames(1);
        if (timeout < 0 || (iwram_3001f64 & 3) != 3) {
            if (++retries > 24)
                goto fail;
        }
    }
    if (ewram_2002238 != 320)
        goto fail;
    __WaitFrames(2);
    goto end;

start_final:
    __free(mem);
    size = 320;
    mem = __alloc_ewram(size);
    __Func_8077330(1);
    status = __Func_8006408();
    retries = 0;
    if (status != -1) goto receive_final;
init_failed:
    result = status;
    goto end;
fail:
    result = -1;
end:
    __free(mem);
    return result;
}
