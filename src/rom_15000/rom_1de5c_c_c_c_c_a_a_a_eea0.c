typedef unsigned char u8;
typedef unsigned short u16;

struct Output {
    u8 pad00[4];
    u16 left;
    u16 zero;
    u16 right;
    u16 rows;
    u16 flags;
};

extern struct Output *iwram_3001e90;
extern int _Func_80b6a60(int value);
extern int _GetPartySize(void);

void Func_801eea0(unsigned int input_flags)
{
    register struct Output *output asm("r5") = iwram_3001e90;
    register unsigned int flags asm("r6") = input_flags;
    register int rows asm("r7") = 4;
    int count;

    if (((u8 *)((struct Output **)&iwram_3001e90)[-1])[0xea5] != 0) {
        count = _Func_80b6a60(0);
        rows = 3;
    } else {
        count = _GetPartySize();
    }

    if ((flags & 1) == 0)
        goto clear_secondary;
    rows++;
    asm volatile("" : "+r" (rows));
    goto flags_done;
clear_secondary:
    flags &= ~2u;
    asm volatile("" : "+r" (flags));
flags_done:

    {
        int width = count * 6;
        int right = width + 1;
        register int left asm("r3");
        if ((flags & 2) != 0)
            right = width + 6;
        left = 30 - right;
        asm volatile("" : "+r" (left));
        output->left = left;
        output->zero = 0;
        output->right = right;
        output->rows = rows;
        output->flags = flags;
    }
}
