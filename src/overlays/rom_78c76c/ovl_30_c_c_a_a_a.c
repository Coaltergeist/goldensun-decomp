extern unsigned int __GetFlag(unsigned int flag);
extern void __Func_8091e9c(unsigned int map_id);

signed int OvlFunc_891_2008054(void)
{
    unsigned int map_id;
    signed int result;

    if (__GetFlag(0x818)) {
        if (__GetFlag(0x813)) {
            goto failure;
        }
        map_id = 3;
    } else {
        if (__GetFlag(0x812)) {
            goto failure;
        }
        map_id = 4;
    }
    __Func_8091e9c(map_id);
    result = 1;
    goto done;

failure:
    result = -1;
done:
    return result;
}
