extern unsigned char *_GetMoveInfo(unsigned int move_id);
extern void LoadMoveIconID(unsigned int icon_id, unsigned int variant,
                           unsigned int *sprite_slot, unsigned int *tile_index,
                           int reuse_slot);

void LoadMoveIcon(unsigned int move_id, unsigned int variant,
                  unsigned int *sprite_slot, unsigned int *tile_index,
                  int reuse_slot)
{
    LoadMoveIconID(_GetMoveInfo(move_id)[4], variant, sprite_slot, tile_index,
                   reuse_slot);
}

/* Camelot counted the trailing zero-fill halfword in the function size. */
