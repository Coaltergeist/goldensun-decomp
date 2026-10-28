/* common2: consolidated shared-overlay TU (linked by the 2 overlays that reference it). */

#include "nonmatching.h"

/*
 * common2 is libgcc's soft-float double support (gcc/config/fp-bit.c built
 * for DFmode, plus the __lshrdi3 it pulls in). Names follow fp-bit.c.
 */
typedef enum {
    CLASS_SNAN,
    CLASS_QNAN,
    CLASS_ZERO,
    CLASS_NUMBER,
    CLASS_INFINITY
} fp_class_type;

typedef struct {
    fp_class_type class;
    unsigned int sign;
    int normal_exp;
    union {
        unsigned long long ll;
        unsigned int l[2];
    } fraction;
} fp_number_type;

typedef union {
    double value;
    unsigned long long value_raw;
    unsigned int words[2];
    struct {
        unsigned long long fraction : 52;
        unsigned int exp : 11;
        unsigned int sign : 1;
    } bits;
} FLO_union_type;

fp_number_type *OvlFunc_common2_0(fp_number_type *a, fp_number_type *b, fp_number_type *tmp);
fp_number_type *OvlFunc_common2_2cc(void);
unsigned int OvlFunc_common2_2d4(fp_number_type *x);
unsigned int OvlFunc_common2_2e4(fp_number_type *x);
unsigned int OvlFunc_common2_2f4(fp_number_type *x);
unsigned int OvlFunc_common2_3ec(fp_number_type *x);
unsigned int OvlFunc_common2_3fc(fp_number_type *x);
unsigned int OvlFunc_common2_40c(fp_number_type *x);
long long OvlFunc_common2_41c(long long u, int b);
double OvlFunc_common2_44c(fp_number_type *src);
unsigned int OvlFunc_common2_5e8(fp_number_type *x);
unsigned int OvlFunc_common2_5f8(fp_number_type *x);
unsigned int OvlFunc_common2_608(fp_number_type *x);
void OvlFunc_common2_618(FLO_union_type *src, fp_number_type *dst);

/* fp-bit _fpadd_parts */
fp_number_type *OvlFunc_common2_0(fp_number_type *a, fp_number_type *b, fp_number_type *tmp)
{
    long long tfraction;
    int a_normal_exp;
    int b_normal_exp;
    unsigned long long a_fraction;
    unsigned long long b_fraction;

    if (OvlFunc_common2_2d4(a)) {
        return a;
    }
    if (OvlFunc_common2_2d4(b)) {
        return b;
    }
    if (OvlFunc_common2_2e4(a)) {
        if (OvlFunc_common2_2e4(b) && a->sign != b->sign)
            return OvlFunc_common2_2cc();
        return a;
    }
    if (OvlFunc_common2_2e4(b)) {
        return b;
    }
    if (OvlFunc_common2_2f4(b)) {
        if (OvlFunc_common2_2f4(a)) {
            *tmp = *a;
            tmp->sign = a->sign & b->sign;
            return tmp;
        }
        return a;
    }
    if (OvlFunc_common2_2f4(a)) {
        return b;
    }

    {
        int diff;

        a_normal_exp = a->normal_exp;
        b_normal_exp = b->normal_exp;
        a_fraction = a->fraction.ll;
        b_fraction = b->fraction.ll;

        diff = a_normal_exp - b_normal_exp;

        if (diff < 0)
            diff = -diff;
        if (diff < 64) {
            while (a_normal_exp > b_normal_exp) {
                b_normal_exp++;
                b_fraction = (b_fraction & 1) | (b_fraction >> 1);
            }
            while (b_normal_exp > a_normal_exp) {
                a_normal_exp++;
                a_fraction = (a_fraction & 1) | (a_fraction >> 1);
            }
        } else {
            if (a_normal_exp > b_normal_exp) {
                b_normal_exp = a_normal_exp;
                b_fraction = 0;
            } else {
                a_normal_exp = b_normal_exp;
                a_fraction = 0;
            }
        }
    }

    if (a->sign != b->sign) {
        if (a->sign) {
            tfraction = -a_fraction + b_fraction;
        } else {
            tfraction = a_fraction - b_fraction;
        }
        if (tfraction >= 0) {
            tmp->sign = 0;
            tmp->normal_exp = a_normal_exp;
            tmp->fraction.ll = tfraction;
        } else {
            tmp->sign = 1;
            tmp->normal_exp = a_normal_exp;
            tmp->fraction.ll = -tfraction;
        }

        while (tmp->fraction.ll < (1LL << (52 + 8)) && tmp->fraction.ll) {
            tmp->fraction.ll <<= 1;
            tmp->normal_exp--;
        }
    } else {
        tmp->sign = a->sign;
        tmp->normal_exp = a_normal_exp;
        tmp->fraction.ll = a_fraction + b_fraction;
    }
    tmp->class = CLASS_NUMBER;

    if (tmp->fraction.ll >= (1LL << (52 + 8 + 1))) {
        tmp->fraction.ll = (tmp->fraction.ll & 1) | (tmp->fraction.ll >> 1);
        tmp->normal_exp++;
    }
    return tmp;
}
/* __adddf3 (fp-bit add) */
double OvlFunc_common2_254(double arg_a, double arg_b)
{
    fp_number_type a;
    fp_number_type b;
    fp_number_type tmp;
    fp_number_type *res;
    FLO_union_type au, bu;

    au.value = arg_a;
    bu.value = arg_b;
    OvlFunc_common2_618(&au, &a);
    OvlFunc_common2_618(&bu, &b);
    res = OvlFunc_common2_0(&a, &b, &tmp);
    return OvlFunc_common2_44c(res);
}
/* __subdf3 (fp-bit sub) */
double OvlFunc_common2_28c(double arg_a, double arg_b)
{
    fp_number_type a;
    fp_number_type b;
    fp_number_type tmp;
    fp_number_type *res;
    FLO_union_type au, bu;

    au.value = arg_a;
    bu.value = arg_b;
    OvlFunc_common2_618(&au, &a);
    OvlFunc_common2_618(&bu, &b);
    b.sign ^= 1;
    res = OvlFunc_common2_0(&a, &b, &tmp);
    return OvlFunc_common2_44c(res);
}


