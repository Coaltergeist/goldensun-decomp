typedef unsigned char u8;

typedef struct State {
    u8 padding[0xc8];
    u8 *entries[5];
} State;

extern State *iwram_3001f2c;
extern void _Func_801bcd4(int a, int value, int sprite, int d);

int Func_80a9dc4(const u8 *enabled)
{
    State *state = iwram_3001f2c;
    int index;

    for (index = 0; index <= 4; index++) {
        if (enabled[index] != 0) {
            int value;

            switch (index) {
            case 0:
                value = 0x10;
                break;
            case 1:
                value = 1;
                break;
            case 2:
                value = 2;
                break;
            case 3:
                value = 0xf;
                break;
            case 4:
                value = 7;
                break;
            default:
                value = 0;
                break;
            }

            _Func_801bcd4(8, value, state->entries[index][0xe], 0);
        }
    }
    return 1;
}
