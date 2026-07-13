extern int frame_counter asm(".L17f4");
extern int intensity asm(".L17f0");

void OvlFunc_970_2008168(void)
{
    frame_counter++;
    if (frame_counter == 0x28 && intensity > 4) {
        intensity--;
        frame_counter = 0;
    }
}
