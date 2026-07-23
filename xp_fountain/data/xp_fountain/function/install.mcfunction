# ============================================================
# Fonte de XP — install.mcfunction
# Executado automaticamente quando o datapack é carregado.
# Cria os objetivos do scoreboard necessários para o funcionamento.
# ============================================================

# Objetivos do scoreboard
# xp_fountain.tick_timer  : contador de ticks para verificação periódica
# xp_fountain.spam_timer  : temporizador anti-spam de mensagens por fonte
# xp_fountain.nearby_count: conta jogadores próximos de cada fonte

scoreboard objectives add xp_fountain.tick_timer  dummy "XP Fountain: tick"
scoreboard objectives add xp_fountain.spam_timer  dummy "XP Fountain: spam"
scoreboard objectives add xp_fountain.nearby_count dummy "XP Fountain: players"

# Inicializar o contador global de ticks
scoreboard players set #global xp_fountain.tick_timer 0

tellraw @a {"text":"[Fonte de XP] Datapack carregado com sucesso!","color":"green"}
