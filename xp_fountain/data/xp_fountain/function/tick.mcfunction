# ============================================================
# Fonte de XP — tick.mcfunction
# Executado a cada tick do jogo (20x por segundo).
# Ponto de entrada principal do datapack.
# ============================================================

# Decrementar temporizadores anti-spam em todas as fontes ativas
execute as @e[type=minecraft:marker, tag=xp_fountain, scores={xp_fountain.spam_timer=1..}] run scoreboard players remove @s xp_fountain.spam_timer 1

# Processar itens próximos a cada fonte ativa (executa todo tick)
execute as @e[type=minecraft:marker, tag=xp_fountain] at @s run function xp_fountain:process_items

# Verificação periódica (detecção + limpeza) — uma vez por segundo
scoreboard players add #global xp_fountain.tick_timer 1
execute if score #global xp_fountain.tick_timer matches 20.. run function xp_fountain:periodic_check
