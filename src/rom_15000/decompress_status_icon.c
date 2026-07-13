extern unsigned char *iwram_3001e94;
extern unsigned char *statusIconGraphics[] asm(".L308a0");
extern void LoadIcon(unsigned char *buffer, unsigned int icon_index);

void DecompressStatusIcon(unsigned int status_id)
{
    register unsigned char *buffer asm("r1") = iwram_3001e94;
    register unsigned char **icon_source asm("r2");
    register unsigned char *graphics asm("r3");
    register unsigned int icon_offset asm("r0");
    register unsigned int dimension asm("r2");
    register unsigned short *dimension_out asm("r3");

    icon_source = (unsigned char **)(buffer + 0x604);
    asm volatile("" : "+r"(icon_source));
    graphics = statusIconGraphics[status_id];
    asm volatile("" : "+r"(graphics));
    icon_offset = 0xc0;
    icon_offset <<= 3;
    asm volatile("" : "+r"(icon_offset));
    *icon_source = graphics;
    dimension_out = (unsigned short *)(buffer + icon_offset);
    asm volatile("" : "+r"(dimension_out));
    dimension = 2;
    asm volatile("" : "+r"(dimension));
    icon_offset += 2;
    asm volatile("" : "+r"(icon_offset));
    *dimension_out = dimension;
    dimension_out = (unsigned short *)(buffer + icon_offset);
    asm volatile("" : "+r"(dimension_out));
    *dimension_out = dimension;
    asm volatile("" ::: "memory");
    LoadIcon(buffer, 0);
}
