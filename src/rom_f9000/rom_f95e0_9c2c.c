typedef unsigned char u8;
typedef unsigned int u32;

void ply_port(void *mplay, u8 *track)
{
    register u8 *track_reg asm("r1") = track;
    register u8 *position asm("r2");
    register u32 value asm("r3");
    register volatile u8 *port asm("r0");

    asm volatile ("mov r12, lr");
    position = *(u8 **)(track_reg + 0x40);
    value = *position;
    position++;
    asm volatile ("" : "+r" (position), "+r" (value));
    port = (volatile u8 *)0x04000060;
    asm volatile ("" : "+r" (port));
    port += value;
    asm volatile (
        "bl M4aReadNext"
        : "+r" (position), "=r" (value)
        : "r" (track_reg), "r" (port));
    *port = value;

    asm volatile (".macro bx target\n\t.hword 0x4760\n\t.endm");
}
