# ============================================================
# Fonte de XP — validate_and_create.mcfunction
# Chamado na posição de um bloco de ouro candidato.
# Verifica se os 8 blocos ao redor são água parada (source, level=0).
# Estrutura esperada (vista de cima, mesmo nível Y):
#
#   W W W
#   W G W   ← G = bloco de ouro (posição atual ~ ~ ~)
#   W W W
#
# Se válida, cria a fonte.
# ============================================================

execute \
  if block ~-1 ~ ~-1 minecraft:water[level=0] \
  if block ~0  ~ ~-1 minecraft:water[level=0] \
  if block ~1  ~ ~-1 minecraft:water[level=0] \
  if block ~-1 ~ ~0  minecraft:water[level=0] \
  if block ~1  ~ ~0  minecraft:water[level=0] \
  if block ~-1 ~ ~1  minecraft:water[level=0] \
  if block ~0  ~ ~1  minecraft:water[level=0] \
  if block ~1  ~ ~1  minecraft:water[level=0] \
  run function xp_fountain:activate_fountain
