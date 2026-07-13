typedef unsigned char u8;
typedef signed short s16;

#define DEFINE_ACTOR_ATTR_OP(name, offset) \
void name(u8 *actor, int op, int value) \
{ \
    if (op == 0) { \
        *(s16 *)(actor + (offset)) = value; \
    } else if (op == 1) { \
        *(s16 *)(actor + (offset)) += value; \
    } else { \
        register s16 *field asm("r3"); \
        register int zero asm("r5"); \
        register int current asm("r2"); \
        register int expected asm("r3"); \
        register int result asm("r1"); \
        register u8 *flag asm("r3"); \
        field = (s16 *)(actor + (offset)); \
        asm volatile("" : "+r"(field)); \
        zero = 0; \
        asm volatile("" : "+r"(zero)); \
        current = *(s16 *)((u8 *)field + zero); \
        asm volatile("" : "+r"(current)); \
        expected = (s16)value; \
        asm volatile("" : "+r"(expected)); \
        result = 0; \
        asm volatile("" : "+r"(result)); \
        if (current == expected) { \
            result = 1; \
        } \
        flag = actor + 0x57; \
        asm volatile("" : "+r"(flag), "+r"(result)); \
        *flag = result; \
    } \
}

DEFINE_ACTOR_ATTR_OP(ActorAttrOp_waitTimer, 0x5e)
DEFINE_ACTOR_ATTR_OP(ActorAttrOp_unk64, 0x64)
DEFINE_ACTOR_ATTR_OP(ActorAttrOp_unk66, 0x66)
