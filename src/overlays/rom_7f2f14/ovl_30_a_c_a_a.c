extern unsigned char *__MapActor_GetActor(int actor);

int OvlFunc_968_20088c8(unsigned char *self)
{
    register unsigned char *saved_self asm("r5") = self;
    register unsigned char *other asm("r0");
    register unsigned char *field asm("r2");
    register unsigned char *saved_field asm("r12");
    register int right asm("r3");
    register int left asm("r2");
    register unsigned int flags asm("r1");

    asm volatile("" : "+r"(saved_self));
    other = __MapActor_GetActor(0);
    field = (unsigned char *)0x23;
    asm volatile("" : "+r"(field));
    field += (unsigned int)saved_self;
    saved_field = field;
    asm volatile("" : "+r"(field), "+r"(saved_field));
    right = 2;
    left = *field;
    flags = right;
    asm volatile("" : "+r"(left), "+r"(right), "+r"(flags), "+r"(saved_field));
    flags |= left;
    right = (unsigned int)saved_field;
    asm volatile("" : "+r"(right), "+r"(flags));
    *(unsigned char *)right = flags;

    left = *(int *)(other + 0x10);
    right = *(int *)(saved_self + 0x10);
    if (left < right) {
        right -= left;
        left = 0x80;
        asm volatile("" : "+r"(left), "+r"(right));
        left <<= 11;
        right += left;
        left = *(int *)(saved_self + 0xc);
        left += right;
        right = *(int *)(other + 0xc);
        if (right <= left) {
            right = 0xfd;
            asm volatile("" : "+r"(right), "+r"(flags));
            flags &= right;
            right = (unsigned int)saved_field;
            asm volatile("" : "+r"(right), "+r"(flags));
            *(unsigned char *)right = flags;
        }
    }
    return 0;
}
