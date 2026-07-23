# ============================================================
# reward/diamond.mcfunction — Diamante
# RECOMPENSA ESPECIAL: +1 nível
# Executado como a entidade item, na posição do item.
# ============================================================

xp add @a[tag=xp_fountain_recipient,limit=1] 1 levels
kill @s
particle minecraft:end_rod      ~ ~ ~ 0.3 0.3 0.3 0.05 8
particle minecraft:happy_villager ~ ~ ~ 0.2 0.2 0.2 0.05 5
playsound minecraft:entity.experience_orb.pickup player @a[tag=xp_fountain_recipient,distance=..32] ~ ~ ~ 0.8 1.5
