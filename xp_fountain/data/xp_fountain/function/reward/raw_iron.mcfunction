# ============================================================
# reward/raw_iron.mcfunction — Minério de Ferro Bruto
# XP bruto: 15 pontos
# Executado como a entidade item, na posição do item.
# ============================================================

xp add @a[tag=xp_fountain_recipient,limit=1] 15 points
kill @s
particle minecraft:happy_villager ~ ~ ~ 0.3 0.3 0.3 0.05 5
playsound minecraft:entity.experience_orb.pickup player @a[tag=xp_fountain_recipient,distance=..32] ~ ~ ~ 0.5 1.2
