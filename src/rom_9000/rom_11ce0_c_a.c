typedef unsigned char u8;

typedef int (*TerrainFunction)(u8 *entry, int x, int z);

extern u8 *iwram_3001e70;
extern u8 gBuffer[];
extern u8 ewram_202c000[];
extern u8 ewram_202c001[];
extern TerrainFunction gTerrainFunctions[] asm(".L134fc");

int Func_8011f54(unsigned int layer, int x_argument, int z_argument)
{
    register int x asm("r5");
    register int z asm("r6");
    register u8 *map asm("r2");
    register u8 *map_data asm("r1");
    register u8 *entry_base asm("r7");
    register int tile_x asm("r3");
    register int cell_x asm("r1");
    register int tile_z asm("r3");
    register int result asm("r0");

    asm volatile("ldr r3, =iwram_3001e70\n\t"
                 "mov r5, %3\n\t"
                 "ldr r1, [r3]\n\t"
                 "mov r6, %4\n\t"
                 "asr r5, #16\n\t"
                 "asr r6, #16\n\t"
                 "ldr r2, =gBuffer"
                 : "=r"(x), "=r"(z), "=r"(map), "=r"(map_data)
                 : "r"(z_argument), "3"(x_argument)
                 : "r3");
    asm volatile("cmp r1, #0\n\t"
                 "beq 1f\n\t"
                 "mov r2, #3\n\t"
                 "and r2, r0\n\t"
                 "lsl r3, r2, #1\n\t"
                 "add r3, r2\n\t"
                 "mov r2, #0x98\n\t"
                 "lsl r2, #1\n\t"
                 "lsl r3, #4\n\t"
                 "add r3, r2\n\t"
                 "ldr r2, [r1, r3]\n"
                 "1:"
                 : "+r"(map)
                 : "r"(map_data), "r"(layer)
                 : "r3", "cc");

    tile_x = x;
    if (x < 0)
        tile_x += 15;
    cell_x = tile_x >> 4;

    tile_z = z;
    if (z < 0)
        tile_z += 15;
    tile_z >>= 4;

    asm volatile("lsl r3, #7\n\t"
                 "add r3, r1, r3\n\t"
                 "lsl r3, #2\n\t"
                 "add r2, r3\n\t"
                 "ldrb r1, [r2, #3]\n\t"
                 "ldr r3, =ewram_202c000\n\t"
                 "lsl r1, #2\n\t"
                 "add r0, r1, r3\n\t"
                 "mov r2, #0xf\n\t"
                 "ldrb r0, [r0]\n\t"
                 "mov r3, r2\n\t"
                 "ldr r4, =.L134fc\n\t"
                 "and r3, r0\n\t"
                 "ldr r7, =ewram_202c001\n\t"
                 "and r5, r2\n\t"
                 "and r6, r2\n\t"
                 "lsl r3, #2\n\t"
                 "add r0, r1, r7\n\t"
                 "ldr r3, [r4, r3]\n\t"
                 "mov r1, r5\n\t"
                 "mov r2, r6\n\t"
                 "bl _call_via_r3"
                 : "=r"(result), "=r"(entry_base)
                 : "r"(map), "r"(cell_x), "r"(tile_z), "r"(x), "r"(z)
                 : "r4");
    return result;
}
