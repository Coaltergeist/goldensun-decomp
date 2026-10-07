struct S {
    unsigned int p;
    unsigned short a;
    unsigned short b;
    unsigned short c;
    unsigned short d;
    unsigned char e;
    unsigned char f;
};

void Func_80b09fc(void *ptr, unsigned int arg1, unsigned int arg2, int arg3)
{
    struct S *arg0 = ptr;
    unsigned short *src;

    src = (unsigned short *)arg0->p;
    arg0->a = src[3];
    { unsigned short b = src[4];
    arg0->c = arg1;
    arg0->b = b; }
    arg0->d = arg2;
    arg0->f = arg3;
    arg0->e = 0;
}
