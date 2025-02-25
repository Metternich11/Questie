---@type l10n
local l10n = QuestieLoader:ImportModule("l10n")

local mapOptionsLocales = {
    ["Map"] = {
        ["ptBR"] = "Mapa",
        ["ruRU"] = "Карта мира",
        ["deDE"] = "Weltkarte",
        ["koKR"] = "지도",
        ["esMX"] = "Mapa",
        ["enUS"] = true,
        ["zhCN"] = "大地图",
        ["zhTW"] = "大地圖",
        ["esES"] = "Mapa",
        ["frFR"] = "Carte du monde",
    },
    ["Map Options"] = {
        ["ptBR"] = "Opções de mapa",
        ["ruRU"] = "Настройки карты мира",
        ["deDE"] = "Weltkarten-Einstellungen",
        ["koKR"] = "지도 옵션",
        ["esMX"] = "Opciones de mapa",
        ["enUS"] = true,
        ["zhCN"] = "大地图选项",
        ["zhTW"] = "大地圖選項",
        ["esES"] = "Opciones de mapa",
        ["frFR"] = "Options de la carte du monde",
    },
    ["Show Questie Map Button"] = {
        ["ptBR"] = "Mostrar o botão de Questie no mapa",
        ["ruRU"] = "Кнопка Questie",
        ["deDE"] = "Zeige Questie-Button an der Weltkarte",
        ["koKR"] = "Questie 지도 버튼 표시",
        ["esMX"] = "Mostrar botón de Questie en el mapa",
        ["enUS"] = true,
        ["zhCN"] = "大地图显示Questie按钮",
        ["zhTW"] = "顯示大地圖的任務圖示按鈕",
        ["esES"] = "Mostrar botón de Questie en el mapa",
        ["frFR"] = "Afficher le bouton Questie sur la carte",
    },
    ["Enable or disable the Show/Hide Questie Button on Map (May fix some Map Addon interactions)."] = {
        ["ptBR"] = "Ative ou desative o botão Mostrar / Ocultar Questie no mapa (pode corrigir algumas interações com o Mapa de Complementos)",
        ["ruRU"] = "Показать/скрыть кнопку Questie на карте мира (может исправить некоторые проблемы с аддонами карт)",
        ["deDE"] = "Aktiviert/Deaktiviert den Zeigen/Verstecken-Button an der Weltkarte (repariert möglicherweise Karten-Addon Interaktionen).",
        ["koKR"] = "지도에 Questie 버튼을 표시합니다 (따로 지도 애드온을 사용할 경우 충돌할 수 있습니다)",
        ["esMX"] = "Habilita o deshabilita el botón de mostrar/ocultar Questie en el mapa (Puede solucionar algunas interacciones con Addons de mapas)",
        ["enUS"] = true,
        ["zhCN"] = "启用或停用大地图上的Questie切换按钮（可以解决某些地图插件的冲突）",
        ["zhTW"] = "啟用或停用大地圖上的顯示/隱藏任務圖示按鈕 (可以修正某些地圖插件的互動問題)。",
        ["esES"] = "Habilita o deshabilita el botón de mostrar/ocultar Questie en el mapa (Puede solucionar algunas interacciones con Addons de mapas)",
        ["frFR"] = "Active l'affichage du bouton Afficher/Masquer Questie sur la carte. (peut corriger certaines interactions avec des add-ons modifiant la carte)",
    },
    ["Map Icons Glow"] = {
        ["ptBR"] = "Sempre visível atrás dos ícones do mapa",
        ["ruRU"] = "Подсветка значков",
        ["deDE"] = "Weltkarten-Icons immer leuchten lassen",
        ["koKR"] = "지도 아이콘 반짝임 사용",
        ["esMX"] = "Mostrar aura detrás de los iconos de mapa",
        ["enUS"] = true,
        ["zhCN"] = "总是使大地图标记高亮",
        ["zhTW"] = "大地圖圖示發光",
        ["esES"] = "Mostrar aura detrás de los iconos de mapa",
        ["frFR"] = "Surbrillance des icônes sur la carte",
    },
    ["Draw a glow texture behind map icons, colored unique to each quest."] = {
        ["ptBR"] = "Desenhe uma textura luminescente atrás dos ícones do mapa, com cores exclusivas para cada missão",
        ["ruRU"] = "Показать/скрыть цветной ореол вокруг значков на карте мира",
        ["deDE"] = "Zeichnet eine leuchtende Textur hinter die Weltkarten-Icons. Farblich einzigartig für jede Quest.",
        ["koKR"] = "지도 아이콘에 반짝이는 효과를 표시합니다. 퀘스트마다 각각 다른 색상을 지닙니다.",
        ["esMX"] = "Muestra un aura detrás de los iconos de mapa con colores unicos para cada misión",
        ["enUS"] = true,
        ["zhCN"] = "替大地图标记显示一圈光晕，且不同任务有不同的颜色",
        ["zhTW"] = "在任務目標圖示的後面繪製發光材質，每個任務都可以有不同的顏色。",
        ["esES"] = "Muestra un aura detrás de los iconos de mapa con colores unicos para cada misión",
        ["frFR"] = "Active un effet de surbrillance autour des icônes sur la carte, colorié différemment pour chaque quête.",
    },
    ["Unique Map Icon Colors"] = {
        ["ptBR"] = "Cor diferente do ícone do mapa para cada missão",
        ["ruRU"] = "Различные цветa значков",
        ["deDE"] = "Karten-Icons für jede Quest unterschiedlich färben",
        ["koKR"] = "각 퀘스트별 다른 아이콘 색상 사용",
        ["esMX"] = "Color de icono de mapa diferente para cada misión",
        ["enUS"] = true,
        ["zhCN"] = "为每个任务的大地图标记使用不同颜色",
        ["zhTW"] = "每個任務顯示不同的圖示顏色",
        ["esES"] = "Color de icono de mapa diferente para cada misión",
        ["frFR"] = "Attribuer des couleurs aux icônes des quêtes",
    },
    ["Show map icons with colors that are randomly generated based on quest ID."] = {
        ["ptBR"] = "Exibir ícones do mapa com cores geradas de maneira aleatoriamente com base no ID da missão",
        ["ruRU"] = "Для каждого задания генерируется свой цвет значков на карте мира и миникарте",
        ["deDE"] = "Zeigt Karten-Icons mit zufälligen Farben für jede Quest.",
        ["koKR"] = "각 퀘스트별로 각각 다른 아이콘 색상을 사용할지 설정합니다.",
        ["esMX"] = "Muestra iconos de mapa con colores que se generan aleatoriamente en función de la identificación de la misión.",
        ["enUS"] = true,
        ["zhCN"] = "基于任务ID，为每个任务的大地图标记随机生成不同颜色的图标",
        ["zhTW"] = "依據任務 ID 隨機產生不同的顏色來顯示地圖圖示。",
        ["esES"] = "Muestra iconos de mapa con colores que se generan aleatoriamente en función de la identificación de la misión.",
        ["frFR"] = "Attribue des couleurs aléatoires aux icônes en fonction de l'ID des quêtes.",
    },
    ["Map Note Options"] = {
        ["ptBR"] = "Opções de anotação de mapa",
        ["ruRU"] = "Настройки размеров значков",
        ["deDE"] = "Weltkarten-Notiz-Einstellungen",
        ["koKR"] = "지도 아이콘 설정",
        ["esMX"] = "Opciones de las notas de mapa",
        ["enUS"] = true,
        ["zhCN"] = "大地图标记",
        ["zhTW"] = "大地圖圖示選項",
        ["esES"] = "Opciones de las notas de mapa",
        ["frFR"] = "Options des icônes sur la carte",
    },
    ["How large the map icons are.\n(Default: %s)"] = {
        ["ptBR"] = "Qual é o tamanho dos ícones do mapa.\n(Por defeito: %s)",
        ["ruRU"] = "Одновременная регулировка размера всех значков на карте мира\n(по умолчанию: %s)",
        ["deDE"] = "Skaliert die Größe aller Weltkarten-Icons.\n(Standard: %s)",
        ["koKR"] = "지도 아이콘의 크기를 설정합니다.\n( 기본값: %s )",
        ["esMX"] = "Define la escala de los iconos del mapa\n(Predeterminado: %s)",
        ["enUS"] = true,
        ["zhCN"] = "调整大地图标记图标的缩放比例\n（默认：%s）",
        ["zhTW"] = "大地圖上圖示的大小。\n(預設值: %s)",
        ["esES"] = "Define la escala de los iconos del mapa\n(Predeterminado: %s)",
        ["frFR"] = "Définis la taille des icônes sur la carte.\n(Par défaut : %s)",
    },
    ["Scale for Available/Complete Icons"] = {
        ["ptBR"] = "Saldo para ícones disponíveis / completos",
        ["ruRU"] = "Размер значков заданий",
        ["deDE"] = "Skalierung der Icons für verfügbare/abgeschlossene Quests",
        ["koKR"] = "수행가능/완료 퀘스트 아이콘 크기",
        ["esMX"] = "Tamaño de iconos de misión disponible y completada",
        ["enUS"] = true,
        ["zhCN"] = "可取得与可完成的图标大小",
        ["zhTW"] = "可接/完成圖示縮放大小",
        ["esES"] = "Tamaño de iconos de misión disponible y completada",
        ["frFR"] = "Échelle des icônes de quête disponible/terminée",
    },
    ["How large the available/complete icons are. Affects both map and minimap icons.\n(Default: %s)"] = {
        ["ptBR"] = "Qual é o tamanho dos ícones disponíveis / completos\n(Por defeito: %s)",
        ["ruRU"] = "Регулировка размера значков доступных/выполненных заданий на карте мира и миникарте\n(по умолчанию: %s)",
        ["deDE"] = "Skaliert die Icons der verfügbaren/abgeschlossenen Quests.\n(Standard: %s)",
        ["koKR"] = "수행가능/완료 퀘스트 아이콘의 크기를 설정합니다.\n(기본값: %s)",
        ["esMX"] = "Define la escala de los iconos de misión disponible y completada.\n(Predeterminado: %s)",
        ["enUS"] = true,
        ["zhCN"] = "调整可取得与可完成的缩放比例\n（默认：%s）",
        ["zhTW"] = "可接/完成圖示的大小。\n(預設值: %s)",
        ["esES"] = "Define la escala de los iconos de misión disponible y completada.\n(Predeterminado: %s)",
        ["frFR"] = "Définis la taille des icônes de quête disponible/terminée.\n(Par défaut : %s)",
    },
    ["Scale for Event Icons"] = {
        ["ptBR"] = "Escala de ícones de eventos",
        ["ruRU"] = "Размер значков событий",
        ["deDE"] = "Skalierung der Event-Icons",
        ["koKR"] = "이벤트 아이콘 크기",
        ["esMX"] = "Tamaño de iconos de evento",
        ["enUS"] = true,
        ["zhCN"] = "事件图标大小",
        ["zhTW"] = "事件圖示縮放大小",
        ["esES"] = "Tamaño de iconos de evento",
        ["frFR"] = "Échelle des icônes d'évènement",
    },
    ["How large the event icons are.\n(Default: %s)"] = {
        ["ptBR"] = "Qual é o tamanho dos ícones do evento.\n(Por defeito: %s)",
        ["ruRU"] = "Регулировка размера значков событий на карте мира и миникарте\n(по умолчанию: %s)",
        ["deDE"] = "Skaliert wie groß die Event-Icons sind.\n(Standard: %s)",
        ["koKR"] = "이벤트 아이콘의 크기를 설정합니다.\n(기본값: %s)",
        ["esMX"] = "Define la escala de los iconos evento.\n(Predeterminado: %s)",
        ["enUS"] = true,
        ["zhCN"] = "调整事件图标的缩放比例\n（默认：%s）",
        ["zhTW"] = "事件圖示的大小。\n(預設值: %s )",
        ["esES"] = "Define la escala de los iconos evento.\n(Predeterminado: %s)",
        ["frFR"] = "Définis la taille des icônes d'évènement.\n(Par défaut : %s)",
    },
    ["Scale for Loot Icons"] = {
        ["ptBR"] = "Saldo para ícones de pilhagem",
        ["ruRU"] = "Размер значков добычи",
        ["deDE"] = "Skalierung der Loot-Icons",
        ["koKR"] = "수집 아이콘 크기",
        ["esMX"] = "Tamaño de iconos de saqueo",
        ["enUS"] = true,
        ["zhCN"] = "拾取道具图标大小",
        ["zhTW"] = "撿東西圖示縮放大小",
        ["esES"] = "Tamaño de iconos de saqueo",
        ["frFR"] = "Échelle des icônes de fouille",
    },
    ["How large the loot icons are.\n(Default: %s)"] = {
        ["ptBR"] = "Qual é o tamanho dos ícones de pilhagem\n(Por defeito: %s)",
        ["ruRU"] = "Регулировка размера значков добычи на карте мира и миникарте\n(по умолчанию: %s)",
        ["deDE"] = "Skaliert wie groß die Loot-Icons sind.\n(Standard: %s)",
        ["koKR"] = "수집 아이콘의 크기를 설정합니다.\n(기본값: %s)",
        ["esMX"] = "Define la escala de los iconos de saqueo.\n(Predeterminado: %s)",
        ["enUS"] = true,
        ["zhCN"] = "调整拾取道具图标的缩放比例\n（默认：%s）",
        ["zhTW"] = "撿東西圖示的大小。\n(預設值: %s)",
        ["esES"] = "Define la escala de los iconos de saqueo.\n(Predeterminado: %s)",
        ["frFR"] = "Définis la taille des icônes de fouille.\n(Par défaut : %s)",
    },
    ["Scale for Slay Icons"] = {
        ["ptBR"] = "Escala para ícones de Slay",
        ["ruRU"] = "Размер значков убийств",
        ["deDE"] = "Skalierung der Töten-Icons",
        ["koKR"] = "처치 아이콘 크기",
        ["esMX"] = "Tamaño de iconos de matar",
        ["enUS"] = true,
        ["zhCN"] = "击杀目标的图标大小",
        ["zhTW"] = "殺怪圖示縮放大小",
        ["esES"] = "Tamaño de iconos de matar",
        ["frFR"] = "Échelle des icônes de combat",
    },
    ["How large the slay icons are.\n(Default: %s)"] = {
        ["ptBR"] = "Qual é o tamanho dos ícones para matar\n(Por defeito: %s)",
        ["ruRU"] = "Регулировка размера значков убийств на карте мира и миникарте\n(по умолчанию: %s)",
        ["deDE"] = "Skaliert wie groß die Töten-Icons sind.\n(Standard: %s)",
        ["koKR"] = "처치 아이콘의 크기를 설정합니다.\n( 기본값: %s)",
        ["esMX"] = "Define la escala de los iconos de matar.\n(Predeterminado: %s)",
        ["enUS"] = true,
        ["zhCN"] = "调整击杀目标图标的缩放比例\n（默认：%s）",
        ["zhTW"] = "殺怪圖示的大小。\n(預設值: %s)",
        ["esES"] = "Define la escala de los iconos de matar.\n(Predeterminado: %s)",
        ["frFR"] = "Définis la taille des icônes de combat.\n(Par défaut: %s)",
    },
    ["Scale for Object Icons"] = {
        ["ptBR"] = "Escala para ícones de objetos",
        ["ruRU"] = "Размер значков объектов",
        ["deDE"] = "Skalierung der Objekt-Icons",
        ["koKR"] = "오브젝트 아이콘 크기",
        ["esMX"] = "Tamaño de iconos de objeto",
        ["enUS"] = true,
        ["zhCN"] = "互动目标的图标大小",
        ["zhTW"] = "任務目標圖示縮放大小",
        ["esES"] = "Tamaño de iconos de objeto",
        ["frFR"] = "Échelle des icônes d'objet",
    },
    ["How large the object icons are.\n(Default: %s)"] = {
        ["ptBR"] = "Qual é o tamanho dos ícones de objeto.\n(Por defeito: %s)",
        ["ruRU"] = "Регулировка размера значков объектов на карте мира и миникарте\n(по умолчанию: %s)",
        ["deDE"] = "Skaliert wie groß die Objekt-Icons sind.\n(Standard: %s)",
        ["koKR"] = "오브젝트 아이콘의 크기를 설정합니다.\n(기본값: %s)",
        ["esMX"] = "Define la escala de los iconos de objeto.\n(Predeterminado: %s)",
        ["enUS"] = true,
        ["zhCN"] = "调整互动目标图标的缩放比例\n（默认：%s）",
        ["zhTW"] = "任務目標圖示的大小。\n(預設值: %s )",
        ["esES"] = "Define la escala de los iconos de objeto.\n(Predeterminado: %s)",
        ["frFR"] = "Définis la taille des icônes d'objet.\n(Par défaut : %s)",
    },
    ["Show Map Coordinates"] = {
        ["ptBR"] = "Coordenadas do mapa e cursor",
        ["ruRU"] = "Координаты",
        ["deDE"] = "Karten- und Zeiger-Koordinaten",
        ["koKR"] = "지도 및 커서 좌표",
        ["esMX"] = "Coordenadas de mapa y ratón",
        ["enUS"] = true,
        ["zhCN"] = "大地图座标",
        ["zhTW"] = "大地圖和滑鼠坐標",
        ["esES"] = "Coordenadas de mapa y ratón",
        ["frFR"] = "Coordonnées",
    },
    ["Place the Player's coordinates and Cursor's coordinates on the Map's title."] = {
        ["ptBR"] = "Coloque as coordenadas do jogador e as do cursor no título do mapa.",
        ["ruRU"] = "Показать/скрыть координаты игрока и курсора в заголовке карты мира",
        ["deDE"] = "Koordinaten von Spieler- und Mauszeiger-Koordinaten an der Weltkarte.",
        ["koKR"] = "지도 제목 영역에 플레이어 및 커서의 좌표를 표시합니다.",
        ["esMX"] = "Coloca las coordenadas del jugador y del ratón en el título del mapa.",
        ["enUS"] = true,
        ["zhCN"] = "在大地图标题上显示玩家与鼠标指向位置的座标",
        ["zhTW"] = "在大地圖的標題中顯示玩家和滑鼠游標的坐標。",
        ["esES"] = "Coloca las coordenadas del jugador y del ratón en el título del mapa.",
        ["frFR"] = "Active les coordonnées du joueur et celles du curseur dans le titre de la carte.",
    },
    ["Map Coordinates Decimal Precision"] = {
        ["ptBR"] = "Precisão decimal das coordenadas do mapa",
        ["ruRU"] = "Количество знаков после запятой",
        ["deDE"] = "Dezimalpunkt-Genauigkeit der Koordinaten",
        ["koKR"] = "지도 좌표 소수점 표시 설정",
        ["esMX"] = "Precisión decimal de las coordenadas de mapa",
        ["enUS"] = true,
        ["zhCN"] = "座标数值精确度",
        ["zhTW"] = "地圖坐標小數點精確度",
        ["esES"] = "Precisión decimal de las coordenadas de mapa",
        ["frFR"] = "Précision des coordonnées sur la carte",
    },
    ["How many decimals to include in the precision on the Map for Player and Cursor coordinates.\n(Default: %s)"] = {
        ["ptBR"] = "Número de casas decimais a serem incluídas na precisão do mapa para as coordenadas do jogador e do cursor.\n(Por defeito: %s)",
        ["ruRU"] = "Допустимое количество знаков после запятой при отображении координат\n(по умолчанию: %s)",
        ["deDE"] = "Wie viele Nachkommastellen in die Genauigkeit für Spieler- und Mauszeiger-Koordinanten einfließen sollen.\n(Standard: %s)",
        ["koKR"] = "지도 좌표에 소수점 몇자리까지 표시할지 설정합니다.\n( 기본값: %s)",
        ["esMX"] = "Cuántos decimales de precisión tienen que tener las coordenadas en el mapa para el jugador y el ratón.\n(Predeterminado: %s)",
        ["enUS"] = true,
        ["zhCN"] = "大地图的座标要显示到小数点后几位\n（默认：%s）",
        ["zhTW"] = "大地圖的玩家和滑鼠游標坐標要顯示幾位小數。\n(預設值: %s)",
        ["esES"] = "Cuántos decimales de precisión tienen que tener las coordenadas en el mapa para el jugador y el ratón.\n(Predeterminado: %s)",
        ["frFR"] = "Définis combien de décimales sont à inclure dans les coordonnées du joueur et du curseur.\n(Par défaut : %s)",
    },
    ["Setting clustering value, clusterLevelHotzone set to %s : Redrawing!"] = {
        ["ptBR"] = "Valor de cluster dos parâmetros da, clusterLevelHotzone definido como% s: Redrawing!",
        ["ruRU"] = "Группировка значков: %s. Перерисовка",
        ["deDE"] = "Clusterlevel geändert auf %s : Zeichne neu!",
        ["koKR"] = "클러스터링 값 설정 중, 클러스터 레벨 핫존이 %s로 설정됨: Redrawing!",
        ["esMX"] = "Configuración NYI valor de agrupamiento, nivel de agrupamiento establecido a %s : Redibujando!",
        ["enUS"] = true,
        ["zhCN"] = "设置群集值，clusterLevelHotzone设置为 %s : 重新绘制中!",
        ["zhTW"] = "設定密集度，clusterLevelHotzone 設為 %s : 重新繪製中!",
        ["esES"] = "Configuración NYI valor de agrupamiento, nivel de agrupamiento establecido a %s : Redibujando!",
        ["frFR"] = "Réglage de la valeur de fusionnement, clusterLevelHotzone réglée sur %s : réorganisation !",
    },
}

for k, v in pairs(mapOptionsLocales) do
    l10n.translations[k] = v
end
