# ============================================================
# Fonte de XP — detect_fountains.mcfunction
# Busca estruturas de fonte válidas na área de cada jogador.
# Chamado uma vez por segundo pela periodic_check.
# ============================================================

# Para cada jogador online, escanear a área ao redor
execute as @a at @s run function xp_fountain:scan_player_area
