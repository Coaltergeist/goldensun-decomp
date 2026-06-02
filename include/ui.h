// ui.h
#ifndef UI_H
#define UI_H

#include <gba/types.h>

// UI banners
#define BANNER_SAVE      0
#define BANNER_CONTINUE  1
#define BANNER_COPY      2
#define BANNER_ERASE     3
#define BANNER_BATTLE    4
#if   GS1
#define BANNER_LINK      5
#define BANNER_PAUSE     6
#define BANNER_SETTINGS  7
#elif GS2
#define BANNER_TRANSFER  5
#define BANNER_UPDATE    6
#define BANNER_PAUSE     7
#define BANNER_SETTINGS  8
#endif

// UI menu options
#define UI_ATTACK          0
#define UI_PSYNERGY        1
#define UI_ITEM            2
#define UI_DEFEND          3
#define UI_FLEE            4
#define UI_YES             5
#define UI_NO              6
#define UI_STATUS          7
#define UI_CHECK           8  // unused, no icon 
#define UI_USE             9  // unused
#define UI_GIVE            10 // unused, no icon
#define UI_DROP            11 // unused (used in debug mode)
#define UI_SPEAK           12 // unused, no icon
#define UI_EQUIP           13 // unused, no icon
#define UI_FIGHT           14
#define UI_DJINN           15
#define UI_SUMMON          16
#define UI_BUY             17
#define UI_SELL            18
#define UI_ARTIFACTS       19
#define UI_REPAIR          20
#define UI_NEW_GAME        21
#define UI_CONTINUE        22
#define UI_COPY            23
#define UI_ERASE           24
#define UI_REVIVE          25
#define UI_CURE_POISON     26
#define UI_REMOVE_HAUNT    27
#define UI_REMOVE_CURSE    28
#define UI_BATTLE_MODE     29
#define UI_SEND            30
#define UI_UPDATE          31 // unused in GS1, called "Change"
#define UI_COINS           32
#define UI_LUCKY_MEDALS    33
#define UI_SPEED_SLOW      34
#define UI_SPEED_NORMAL    35
#define UI_SPEED_FAST      36
#define UI_SPEECH_OFF      37
#define UI_SPEECH_ON       38
#define UI_AUTO_SLEEP_OFF  39
#define UI_AUTO_SLEEP_ON   40
#define UI_SAVE            41
#define UI_SLEEP           42
#define UI_SETTINGS        43
#define UI_PASSWORD        44
#define UI_LINK_CABLE      45
#define UI_GOLD            46
#define UI_SILVER          47
#define UI_BRONZE          48
#if GS2
#define UI_SWITCH          49
#define UI_HUH             50 // unused
#endif

// Status effect icons
#define STATUS_ICON_POISON        1
#define STATUS_ICON_VENOM         2
#define STATUS_ICON_STUN          3
#define STATUS_ICON_PSY_SEAL      4
#define STATUS_ICON_SLEEP         5
#define STATUS_ICON_DELUSION      6
#define STATUS_ICON_HAUNT         7
#define STATUS_ICON_DEATH_CURSE   8
#define STATUS_ICON_ATTACK_UP     9
#define STATUS_ICON_ATTACK_DOWN   10
#define STATUS_ICON_DEFENSE_UP    11
#define STATUS_ICON_DEFENSE_DOWN  12
#define STATUS_ICON_RESIST_UP     13
#define STATUS_ICON_RESIST_DOWN   14
#define STATUS_ICON_EQUIP_CURSE   15
#define STATUS_ICON_DOWNED        16
#define STATUS_ICON_AGILITY_UP    17
#define STATUS_ICON_AGILITY_DOWN  18

// Localized C strings
#if   LANG == 'J'
	#define STR_HP "HP"
	#define STR_PP "EP"
	#define STR_LV "Lv"
#elif LANG == 'E'
	#define STR_HP "HP"
	#define STR_PP "PP"
	#define STR_LV "Lv"
#elif LANG == 'F'
	#define STR_HP "PV"
	#define STR_PP "PP"
	#define STR_LV "Niv"
#elif LANG == 'I'
	#define STR_HP "PS"
	#define STR_PP "PP"
	#define STR_LV "Lv"
