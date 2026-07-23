# ============================================================
# reward/netherite.mcfunction — Lingote de Netherite
# RECOMPENSA ESPECIAL: +5 níveis
# Executado como a entidade item, na posição do item.
# ============================================================

xp add @a[tag=xp_fountain_recipient,limit=1] 5 levels
kill @s
particle minecraft:end_rod       ~ ~ ~ 0.4 0.4 0.4 0.08 15
particle minecraft:soul_fire_flame ~ ~ ~ 0.3 0.3 0.3 0.05 10
particle minecraft:happy_villager ~ ~ ~ 0.3 0.3 0.3 0.05  8
playsound minecraft:entity.experience_orb.pickup player @a[tag=xp_fountain_recipient,distance=..32] ~ ~ ~ 1.0 1.8
