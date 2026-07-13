typedef unsigned int u32;
typedef unsigned long long u64;

typedef union {
    struct {
        u32 low;
        u32 high;
    } word;
    u64 value;
} U64Words;

/* 64ビット値を右へシフトする。 */
u64 OvlFunc_common2_41c(u64 value, int shift) {
    U64Words src;
    U64Words dst;
    int backShift;

    if (shift == 0) {
        return value;
    }

    src.value = value;
    backShift = 32 - shift;
    if (backShift <= 0) {
        dst.word.high = 0;
        dst.word.low = src.word.high >> -backShift;
    } else {
        u32 carry = src.word.high << backShift;
        dst.word.high = src.word.high >> shift;
        dst.word.low = (src.word.low >> shift) | carry;
    }
    return dst.value;
}
