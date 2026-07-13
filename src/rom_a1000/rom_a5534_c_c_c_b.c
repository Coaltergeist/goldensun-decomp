extern unsigned char *_GetMoveInfo(unsigned int move_id);

int Func_80a735c(unsigned int move_id)
{
    unsigned char *move;
    unsigned int kind;
    int result;

    move_id <<= 18;
    __asm__ volatile ("" : "+r" (move_id));
    move_id >>= 18;
    move = _GetMoveInfo(move_id);

    if (move[12] != 0)
        goto false_result;

    kind = move[1] & 0xc0;
    result = 1;
    __asm__ volatile ("" : "+r" (result));
    if (kind != 0xc0)
        goto done;

false_result:
    result = 0;
done:
    return result;
}

/* Camelot counted the trailing zero-fill halfword in the function size. */
asm(".align 2, 0\n.size Func_80a735c, .-Func_80a735c");
