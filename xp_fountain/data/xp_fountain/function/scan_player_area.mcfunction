# ============================================================
# Fonte de XP — scan_player_area.mcfunction
# Escaneia 4 planos horizontais ao redor do jogador
# (Y-2, Y-1, Y, Y+1) em busca de blocos de ouro sem marker.
# Chamado como/na posição do jogador.
# ============================================================

execute positioned ~ ~-2 ~ run function xp_fountain:scan_horizontal_plane
execute positioned ~ ~-1 ~ run function xp_fountain:scan_horizontal_plane
execute positioned ~ ~ ~ run function xp_fountain:scan_horizontal_plane
execute positioned ~ ~1 ~ run function xp_fountain:scan_horizontal_plane

