extern unsigned char *_GetMoveInfo(unsigned int move_id);
extern void LoadItemIconID(unsigned int icon_id, unsigned int variant,
                           unsigned int *sprite_slot, unsigned int *tile_index,
                           int reuse_slot);

void LoadOldMoveIcon(unsigned int move_id, unsigned int variant,
                     unsigned int *sprite_slot, unsigned int *tile_index,
                     int reuse_slot)
{
    LoadItemIconID(_GetMoveInfo(move_id)[4], variant, sprite_slot, tile_index,
                   reuse_slot);
}

/* Camelot counted the trailing zero-fill halfword in the function size. */
asm(".align 2, 0\n.size LoadOldMoveIcon, .-LoadOldMoveIcon");
