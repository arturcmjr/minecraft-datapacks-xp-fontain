# ============================================================
# Fonte de XP — check_items.mcfunction
# Executado como o marker da fonte, na posição do marker.
# Pré-condição: exatamente 1 jogador não-espectador a ≤3 blocos.
#
# Passo 1: Marca o jogador próximo com a tag "xp_fountain_recipient"
#           para que as funções de recompensa saibam a quem dar XP.
# Passo 2: Para cada tipo de minério aceito, busca itens a ≤2 blocos
#           que estejam dentro de água (level=0 ou fluindo).
#           "at @s" reposiciona na entidade do item para checar o bloco.
# Passo 3: Remove a tag do jogador.
#
# Para adicionar/remover minérios aceitos ou ajustar raio:
#   - Adicione/remova linhas "execute as @e[...]" abaixo.
#   - Crie/remova o arquivo correspondente em reward/.
# ============================================================

# Marcar o único jogador próximo como destinatário da recompensa
execute as @a[distance=..3,gamemode=!spectator,limit=1,sort=nearest] run tag @s add xp_fountain_recipient

# --- Verificar cada minério aceito (raio ≤2, apenas em água) ---

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:coal"}},distance=..2] at @s if block ~ ~ ~ minecraft:water run function xp_fountain:reward/coal

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:raw_iron"}},distance=..2] at @s if block ~ ~ ~ minecraft:water run function xp_fountain:reward/raw_iron

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_ingot"}},distance=..2] at @s if block ~ ~ ~ minecraft:water run function xp_fountain:reward/iron_ingot

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:raw_copper"}},distance=..2] at @s if block ~ ~ ~ minecraft:water run function xp_fountain:reward/raw_copper

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:copper_ingot"}},distance=..2] at @s if block ~ ~ ~ minecraft:water run function xp_fountain:reward/copper_ingot

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:raw_gold"}},distance=..2] at @s if block ~ ~ ~ minecraft:water run function xp_fountain:reward/raw_gold

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:gold_ingot"}},distance=..2] at @s if block ~ ~ ~ minecraft:water run function xp_fountain:reward/gold_ingot

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:lapis_lazuli"}},distance=..2] at @s if block ~ ~ ~ minecraft:water run function xp_fountain:reward/lapis

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:redstone"}},distance=..2] at @s if block ~ ~ ~ minecraft:water run function xp_fountain:reward/redstone

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond"}},distance=..2] at @s if block ~ ~ ~ minecraft:water run function xp_fountain:reward/diamond

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:emerald"}},distance=..2] at @s if block ~ ~ ~ minecraft:water run function xp_fountain:reward/emerald

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:quartz"}},distance=..2] at @s if block ~ ~ ~ minecraft:water run function xp_fountain:reward/quartz

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_ingot"}},distance=..2] at @s if block ~ ~ ~ minecraft:water run function xp_fountain:reward/netherite

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:ancient_debris"}},distance=..2] at @s if block ~ ~ ~ minecraft:water run function xp_fountain:reward/ancient_debris

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:amethyst_shard"}},distance=..2] at @s if block ~ ~ ~ minecraft:water run function xp_fountain:reward/amethyst

# Remover tag do jogador após processar todos os itens
tag @a[tag=xp_fountain_recipient] remove xp_fountain_recipient
