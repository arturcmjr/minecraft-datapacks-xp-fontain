# Fonte de XP — Minecraft Java Datapack

Datapack para Minecraft Java Edition 1.21+ (pack_format 61+).  
Compatível com o novo versionamento da Mojang (1.26.x).

Permite que jogadores joguem minérios dentro de uma estrutura de água para convertê-los em XP ou níveis.

---

## Instalação

1. Copie a pasta `xp_fountain/` para dentro de `<mundo>/datapacks/`.
2. No jogo: `/reload` ou entre no mundo.
3. Mensagem de confirmação aparecerá no chat.

---

## Como criar uma Fonte de XP

Monte a seguinte estrutura (vista de cima), todos os blocos no mesmo nível Y:

```
W W W
W G W
W W W
```

- **W** = Bloco de água **parada** (source block, não corrente)
- **G** = Bloco de ouro (`minecraft:gold_block`)

Total: 8 blocos de água + 1 bloco de ouro central.

A fonte é detectada automaticamente em até 1 segundo após a estrutura ser completada.  
Um som e partículas indicam a ativação.

---

## Minérios aceitos e recompensas

| Item | Recompensa |
|---|---|
| Carvão (`coal`) | 10 XP |
| Ferro Bruto (`raw_iron`) | 15 XP |
| Lingote de Ferro (`iron_ingot`) | 20 XP |
| Cobre Bruto (`raw_copper`) | 8 XP |
| Lingote de Cobre (`copper_ingot`) | 10 XP |
| Ouro Bruto (`raw_gold`) | 20 XP |
| Lingote de Ouro (`gold_ingot`) | 25 XP |
| Lápis-Lazúli (`lapis_lazuli`) | 12 XP |
| Redstone (`redstone`) | 8 XP |
| **Diamante** (`diamond`) | **+1 nível** |
| Esmeralda (`emerald`) | 30 XP |
| Quartzo (`quartz`) | 10 XP |
| **Lingote de Netherite** (`netherite_ingot`) | **+5 níveis** |
| Detrito Antigo (`ancient_debris`) | 50 XP |
| Fragmento de Ametista (`amethyst_shard`) | 6 XP |

---

## Regras de uso

- A conversão ocorre apenas quando **exatamente 1 jogador** estiver a ≤ 3 blocos da fonte.
- Com **0 jogadores**: nenhuma conversão.
- Com **2+ jogadores**: conversão bloqueada; mensagem de aviso exibida na Action Bar (anti-spam: máx. 1 vez a cada 2 s por fonte).

---

## Estrutura de arquivos

```
xp_fountain/
├── pack.mcmeta
└── data/
    ├── minecraft/tags/function/
    │   ├── load.json               ← executa install na carga
    │   └── tick.json               ← executa tick a cada tick
    └── xp_fountain/function/
        ├── install.mcfunction      ← cria scoreboards
        ├── tick.mcfunction         ← ponto de entrada principal
        ├── periodic_check.mcfunction  ← executado 1×/s
        ├── detect_fountains.mcfunction
        ├── scan_player_area.mcfunction
        ├── scan_horizontal_plane.mcfunction
        ├── validate_and_create.mcfunction
        ├── activate_fountain.mcfunction
        ├── remove_invalid.mcfunction
        ├── process_items.mcfunction
        ├── check_items.mcfunction
        ├── warn_multiple_players.mcfunction
        └── reward/
            ├── coal.mcfunction
            ├── raw_iron.mcfunction
            ├── iron_ingot.mcfunction
            ├── raw_copper.mcfunction
            ├── copper_ingot.mcfunction
            ├── raw_gold.mcfunction
            ├── gold_ingot.mcfunction
            ├── lapis.mcfunction
            ├── redstone.mcfunction
            ├── diamond.mcfunction
            ├── emerald.mcfunction
            ├── quartz.mcfunction
            ├── netherite.mcfunction
            ├── ancient_debris.mcfunction
            └── amethyst.mcfunction
```

---

## Como editar valores de XP

Cada arquivo em `reward/` contém apenas as linhas de recompensa.  
Para ajustar o XP de um minério, edite o número no comando `xp add`:

```mcfunction
# Exemplo: aumentar carvão de 10 para 25 XP
xp add @a[tag=xp_fountain_recipient,limit=1] 25 points
```

Para adicionar um novo minério:
1. Crie `reward/<nome>.mcfunction` seguindo o padrão existente.
2. Adicione uma linha em `check_items.mcfunction` com o `id` do item.

---

## Desativar a fonte

Basta remover qualquer bloco da estrutura (ouro ou qualquer água).  
O marker é removido automaticamente em até 1 segundo.