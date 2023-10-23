audio_stop_all()

if audio_is_playing(bgm_menu) begin return end
if audio_is_playing(bgm_game) begin return end

audio_play_sound(bgm_game, 500, false)