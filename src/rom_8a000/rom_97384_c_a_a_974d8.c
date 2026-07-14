typedef signed short s16;
typedef unsigned int u32;

extern unsigned char *iwram_3001ebc;
extern void PhysMove(int *vector, int *result);

void Func_80974d8(int *vector_arg)
{
    register unsigned char **root asm("r2") = &iwram_3001ebc;
    register int offset asm("r1") = 0xcf;
    register unsigned char *cursor asm("r3") = *root;
    register int zero asm("r1");
    register int *vector asm("r6");
    int result[3];
    register int value asm("r3");

    offset <<= 1;
    cursor += offset;
    zero = 0;
    value = *(s16 *)(cursor + zero);
    vector = vector_arg;

    if (value == 3) {
        register int *temporary asm("r5") = result;
        PhysMove(vector, temporary);
        value = temporary[0];
        value <<= 16;
        vector[0] = value;
        value = temporary[1];
        value <<= 16;
    } else {
        register unsigned char **camera_root asm("r3") =
            (unsigned char **)((unsigned char *)root - 0x4c);
        register unsigned char *camera asm("r2") = *camera_root;
        register unsigned char *x_ptr asm("r3") = camera + 0xe4;
        register int x asm("r1") = *(int *)x_ptr;
        register int y asm("r0") = *(int *)(camera + 0xe8);
        register int mask asm("r3") = (int)0xffff0000;
        register int current asm("r2");

        x &= mask;
        y &= mask;
        value = vector[0];
        value -= x;
        current = vector[1];
        vector[0] = value;
        value = vector[2];
        value -= current;
        value -= y;
    }

    vector[2] = value;
    vector[1] = 0;
}
