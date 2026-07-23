# ============================================================
# Fonte de XP — activate_fountain.mcfunction
# Executado exatamente uma vez por estrutura válida descoberta.
# Cria o marker invisível, inicializa seus scores, toca o som
# de ativação e gera partículas mágicas breves.
# ============================================================

# Criar o marker invisível no centro da estrutura (sobre o bloco de ouro)
summon minecraft:marker ~ ~ ~ {Tags:["xp_fountain"]}

# Inicializar scores do marker recém-criado
execute as @e[type=minecraft:marker,tag=xp_fountain,distance=..0.1,limit=1,sort=nearest] run scoreboard players set @s xp_fountain.spam_timer  0
execute as @e[type=minecraft:marker,tag=xp_fountain,distance=..0.1,limit=1,sort=nearest] run scoreboard players set @s xp_fountain.nearby_count 0

# Som de ativação (ouvido por jogadores a até 15 blocos)
playsound minecraft:block.beacon.activate block @a[distance=..15] ~ ~ ~ 1.0 1.0

# Partículas de ativação — efeito mágico breve
particle minecraft:end_rod        ~ ~1   ~ 0.5 0.5 0.5 0.10 40
particle minecraft:soul_fire_flame ~ ~0.5 ~ 0.4 0.4 0.4 0.05 25
particle minecraft:dragon_breath   ~ ~1   ~ 0.6 0.6 0.6 0.05 20
