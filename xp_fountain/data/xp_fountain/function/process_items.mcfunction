# ============================================================
# Fonte de XP — process_items.mcfunction
# Executado como o marker da fonte, na posição do marker.
# Conta quantos jogadores estão a ≤3 blocos (excluindo espectadores).
#
#   0 jogadores → não faz nada
#   1 jogador   → processa itens (check_items)
#   2+ jogadores → bloqueia e exibe aviso (warn_multiple_players)
#
# Técnica de contagem: o marker é temporariamente marcado com
# a tag "xp_fountain_active" para que cada jogador próximo
# consiga localizá-lo e adicionar 1 ao seu score.
# ============================================================

# Marcar este marker para a contagem
tag @s add xp_fountain_active

# Zerar contador e contar jogadores próximos
scoreboard players set @s xp_fountain.nearby_count 0
execute as @a[distance=..3,gamemode=!spectator] \
  run scoreboard players add @e[type=minecraft:marker,tag=xp_fountain_active,distance=..5] xp_fountain.nearby_count 1

# Remover tag temporária
tag @s remove xp_fountain_active

# Nenhum jogador próximo — nada a fazer
execute if score @s xp_fountain.nearby_count matches 0 run return 0

# Múltiplos jogadores — bloquear e avisar
execute if score @s xp_fountain.nearby_count matches 2.. run function xp_fountain:warn_multiple_players

# Exatamente 1 jogador — processar itens
execute if score @s xp_fountain.nearby_count matches 1 run function xp_fountain:check_items
