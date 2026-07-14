typedef unsigned char u8;
typedef short s16;

extern u8 *iwram_3001f38;
extern void Func_8016478(void *window);
extern void DrawSmallText(int text_id, void *window, int x, int y);

void Func_8028b80(void)
{
    register u8 *state asm("r6") = iwram_3001f38;
    register s16 *previous asm("r0") = (s16 *)(state + 0x96);
    register u8 *selection asm("r5") = state + 0x8c;

    if (*previous != *(s16 *)selection) {
        *previous = *(s16 *)selection;
        Func_8016478(*(void **)(state + 0x7c));
        if (*(s16 *)selection == 0) {
            selection = (u8 *)0xc71;
            DrawSmallText((int)selection, *(void **)(state + 0x7c), 0x10, 4);
            ++selection;
            DrawSmallText((int)selection, *(void **)(state + 0x7c), 0x10, 0x10);
        } else {
            selection = (u8 *)0xc73;
            DrawSmallText((int)selection, *(void **)(state + 0x7c), 0, 4);
            DrawSmallText((int)(selection + 1), *(void **)(state + 0x7c), 0, 0x10);
            selection += 2;
            DrawSmallText((int)selection, *(void **)(state + 0x7c), 0, 0x1c);
        }
    }
}
