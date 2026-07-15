#include "gba/types.h"

void OvlFunc_880_20082f4(int value, u8 *output)
{
    register int character asm("r3");

    output[1] = 0;
    output[2] = 0;
    if (value > 7) goto next1;
    __asm__ volatile ("@ barrier 1" : : : "memory");
    character = value + 0x41; __asm__ volatile ("@ a1" : "+r" (character)); goto done;
next1:
    if (value > 0xc) goto next2;
    __asm__ volatile ("@ barrier 2" : : : "memory");
    character = value + 0x42; __asm__ volatile ("@ a2" : "+r" (character)); goto done;
next2:
    if (value > 0x17) goto next3;
    __asm__ volatile ("@ barrier 3" : : : "memory");
    character = value + 0x43; __asm__ volatile ("@ a3" : "+r" (character)); goto done;
next3:
    if (value > 0x1f) goto next4;
    __asm__ volatile ("@ barrier 4" : : : "memory");
    character = value + 0x1a; __asm__ volatile ("@ a4" : "+r" (character)); goto done;
next4:
    if (value > 0x2a) goto next5;
    __asm__ volatile ("@ barrier 5" : : : "memory");
    character = value + 0x41; __asm__ volatile ("@ a5" : "+r" (character)); goto done;
next5:
    if (value > 0x2c) goto next6;
    __asm__ volatile ("@ barrier 6" : : : "memory");
    character = value + 0x42; __asm__ volatile ("@ a6" : "+r" (character)); goto done;
next6:
    if (value > 0x37) goto next7;
    __asm__ volatile ("@ barrier 7" : : : "memory");
    character = value + 0x43; __asm__ volatile ("@ a7" : "+r" (character)); goto done;
next7:
    if (value != 0x38) goto next8;
    __asm__ volatile ("@ barrier 8" : : : "memory");
    character = 0x21; goto done;
next8:
    if (value != 0x39) goto next9;
    __asm__ volatile ("@ barrier 9" : : : "memory");
    character = 0x3f; goto done;
next9:
    if (value != 0x3a) goto next10;
    __asm__ volatile ("@ barrier 10" : : : "memory");
    character = 0x23; goto done;
next10:
    if (value != 0x3b) goto next11;
    __asm__ volatile ("@ barrier 11" : : : "memory");
    character = 0x26; goto done;
next11:
    if (value != 0x3c) goto next12;
    __asm__ volatile ("@ barrier 12" : : : "memory");
    character = 0x24; goto done;
next12:
    if (value != 0x3d) goto next13;
    __asm__ volatile ("@ barrier 13" : : : "memory");
    character = 0x25; goto done;
next13:
    if (value != 0x3e) goto other;
    __asm__ volatile ("@ barrier 14" : : : "memory");
    character = 0x2b; goto done;
other:
    character = 0x3d;
done:
    output[0] = character;
}
