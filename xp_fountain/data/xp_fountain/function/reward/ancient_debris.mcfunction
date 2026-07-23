# ============================================================
# reward/ancient_debris.mcfunction — Detrito Antigo
# XP bruto: 50 pontos
# Executado como a entidade item, na posição do item.
# ============================================================

xp add @a[tag=xp_fountain_recipient,limit=1] 50 points
kill @s
particle minecraft:soul_fire_flame ~ ~ ~ 0.3 0.3 0.3 0.05 8
particle minecraft:happy_villager  ~ ~ ~ 0.3 0.3 0.3 0.05 5
playsound minecraft:entity.experience_orb.pickup player @a[tag=xp_fountain_recipient,distance=..32] ~ ~ ~ 0.7 1.4