/* fp-bit __thenan_df: the NaN returned by nan(). */
fp_number_type __thenan_df = { CLASS_SNAN, 0, 0, { 0 } };

fp_number_type *OvlFunc_common2_2cc(void) {
    return &__thenan_df;
}

unsigned int OvlFunc_common2_2d4(fp_number_type *x) {
    return x->class <= CLASS_QNAN;
}

unsigned int OvlFunc_common2_2e4(fp_number_type *x)
{
    unsigned int r2 = 0;
    if (x->class == CLASS_INFINITY)
        r2 = 1;
    return r2;
}

unsigned int OvlFunc_common2_2f4(fp_number_type *x)
{
    unsigned int result;
    result = 0;
    if (x->class == CLASS_ZERO)
        result = 1;
    return result;
}

INCLUDE_ASM("asm/maps/common/common2/OvlFunc_common2_304.s");
/* __fixdfsi (fp-bit float_to_si) */
int OvlFunc_common2_380(double arg_a)
{
    fp_number_type a;
    int tmp;
    FLO_union_type au;

    au.value = arg_a;
    OvlFunc_common2_618(&au, &a);

    if (OvlFunc_common2_40c(&a))
        return 0;
    if (OvlFunc_common2_3ec(&a))
        return 0;
    if (OvlFunc_common2_3fc(&a))
        return a.sign ? (-0x7fffffff) - 1 : 0x7fffffff;
    if (a.normal_exp < 0)
        return 0;
    if (a.normal_exp > 31 - 1)
        return a.sign ? (-0x7fffffff) - 1 : 0x7fffffff;
    /* fp-bit: a.fraction.ll >> ((FRACBITS + NGARDS) - a.normal_exp), via the overlay's own __lshrdi3 copy */
    tmp = OvlFunc_common2_41c(a.fraction.ll, (52 + 8) - a.normal_exp);
    return a.sign ? (-tmp) : (tmp);
}

unsigned int OvlFunc_common2_3ec(fp_number_type *x) {
    return x->class < CLASS_ZERO;
}

unsigned int OvlFunc_common2_3fc(fp_number_type *x)
{
    unsigned int r2 = 0;
    if (x->class == CLASS_INFINITY)
        r2 = 1;
    return r2;
}

unsigned int OvlFunc_common2_40c(fp_number_type *x) {
    unsigned int r2 = 0;
    if (x->class == CLASS_ZERO)
        r2 = 1;
    return r2;
}

