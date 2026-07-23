# ============================================================
# Fonte de XP — periodic_check.mcfunction
# Executado uma vez por segundo (a cada 20 ticks).
# Remove fontes inválidas e detecta novas estruturas.
# A remoção ocorre antes da detecção para evitar conflitos.
# ============================================================

# Resetar o contador de ticks
scoreboard players set #global xp_fountain.tick_timer 0

# 1. Remover markers de estruturas que deixaram de ser válidas
execute as @e[type=minecraft:marker, tag=xp_fountain] at @s run function xp_fountain:remove_invalid

# 2. Detectar novas estruturas válidas próximas aos jogadores
function xp_fountain:detect_fountains
