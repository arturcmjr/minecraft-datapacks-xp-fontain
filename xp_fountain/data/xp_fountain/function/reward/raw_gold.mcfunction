# ============================================================
# reward/raw_gold.mcfunction — Minério de Ouro Bruto
# XP bruto: 20 pontos
# Executado como a entidade item, na posição do item.
# ============================================================

xp add @a[tag=xp_fountain_recipient,limit=1] 20 points
kill @s
particle minecraft:happy_villager ~ ~ ~ 0.3 0.3 0.3 0.05 5
playsound minecraft:entity.experience_orb.pickup player @a[tag=xp_fountain_recipient,distance=..32] ~ ~ ~ 0.5 1.2
