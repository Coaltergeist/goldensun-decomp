extern unsigned char gState[];
extern unsigned char *GetSpriteVoiceEntry(int sprite);

int GetSpriteVoice(int sprite) {
    unsigned int voice;

    if (gState[0x20a] == 0)
        return 0;
    voice = GetSpriteVoiceEntry(sprite)[2];
    if (voice == 0xff)
        return 0;
    return voice + 0x100;
}
