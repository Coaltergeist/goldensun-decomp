typedef short s16;

int Func_80b6c08(int kind, s16 *values);
void Func_80c0f98(int value, int enabled);

void Func_80c1014(int excluded)
{
    s16 values[14];
    int count = Func_80b6c08(3, values);
    int i;

    for (i = 0; i < count; i++) {
        if (values[i] != excluded) {
            Func_80c0f98(values[i], 1);
        }
    }
}
