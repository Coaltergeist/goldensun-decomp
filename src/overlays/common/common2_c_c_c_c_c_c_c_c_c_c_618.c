typedef float DFtype __attribute__ ((mode (DF)));
typedef int SItype __attribute__ ((mode (SI)));
typedef unsigned int USItype __attribute__ ((mode (SI)));
typedef unsigned int UDItype __attribute__ ((mode (DI)));

#define NGARDS 8L
#define EXPBITS 11
#define EXPBIAS 1023
#define FRACBITS 52
#define EXPMAX 0x7ff
#define QUIET_NAN 0x8000000000000LL
#define IMPLICIT_1 (1LL << (FRACBITS + NGARDS))

typedef UDItype fractype;
typedef USItype halffractype;
typedef DFtype FLO_type;

typedef enum
{
    CLASS_SNAN,
    CLASS_QNAN,
    CLASS_ZERO,
    CLASS_NUMBER,
    CLASS_INFINITY
} fp_class_type;

typedef struct
{
    fp_class_type class;
    unsigned int sign;
    int normal_exp;
    union
    {
        fractype ll;
        halffractype l[2];
    } fraction;
} fp_number_type;

typedef union
{
    FLO_type value;
    fractype value_raw;
    halffractype words[2];
    struct
    {
        fractype fraction:FRACBITS __attribute__ ((packed));
        unsigned int exp:EXPBITS __attribute__ ((packed));
        unsigned int sign:1 __attribute__ ((packed));
    } bits;
} FLO_union_type;

void
OvlFunc_common2_618 (FLO_union_type *src, fp_number_type *dst)
{
    fractype fraction;
    int exp;
    int sign;
    FLO_union_type swapped;

    swapped.words[0] = src->words[1];
    swapped.words[1] = src->words[0];
    src = &swapped;

    fraction = src->bits.fraction;
    exp = src->bits.exp;
    sign = src->bits.sign;

    dst->sign = sign;
    if (exp == 0)
    {
        if (fraction == 0)
        {
            dst->class = CLASS_ZERO;
        }
        else
        {
            dst->normal_exp = exp - EXPBIAS + 1;
            fraction <<= NGARDS;
            dst->class = CLASS_NUMBER;
            while (fraction < IMPLICIT_1)
            {
                fraction <<= 1;
                dst->normal_exp--;
            }
            dst->fraction.ll = fraction;
        }
    }
    else if (exp == EXPMAX)
    {
        if (fraction == 0)
        {
            dst->class = CLASS_INFINITY;
        }
        else
        {
            if (fraction & QUIET_NAN)
            {
                dst->class = CLASS_QNAN;
            }
            else
            {
                dst->class = CLASS_SNAN;
            }
            dst->fraction.ll = fraction;
        }
    }
    else
    {
        dst->normal_exp = exp - EXPBIAS;
        dst->class = CLASS_NUMBER;
        dst->fraction.ll = (fraction << NGARDS) | IMPLICIT_1;
    }
}
