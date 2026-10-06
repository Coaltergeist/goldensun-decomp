#ifndef FIELD_MAP_TILE_H
#define FIELD_MAP_TILE_H

// Four-byte entry used by the map tile-fill helpers (128 entries per row).
// The inherited suffix does not describe the entry size.
struct MapTile_528 {
    unsigned short a;
    unsigned char b;
    unsigned char c;
};

// Target ABI checks for the production compiler.
typedef char MapTile_528SizeCheck[(sizeof(struct MapTile_528) == 4) ? 1 : -1];
typedef char MapTile_528AlignmentCheck[(__alignof__(struct MapTile_528) == 4) ? 1 : -1];
typedef char MapTile_528FieldWidthsCheck[
    (sizeof(((struct MapTile_528 *)0)->a) == 2 &&
     sizeof(((struct MapTile_528 *)0)->b) == 1 &&
     sizeof(((struct MapTile_528 *)0)->c) == 1) ? 1 : -1];
typedef char MapTile_528OffsetsCheck[
    ((unsigned long)&((struct MapTile_528 *)0)->a == 0 &&
     (unsigned long)&((struct MapTile_528 *)0)->b == 2 &&
     (unsigned long)&((struct MapTile_528 *)0)->c == 3) ? 1 : -1];

#endif // FIELD_MAP_TILE_H
