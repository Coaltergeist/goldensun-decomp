typedef unsigned char u8;

extern void _DrawSmallText(int text_id, int destination, int zero, int color);

void Func_80a8508(int destination, int selected, const u8 *enabled)
{
    int count = 0;
    int i;

    for (i = 0; i < 5; i++) {
        if (enabled[i] != 0) {
            if (selected == count) {
                register int text_id asm("r5");
                __asm__ volatile ("" : "+r" (i));
                text_id = 0xbdc + i * 2;
                _DrawSmallText(text_id, destination, 0, -1);
                text_id++;
                _DrawSmallText(text_id, destination, 0, 0xf);
            }
            count++;
        }
    }

    if (count == 0)
        _DrawSmallText(0xbda, destination, 0, 0);
}
