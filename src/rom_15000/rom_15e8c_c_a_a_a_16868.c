typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

extern u8 *iwram_3001e8c;
extern void Func_8019854(u8 **slot);
extern int AdvanceMsgText(u8 **slot);
extern void CloseUIBox(u8 *box, int mode);

void Func_8016868(void)
{
    register u8 **global_address asm("r3") = &iwram_3001e8c;
    register u8 *base asm("r3");
    register int offset asm("r2");
    register u8 **slot asm("r5");
    register int index asm("r7");
    register int one asm("r8");

    asm volatile("mov r2, #0xc4\n\t"
                 "ldr r3, [r3]\n\t"
                 "lsl r2, r2, #3\n\t"
                 "add r5, r3, r2\n\t"
                 "mov r3, #1\n\t"
                 "mov r7, #0\n\t"
                 "mov r8, r3"
                 : "=r"(offset), "=r"(base), "=r"(slot),
                   "=r"(index), "=r"(one)
                 : "r"(global_address));

    do {
        register u8 *message asm("r2") = *slot;
        if (message != 0 && *(u32 *)(message + 0x18) == 0) {
            if (*(u16 *)(message + 0x16) == 0) {
                *slot = 0;
            } else {
                register u16 zero asm("r6") = *(u16 *)(message + 0x12);
                if (zero != 0) {
                    Func_8019854(slot);
                } else {
                    int result = AdvanceMsgText(slot);
                    register u8 *active_message asm("r3");
                    register int active_value asm("r2");
                    switch (result) {
                    case 8:
                        active_message = *slot;
                        active_value = one;
                        asm volatile("" : "+r"(active_value));
                        break;
                    case 9: {
                        u8 *box = *slot;
                        CloseUIBox(box, *(u16 *)(box + 0x16) & 2);
                        active_message = *slot;
                        active_value = one;
                        asm volatile("" : "+r"(active_value));
                        *(u16 *)((u8 *)slot + 4) = zero;
                        *(u16 *)((u8 *)slot + 6) = zero;
                        *(u16 *)((u8 *)slot + 0x12) = zero;
                        *(u16 *)((u8 *)slot + 0x14) = zero;
                        *(u16 *)((u8 *)slot + 0x16) = zero;
                        *(u16 *)((u8 *)slot + 0x18) = zero;
                        *(u16 *)((u8 *)slot + 0x1a) = zero;
                        break;
                    }
                    default:
                        goto next_slot;
                    }
                    *(u16 *)(active_message + 0x14) = active_value;
                }
            }
        }
next_slot:
        index++;
        slot = (u8 **)((u8 *)slot + 0x28);
    } while (index != 3);
}
