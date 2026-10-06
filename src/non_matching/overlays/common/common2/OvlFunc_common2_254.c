typedef struct { unsigned int a, b; } Pair;

typedef struct { unsigned int a, b, c, d, e; } Frac;

extern void OvlFunc_common2_618(Pair *in, Frac *out);

extern void OvlFunc_common2_0(Frac *a, Frac *b, Frac *out);

extern void OvlFunc_common2_44c(void);

void OvlFunc_common2_254(Pair p1, Pair p2)
{
    Frac out1, out2, result;

    OvlFunc_common2_618(&p1, &out1);
    OvlFunc_common2_618(&p2, &out2);
    OvlFunc_common2_0(&out1, &out2, &result);
    OvlFunc_common2_44c();
}
