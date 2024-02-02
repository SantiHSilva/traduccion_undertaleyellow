switch room
{
    case rm_ruins00:
    case 60:
    case 77:
    case 81:
    case 124:
    case 213:
        global.player_sprites = "normal"
        break
    case 43:
    case 56:
    case 59:
    case 72:
        global.player_sprites = "snowdin"
        break
    case 101:
        global.player_sprites = "dunescave"
        break
}

scr_texture_page_handler()