/* libgcc2 __lshrdi3 */
typedef struct { unsigned int low; int high; } DIstruct;
typedef union { DIstruct s; long long ll; } DIunion;
long long OvlFunc_common2_41c(long long u, int b)
{
    DIunion w;
    int bm;
    DIunion uu;

    if (b == 0)
        return u;

    uu.ll = u;

    bm = (sizeof(int) * 8) - b;
    if (bm <= 0) {
        w.s.high = 0;
        w.s.low = (unsigned int)uu.s.high >> -bm;
    } else {
        unsigned int carries = (unsigned int)uu.s.high << bm;
        w.s.high = (unsigned int)uu.s.high >> b;
        w.s.low = ((unsigned int)uu.s.low >> b) | carries;
    }

    return w.ll;
}
/* fp-bit pack_d */
double OvlFunc_common2_44c(fp_number_type *src)
{
    FLO_union_type dst;
    unsigned long long fraction = src->fraction.ll;
    int sign = src->sign;
    int exp = 0;

    if (OvlFunc_common2_5e8(src)) {
        exp = 0x7ff;
        fraction |= 0x8000000000000LL;
    } else if (OvlFunc_common2_5f8(src)) {
        exp = 0x7ff;
        fraction = 0;
    } else if (OvlFunc_common2_608(src)) {
        exp = 0;
        fraction = 0;
    } else if (fraction == 0) {
        exp = 0;
    } else {
        if (src->normal_exp < 1 - 1023) {
            int shift = (1 - 1023) - src->normal_exp;

            exp = 0;

            if (shift > 64 - 8) {
                fraction = 0;
            } else {
                int lowbit = (fraction & ((1 << shift) - 1)) ? 1 : 0;
                fraction = OvlFunc_common2_41c(fraction, shift) | lowbit;
            }
            if ((fraction & 0xff) == 0x80) {
                if (fraction & (1 << 8))
                    fraction += 0x7f + 1;
            } else {
                fraction += 0x7f;
            }
            if (fraction >= (1LL << (52 + 8))) {
                exp += 1;
            }
            fraction >>= 8;
        } else if (src->normal_exp > 1023) {
            exp = 0x7ff;
            fraction = 0;
        } else {
            exp = src->normal_exp + 1023;
            if ((fraction & 0xff) == 0x80) {
                if (fraction & (1 << 8))
                    fraction += 0x7f + 1;
            } else {
                fraction += 0x7f;
            }
            if (fraction >= (1LL << (52 + 8 + 1))) {
                fraction >>= 1;
                exp += 1;
            }
            fraction >>= 8;
        }
    }

    dst.bits.fraction = fraction;
    dst.bits.exp = exp;
    dst.bits.sign = sign;

    {
        unsigned int tmp = dst.words[0];
        dst.words[0] = dst.words[1];
        dst.words[1] = tmp;
    }

    return dst.value;
}

unsigned int OvlFunc_common2_5e8(fp_number_type *x) {
    return x->class <= CLASS_QNAN;
}

unsigned int OvlFunc_common2_5f8(fp_number_type *x) {
    unsigned int r2 = 0;
    if (x->class == CLASS_INFINITY)
        r2 = 1;
    return r2;
}

unsigned int OvlFunc_common2_608(fp_number_type *x) {
    return x->class == CLASS_ZERO;
}

/* fp-bit unpack_d (FLOAT_WORD_ORDER_MISMATCH: FPA word order) */
void OvlFunc_common2_618(FLO_union_type *src, fp_number_type *dst)
{
    unsigned long long fraction;
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
    if (exp == 0) {
        if (fraction == 0) {
            dst->class = CLASS_ZERO;
        } else {
            dst->normal_exp = exp - 1023 + 1;
            fraction <<= 8;

            dst->class = CLASS_NUMBER;
            while (fraction < (1LL << (52 + 8))) {
                fraction <<= 1;
                dst->normal_exp--;
            }
            dst->fraction.ll = fraction;
        }
    } else if (exp == 0x7ff) {
        if (fraction == 0) {
            dst->class = CLASS_INFINITY;
        } else {
            if (fraction & 0x8000000000000LL) {
                dst->class = CLASS_QNAN;
            } else {
                dst->class = CLASS_SNAN;
            }
            dst->fraction.ll = fraction;
        }
    } else {
        dst->normal_exp = exp - 1023;
        dst->class = CLASS_NUMBER;
        dst->fraction.ll = (fraction << 8) | (1LL << (52 + 8));
    }
}
