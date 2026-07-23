# ============================================================
# Fonte de XP — scan_horizontal_plane.mcfunction
# Verifica uma grade 5×5 no plano Y atual.
# Para cada posição com bloco de ouro e sem marker existente,
# chama validate_and_create.
# A verificação de bloco falha rapidamente para posições vazias,
# tornando este escaneamento leve em situação normal.
# ============================================================

# Linha Z-2
execute positioned ~-2 ~ ~-2 if block ~ ~ ~ minecraft:gold_block unless entity @e[type=minecraft:marker,tag=xp_fountain,distance=..0.5] run function xp_fountain:validate_and_create
execute positioned ~-1 ~ ~-2 if block ~ ~ ~ minecraft:gold_block unless entity @e[type=minecraft:marker,tag=xp_fountain,distance=..0.5] run function xp_fountain:validate_and_create
execute positioned ~ ~ ~-2 if block ~ ~ ~ minecraft:gold_block unless entity @e[type=minecraft:marker,tag=xp_fountain,distance=..0.5] run function xp_fountain:validate_and_create
execute positioned ~1 ~ ~-2 if block ~ ~ ~ minecraft:gold_block unless entity @e[type=minecraft:marker,tag=xp_fountain,distance=..0.5] run function xp_fountain:validate_and_create
execute positioned ~2 ~ ~-2 if block ~ ~ ~ minecraft:gold_block unless entity @e[type=minecraft:marker,tag=xp_fountain,distance=..0.5] run function xp_fountain:validate_and_create

# Linha Z-1
execute positioned ~-2 ~ ~-1 if block ~ ~ ~ minecraft:gold_block unless entity @e[type=minecraft:marker,tag=xp_fountain,distance=..0.5] run function xp_fountain:validate_and_create
execute positioned ~-1 ~ ~-1 if block ~ ~ ~ minecraft:gold_block unless entity @e[type=minecraft:marker,tag=xp_fountain,distance=..0.5] run function xp_fountain:validate_and_create
execute positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:gold_block unless entity @e[type=minecraft:marker,tag=xp_fountain,distance=..0.5] run function xp_fountain:validate_and_create
execute positioned ~1 ~ ~-1 if block ~ ~ ~ minecraft:gold_block unless entity @e[type=minecraft:marker,tag=xp_fountain,distance=..0.5] run function xp_fountain:validate_and_create
execute positioned ~2 ~ ~-1 if block ~ ~ ~ minecraft:gold_block unless entity @e[type=minecraft:marker,tag=xp_fountain,distance=..0.5] run function xp_fountain:validate_and_create

# Linha Z=0
execute positioned ~-2 ~ ~ if block ~ ~ ~ minecraft:gold_block unless entity @e[type=minecraft:marker,tag=xp_fountain,distance=..0.5] run function xp_fountain:validate_and_create
execute positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:gold_block unless entity @e[type=minecraft:marker,tag=xp_fountain,distance=..0.5] run function xp_fountain:validate_and_create
execute positioned ~ ~ ~ if block ~ ~ ~ minecraft:gold_block unless entity @e[type=minecraft:marker,tag=xp_fountain,distance=..0.5] run function xp_fountain:validate_and_create
execute positioned ~1 ~ ~ if block ~ ~ ~ minecraft:gold_block unless entity @e[type=minecraft:marker,tag=xp_fountain,distance=..0.5] run function xp_fountain:validate_and_create
execute positioned ~2 ~ ~ if block ~ ~ ~ minecraft:gold_block unless entity @e[type=minecraft:marker,tag=xp_fountain,distance=..0.5] run function xp_fountain:validate_and_create

# Linha Z+1
execute positioned ~-2 ~ ~1 if block ~ ~ ~ minecraft:gold_block unless entity @e[type=minecraft:marker,tag=xp_fountain,distance=..0.5] run function xp_fountain:validate_and_create
execute positioned ~-1 ~ ~1 if block ~ ~ ~ minecraft:gold_block unless entity @e[type=minecraft:marker,tag=xp_fountain,distance=..0.5] run function xp_fountain:validate_and_create
execute positioned ~ ~ ~1 if block ~ ~ ~ minecraft:gold_block unless entity @e[type=minecraft:marker,tag=xp_fountain,distance=..0.5] run function xp_fountain:validate_and_create
execute positioned ~1 ~ ~1 if block ~ ~ ~ minecraft:gold_block unless entity @e[type=minecraft:marker,tag=xp_fountain,distance=..0.5] run function xp_fountain:validate_and_create
execute positioned ~2 ~ ~1 if block ~ ~ ~ minecraft:gold_block unless entity @e[type=minecraft:marker,tag=xp_fountain,distance=..0.5] run function xp_fountain:validate_and_create

# Linha Z+2
execute positioned ~-2 ~ ~2 if block ~ ~ ~ minecraft:gold_block unless entity @e[type=minecraft:marker,tag=xp_fountain,distance=..0.5] run function xp_fountain:validate_and_create
execute positioned ~-1 ~ ~2 if block ~ ~ ~ minecraft:gold_block unless entity @e[type=minecraft:marker,tag=xp_fountain,distance=..0.5] run function xp_fountain:validate_and_create
execute positioned ~ ~ ~2 if block ~ ~ ~ minecraft:gold_block unless entity @e[type=minecraft:marker,tag=xp_fountain,distance=..0.5] run function xp_fountain:validate_and_create
execute positioned ~1 ~ ~2 if block ~ ~ ~ minecraft:gold_block unless entity @e[type=minecraft:marker,tag=xp_fountain,distance=..0.5] run function xp_fountain:validate_and_create
execute positioned ~2 ~ ~2 if block ~ ~ ~ minecraft:gold_block unless entity @e[type=minecraft:marker,tag=xp_fountain,distance=..0.5] run function xp_fountain:validate_and_create
