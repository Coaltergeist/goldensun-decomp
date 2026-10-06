#ifndef FIELD_PUSH_BLOCK_H
#define FIELD_PUSH_BLOCK_H

// Packet passed by value to the overlay push-block movement helpers.
// Retain the existing field names and no-argument callback convention.
struct Pk {
    int a;
    int b;
    int x;
    int y;
    int z;
    void (*arg5)(void);
};

// Target ABI checks for the production compiler.
typedef char PkSizeCheck[(sizeof(struct Pk) == 24) ? 1 : -1];
typedef char PkAlignmentCheck[(__alignof__(struct Pk) == 4) ? 1 : -1];
typedef char PkFieldWidthsCheck[
    (sizeof(((struct Pk *)0)->a) == 4 &&
     sizeof(((struct Pk *)0)->b) == 4 &&
     sizeof(((struct Pk *)0)->x) == 4 &&
     sizeof(((struct Pk *)0)->y) == 4 &&
     sizeof(((struct Pk *)0)->z) == 4 &&
     sizeof(((struct Pk *)0)->arg5) == 4) ? 1 : -1];
typedef char PkOffsetsCheck[
    ((unsigned long)&((struct Pk *)0)->a == 0 &&
     (unsigned long)&((struct Pk *)0)->b == 4 &&
     (unsigned long)&((struct Pk *)0)->x == 8 &&
     (unsigned long)&((struct Pk *)0)->y == 12 &&
     (unsigned long)&((struct Pk *)0)->z == 16 &&
     (unsigned long)&((struct Pk *)0)->arg5 == 20) ? 1 : -1];

#endif // FIELD_PUSH_BLOCK_H
