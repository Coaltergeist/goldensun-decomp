#include "gba/types.h"

extern u8 *iwram_3001e98;
extern const u8 _FILE_f1[];
extern void *Func_801b36c(void *state);
extern u8 *galloc_iwram(int slot, int size);
extern const u8 *GetFile(const u8 *file);
extern void DecompressLZ1(const void *source, void *destination);
extern int AllocSpriteSlot(void);
extern int UploadSpriteGFX(int slot, int size, const void *data);
extern void gfree(int slot);

void Func_801c188(void)
{
    register u8 *state asm("r5") = iwram_3001e98;
    register u8 *entry asm("r6") = Func_801b36c(state);
    register u8 *buffer asm("r7");
    register int icon asm("r8");
    register const u8 *fileArg asm("r0");
    const u8 *file;
    const u8 *source;
    int result;
    u16 kind = *(u16 *)(entry + 10);

    if (kind != 1 && kind != 6)
        return;

    buffer = galloc_iwram(0x11, 0x608);
    asm volatile (
        "mov r3, #0xc3\n\t"
        "lsl r3, #2\n\t"
        "add r5, r3\n\t"
        "ldrh r3, [r6, #8]\n\t"
        "mov r7, r0\n\t"
        "ldr r0, =_FILE_f1\n\t"
        "mov r8, r3"
        : "+r" (state), "=r" (buffer), "=r" (icon), "=r" (fileArg) : "r" (entry) : "r3", "memory");
    file = GetFile(fileArg);
    asm volatile (
        "ldr r3, =0x604\n\t"
        "add r2, r7, r3\n\t"
        "ldrh r3, [r6, #8]\n\t"
        "lsl r3, #1\n\t"
        "ldrh r3, [r3, r0]\n\t"
        "add r0, r3\n\t"
        "str r0, [r2]"
        : "=r" (source) : "r" (file), "r" (buffer), "r" (entry) : "r2", "r3", "memory");
    DecompressLZ1(source, buffer);

    if (*(u16 *)(state + 10) == 0)
        *(u16 *)(state + 12) = AllocSpriteSlot();

    result = UploadSpriteGFX(*(u16 *)(state + 12), 0x400, buffer);
    asm volatile (
        "mov r3, #1\n\t"
        "strh r3, [r5, #0xa]\n\t"
        "mov r3, r8\n\t"
        "strh r3, [r5, #8]\n\t"
        "mov r3, #0x28\n\t"
        "strh r3, [r5, #0x22]\n\t"
        "strh r3, [r5, #0x24]\n\t"
        "mov r3, #0xf0\n\t"
        "strh r0, [r5, #0xe]\n\t"
        "strh r3, [r5, #0x26]"
        : : "r" (state), "r" (icon), "r" (result) : "r3", "memory");
    gfree(0x11);
}
