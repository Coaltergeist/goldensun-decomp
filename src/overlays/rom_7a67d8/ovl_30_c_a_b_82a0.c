extern unsigned char *iwram_3001e70;
extern unsigned int iwram_3001e40;
extern volatile int split_line asm(".L610");
extern volatile unsigned short upper_scroll asm(".L614");
extern volatile unsigned short lower_scroll asm(".L616");

void OvlFunc_919_20082a0(void)
{
    register unsigned char **camera_slot asm("r3");
    register unsigned int index asm("r1");
    register unsigned char *camera asm("r2");
    register unsigned int field_offset asm("r3");
    register int screen_y asm("r1");
    register int split asm("r3");
    register volatile int *split_ptr asm("r0");
    register volatile unsigned short *upper_ptr asm("r3");
    register unsigned int upper_offset asm("r1");
    register int upper asm("r2");

    camera_slot = &iwram_3001e70;
    asm volatile("" : "+r" (camera_slot) : : "memory");
    index = 0x82;
    asm volatile("" : "+r" (index) : : "memory");
    camera = *camera_slot;
    asm volatile("" : "+r" (camera) : : "memory");
    index <<= 1;
    camera += index;
    field_offset = 6;
    asm("" : "+r" (field_offset));
    screen_y = *(short *)(camera + field_offset);
    asm("" : "+r" (screen_y));
    split_ptr = &split_line;
    asm volatile("" : "+r" (split_ptr) : : "memory");
    split = 0xc0;
    split -= screen_y;
    *split_ptr = split;

    upper_ptr = &upper_scroll;
    asm volatile("" : "+r" (upper_ptr) : : "memory");
    upper_offset = 2;
    asm("" : "+r" (upper_offset));
    upper = *(short *)(camera + upper_offset);
    asm("" : "+r" (upper));
    *upper_ptr = upper;
    lower_scroll = upper - (iwram_3001e40 >> 2);
}
