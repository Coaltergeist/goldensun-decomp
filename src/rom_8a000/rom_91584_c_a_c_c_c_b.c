extern int GiveItemTo(int item, int unit) __asm__("_GiveItemTo");

int Func_8091c1c(int unit, int unused, int item)
{
    if (GiveItemTo(item, unit) >= 0)
        return item;
    return -1;
}
