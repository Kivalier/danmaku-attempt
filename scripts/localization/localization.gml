// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

global.language = "E"

global.localisation = {
	E: {
		menu_start:			"Game Start",
		menu_manual:		"Manual",
		menu_language:		"English",
		menu_credits:		"Credits",
		menu_quit:			"Quit",

		control_controls:	"Controls",
		control_esc:		"Esc - Menu",
		control_z:			"Z - Shoot",
		control_shift:		"Shift - Slow Movement",
		control_r:			"R - Restart",
		control_x:			"X - Bomb",
		control_arrows:		"Arrows - Movement",
		
		credit_credits:		"Credits",
		credit_fonts:		"Fonts:",
		credit_music:		"Music:",
		credit_sprites:		"Sprites:",
		
		game_title:			"Magus Night",
		game_hiscore:		"Highscore",
		game_score:			"Score",
		game_bomb:			"Bombs: ",
		game_life:			"Lives: ",
	},
	M: {
		menu_start:			"Timata Kemu",
		menu_manual:		"Pukapuka Tohutohu",
		menu_language:		"Maori",
		menu_credits:		"Whakaaetanga",
		menu_quit:			"Ara ki Waho",
		
		control_controls:	"Pukapuka Tohutohu",
		control_esc:		"Esc - Tahua",
		control_z:			"Z - Pipihi",
		control_shift:		"Shift - Puhoi Haere",
		control_r:			"R - Tukurua Kemu",
		control_x:			"X - Pohu",
		control_arrows:		"Arrows - Te Neke",
		
		credit_credits:		"Whakaaetanga",
		credit_fonts:		"Momotuhi",
		credit_music:		"Puoro",
		credit_sprites:		"Toi Ataata",

		game_title:			"Po Makutu",
		game_hiscore:		"Kaute Teitei",
		game_score:			"Tapeke",
		game_bomb:			"Pohu: ",
		game_life:			"Ora: ",
	}
}

function get_lng_var(_key) {
   return global.localisation[$ global.language][$ _key]
}