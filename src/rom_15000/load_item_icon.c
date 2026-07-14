extern unsigned char *iwram_3001e94;
extern unsigned char *_GetItemInfo(unsigned int item_id);
extern unsigned char *L29ee4[] __asm__(".L29ee4");
extern void LoadIcon(unsigned char *buffer, unsigned int icon_index);

void LoadItemIcon(unsigned int item_id)
{
    unsigned char *item_info;
    unsigned char *buffer;

    buffer = iwram_3001e94;
    item_info = _GetItemInfo(item_id & 0x1ff);

    if (item_id != 0) {
        asm volatile(
            "ldr r2, =0x604\n\t"
            "ldrh r3, [%1, #6]\n\t"
            "add r1, %0, r2\n\t"
            "ldr r2, =.L29ee4\n\t"
            "lsl r3, r3, #2\n\t"
            "ldr r3, [r2, r3]\n\t"
            "str r3, [r1]\n\t"
            :
            : "r"(buffer), "r"(item_info)
            : "r1", "r2", "r3", "memory"
        );
    } else {
        asm volatile(
            "ldr r2, =.L29ee4\n\t"
            "ldr r1, =0x604\n\t"
            "ldr r2, [r2]\n\t"
            "add r3, %0, r1\n\t"
            "str r2, [r3]\n\t"
            :
            : "r"(buffer)
            : "r1", "r2", "r3", "memory"
        );
    }

    asm volatile(
        "mov r2, #0xc0\n\t"
        "lsl r2, r2, #3\n\t"
        "ldr r1, =0x602\n\t"
        "add r3, %0, r2\n\t"
        "mov r2, #2\n\t"
        "strh r2, [r3]\n\t"
        "add r3, %0, r1\n\t"
        "strh r2, [r3]\n\t"
        :
        : "r"(buffer)
        : "r1", "r2", "r3", "memory"
    );

    LoadIcon(buffer, 0);
}

/* Camelot counted the trailing zero-fill halfword in the function size. */
asm(".align 2, 0\n.size LoadItemIcon, .-LoadItemIcon");
