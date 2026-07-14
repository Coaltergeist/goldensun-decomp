extern void DeleteSpriteLayer(void *layer);

void Sprite_DeleteLayerIndex(unsigned char *sprite, unsigned int index)
{
    unsigned int off;
    void *val;
    unsigned int i;
    unsigned int count;

    if (sprite == 0)
        return;
    if (index > 3)
        return;

    off = (index << 2) + 0x28;
    val = *(void **)(sprite + off);
    if (val == 0)
        return;

    DeleteSpriteLayer(val);
    *(unsigned int *)(sprite + off) = 0;
    count = 0;
    for (i = index + 1; i <= 3; i++) {
        if (*(unsigned int *)(sprite + 0x28 + (i << 2)) != 0)
            count++;
    }
    if (count == 0)
        sprite[0x27] = (unsigned char)index;
}
