typedef unsigned char u8;

extern u8 *GetEnemyInfo(int enemy_id);
extern u8 *GetClassInfo(int class_id);

int Func_8079e9c(u8 *unit, int requested)
{
    register int target asm("r5") = requested;
    register u8 *source asm("r2") = unit;
    register int info_offset asm("r1") = 0x129;
    register u8 *address asm("r3") = source + info_offset;
    register int index asm("r2");
    register u8 *cursor asm("r0");
    register int value asm("r3");

    asm volatile("" : "+r"(address));
    if (*address != 0)
        goto class_path;
    info_offset--;
    address = source + info_offset;
    asm volatile("" : "+r"(address));
    cursor = GetEnemyInfo(*address);
    index = 0;
    cursor += 0x48;
    do {
        value = *cursor;
        if (value == target)
            goto true_result;
        index++;
        cursor++;
    } while (index <= 2);
    goto false_result;

class_path:
    info_offset = 0x129;
    address = source + info_offset;
    cursor = GetClassInfo(*address);
    index = 0;
    cursor += 0x50;
class_loop:
    value = *cursor;
    cursor++;
    if (value != target)
        goto class_continue;
true_result:
    cursor = (u8 *)1;
    goto done;
class_continue:
    index++;
    if (index <= 2)
        goto class_loop;
false_result:
    cursor = 0;
done:
    return (int)cursor;
}
