# ============================================================
# Fonte de XP — warn_multiple_players.mcfunction
# Executado como o marker da fonte, na posição do marker.
# Exibe aviso na Action Bar apenas para jogadores dentro do
# raio da fonte. Anti-spam: no máximo uma mensagem a cada
# 40 ticks (2 segundos) por fonte.
# ============================================================

# Verificar temporizador anti-spam — se ainda ativo, não enviar
execute if score @s xp_fountain.spam_timer matches 1.. run return 0

# Exibir mensagem na Action Bar apenas para os jogadores próximos
title @a[distance=..3,gamemode=!spectator] actionbar {"text":"⚠ Muitos jogadores próximos da fonte. Apenas um jogador pode permanecer durante a troca.","color":"yellow","bold":false}

# Resetar temporizador (40 ticks = 2 segundos)
scoreboard players set @s xp_fountain.spam_timer 40