#elif LANG == 'D'
	#define STR_HP "KP"
	#define STR_PP "PP"
	#define STR_LV "Lv"
#elif LANG == 'S'
	#define STR_HP "PV"
	#define STR_PP "PP"
	#define STR_LV "Nv."
#endif


//= Windows ====================================================================================

// UI box flags
#define BOX_ACTIVE  (1 << 0)
#define BOX_NOANIM  (1 << 1) /// Don't animate box opening or closing
//      ?           (1 << 2)
//      ?           (1 << 3)
//      ?           (1 << 4)
//      ?           (1 << 5)
//      ?           (1 << 6)
//      ?           (1 << 7)
//      ?           (1 << 8)
//      ?           (1 << 9)

/// ...
typedef struct UIBox {

} UIBox;

/// Create a new UI box.
extern UIBox* CreateUIBox(s16 x, s16 y, u16 width, u16 height, u8 flags);

/// Close a UI box.
extern void CloseUIBox(UIBox* box, bool8 noanim);


//= Text =======================================================================================

// Text commands
// TODO: check text commands for other languages
#define TX_END        0x00 /// End of string
#define TX_ENDP       0x01 /// End of textbox
#define TX_ENDM       0x02 /// End of message
#define TX_ENDL       0x03 /// End of line
#define TX_PAUSE      0x04 /// Pause
#define TX_PAUSE_S    0x05 /// Pause (short)
#define TX_PAUSE_L    0x06 /// Pause (long)
#define TX_RESET      0x07 /// Reset text attributes
#define TX_COLOR      0x08 /// Set text color
#define TX_STYLE      0x09 /// Set text style
#define TX_VOFF       0x0A /// Set text vertical offset (unused)
//      ?             0x0B
//      ?             0x0C
//      --            0x0D
//      --            0x0E
#define TX_BOXANIM    0x0F /// Set textbox animation
#define TX_LEADER     0x10 /// Print party leader's name
#define TX_PC         0x11 /// Print PC's name
#define TX_UNIT       0x12 /// Print unit name (PC or enemy)
#define TX_CLASS      0x13 /// Print class name
#define TX_ITEM       0x14 /// Print item name
#define TX_MOVE       0x15 /// Print move name
#define TX_NUM        0x16 /// Print number
//      ?             0x17
#define TX_DASH       0x18 /// Print em-dash character
#define TX_PLURAL     0x19 /// Pluralize word
#define TX_BUTTON     0x1A /// Print button icon
//      ?             0x1B
#define TX_PC_CUTOFF  0x1C /// Print PC's name cut-off (used for "F-Felix...")
#define TX_ARTICLE    0x1D /// Print article for item name (a, an, some, etc.)
#define TX_YES_NO     0x1E /// Display yes/no prompt
//      ?             0x1F

// Text styles (TX_STYLE subcommands)
//      ?         0x01
#define TX_BOLD   0x02
#define TX_SWING  0x03 // (unused)
#define TX_SHAKE  0x04
#define TX_SHOUT  0x05 // (unused)
#define TX_SPIN   0x06 // (unused)

/// ...
typedef struct HuffContext {
	u32 last;
	u8* ptr;
	u32 bits;
} HuffContext;

/// ...
typedef u16 (*NextCharFn)(HuffContext* context);

/// ...
extern void HuffStart(HuffContext* context, u16 stringID);


//= Icons ======================================================================================

#define ICON_BUFFER_SIZE 0x600

/// ...
typedef struct IconBuffer {
	/// Buffer for decompressed gfx data
	u8 buffer[ICON_BUFFER_SIZE];
	/// Icon width and height
	u16 width, height;
	/// Pointer to compressed gfx data
	const void* src;
} IconBuffer;

/// Decompress an icon to 8bpp without converting to 4bpp (unused)
extern void DecompressIcon(IconBuffer* buf);

/// ...
extern void LoadIcon(IconBuffer* buf, bool8 overlay);

/// @return the portrait ID for the given sprite
extern int GetPortraitID(u16 spriteID);


//==============================================================================================

/// Global state singleton for UI
typedef struct UIState 
{
	// ...

} UIState;


#endif // UI_H