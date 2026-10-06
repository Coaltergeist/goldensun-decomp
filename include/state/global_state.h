#ifndef GLOBAL_STATE_H
#define GLOBAL_STATE_H

// Opaque view of the state region starting at gState (0x02000240).
// Keep raw/scalar and named assembly aliases local to their users.
// This header intentionally does not declare a global object.
typedef struct {
    unsigned char _bytes[704];
} GlobalState;

// Target ABI checks for the production compiler.
typedef char GlobalStateSizeCheck[(sizeof(GlobalState) == 704) ? 1 : -1];
typedef char GlobalStateAlignmentCheck[(__alignof__(GlobalState) == 4) ? 1 : -1];
typedef char GlobalStateFieldWidthsCheck[
    (sizeof(((GlobalState *)0)->_bytes) == 704) ? 1 : -1];
typedef char GlobalStateOffsetsCheck[
    ((unsigned long)&((GlobalState *)0)->_bytes == 0) ? 1 : -1];

#endif // GLOBAL_STATE_H
