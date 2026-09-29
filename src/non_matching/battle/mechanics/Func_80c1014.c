int Func_80b6c08(int a, short *b);

void Func_80c0f98(int a, int b);

void Func_80c1014(int arg0)
{
    short buf[14];
    short *p;
    int ret;
    int count;
    int i;

    p = buf;
    ret = Func_80b6c08(3, p);
    if (ret <= 0) {
        return;
    }
    i = 0;
    count = ret;
    do {
        if (buf[i] != arg0) {
            Func_80c0f98(buf[i], 1);
        }
        i++;
        count--;
    } while (count != 0);
}
