extern void _Actor_WaitMovement(void);

void Func_8098184(int *a)
{
    int v;
    int limit;
    int step;
    int sum;

    if (a != 0) {
        v = a[6];
        limit = 0xffff;
        if (v <= limit) {
            step = 0x80 << 5;
            sum = v;
            do {
                sum = sum + step;
            } while (sum <= limit);
            a[6] = sum;
            a[7] = sum;
        }
        _Actor_WaitMovement();
    }
}
