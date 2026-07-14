typedef unsigned int u32;
typedef unsigned char u8;

extern char *PrintNum(char *buffer, int number, int digits);

char *Func_801f680(u32 frames, char *output_arg)
{
    char buffer[64];
    register char *output asm("r7") = output_arg;
    register char *stack_buffer asm("r8");
    register u32 total asm("r6");
    register u32 minutes asm("r5");
    register u32 seconds asm("r6");
    char *text;

    total = frames / 0xe10;
    if (total > 0xea5f)
        total = 0xea5f;

    minutes = total / 60;
    seconds = total % 60;
    stack_buffer = buffer;
    text = PrintNum(stack_buffer, minutes, 3);
    output[0] = text[0];
    text++;
    {
        register char *destination asm("r5") = output + 1;
        destination[0] = text[0];
        destination++;
        destination[0] = text[1];
        seconds += 100;
        destination++;
        destination[0] = ':';
        text = PrintNum(stack_buffer, seconds, 2);
        destination++;
        destination[0] = text[0];
        destination++;
        destination[0] = text[1];
        destination[1] = 0;
    }
    return output;
}
