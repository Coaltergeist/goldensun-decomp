void Func_800fa8c(void)
{
    unsigned int *p;
    int count;
    unsigned int i;

    p = (unsigned int *)gBuffer;
    count = -1;
    for (i = 0x4000; i != 0; i--) {
        unsigned int val = *p++;
        unsigned int low = val & 0xfff;
        if (low == 0xfff) {
            if (count != (int)low) {
                count++;
            }
            p[-1] = val + count - low;
        }
    }
}
