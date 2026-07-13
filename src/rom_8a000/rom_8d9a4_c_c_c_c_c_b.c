typedef unsigned char u8;
typedef unsigned short u16;

typedef struct SpriteVoiceEntry {
    u16 spriteId;
    u8 voice;
    u8 variant;
} SpriteVoiceEntry;

/* Preserve the table's original section-relative relocation. */
asm(".section .rodata\n.text");
extern SpriteVoiceEntry spriteVoices[] asm(".rodata+0x370");

SpriteVoiceEntry *GetSpriteVoiceEntry(int spriteId)
{
    SpriteVoiceEntry *entry = spriteVoices;
    unsigned int index = 0;

    if (entry->spriteId != spriteId) {
        do {
            index++;
            entry++;
            if (index > 0x81)
                break;
        } while (entry->spriteId != spriteId);
    }

    return entry;
}
