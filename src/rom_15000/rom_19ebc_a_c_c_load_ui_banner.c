extern unsigned char Banner1[] asm("Data_31864_1");
extern unsigned char Banner2[] asm("Data_31864_2");
extern unsigned char Banner3[] asm("Data_31864_3");
extern unsigned char BannerDefault[] asm("Data_31864_4");
extern void UploadSpriteGFX(void *destination, int size, const void *graphics);

asm(
    ".set Data_31864_1, Data_31864\n"
    ".set Data_31864_2, Data_31864\n"
    ".set Data_31864_3, Data_31864\n"
    ".set Data_31864_4, Data_31864"
);

int LoadUIBanner(unsigned int banner, int unused, void *destination)
{
    const void *graphics;

    switch (banner) {
    case 1:
        graphics = Banner1;
        break;
    case 2:
        graphics = Banner2;
        break;
    case 3:
        graphics = Banner3;
        break;
    case 0:
    default:
        graphics = BannerDefault;
        break;
    }
    UploadSpriteGFX(destination, 0x20, graphics);
    return 1;
}
