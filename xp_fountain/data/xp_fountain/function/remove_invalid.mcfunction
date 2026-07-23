# ============================================================
# Fonte de XP — remove_invalid.mcfunction
# Executado como cada marker de fonte, na sua posição.
# Verifica se a estrutura 3×3 ainda está intacta.
# Se ainda válida: retorna sem fazer nada (return 0).
# Se inválida: mata o marker para desativar a fonte.
# ============================================================

# Se todos os 9 blocos (ouro + 8 águas) estiverem corretos, sair cedo
execute \
  if block ~ ~ ~ minecraft:gold_block \
  if block ~-1 ~ ~-1 minecraft:water[level=0] \
  if block ~0  ~ ~-1 minecraft:water[level=0] \
  if block ~1  ~ ~-1 minecraft:water[level=0] \
  if block ~-1 ~ ~0  minecraft:water[level=0] \
  if block ~1  ~ ~0  minecraft:water[level=0] \
  if block ~-1 ~ ~1  minecraft:water[level=0] \
  if block ~0  ~ ~1  minecraft:water[level=0] \
  if block ~1  ~ ~1  minecraft:water[level=0] \
  run return 0

# Estrutura inválida — remover o marker desta fonte
kill @s
