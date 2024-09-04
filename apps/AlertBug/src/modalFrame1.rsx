<ModalFrame
  id="modalFrame1"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden="true"
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showHeader={true}
  showOverlay={true}
  size="medium"
>
  <Header>
    <Text
      id="modalTitle1"
      value="### Informationen zu Datenquellen"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton1"
      ariaLabel="Close"
      hidden=""
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ ordered: [] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: true }] }}
        pluginId="modalFrame1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Text id="text216" value="###### Ansprechpartner" verticalAlign="center" />
    <Text id="text218" value="###### Quellen" verticalAlign="center" />
    <Text id="text217" value="###### Turnus" verticalAlign="center" />
    <Divider id="divider71" />
    <Text
      id="text213"
      value="- Verantwortlich für die Daten ist **Josef Moosholzer**
"
      verticalAlign="center"
    />
    <Text
      id="text211"
      value="- HolidayCheck: **Input KPIs Crawler**
- CHECK24: **Input KPIs Crawler**
"
      verticalAlign="center"
    />
    <Text
      id="text212"
      value="- Die Daten vom Vortag werden **täglich** um 05:00 Uhr hochgeladen
"
      verticalAlign="center"
    />
    <Divider id="divider70" />
    <Text
      id="text214"
      value="- Top Searches: **top_searches**"
      verticalAlign="center"
    />
    <Text
      id="text215"
      value="- Die Datenpunkte werden **einmal monatlich** zum Monatsersten abgeholt
"
      verticalAlign="center"
    />
    <Text
      id="text219"
      value="###### Definition & Erklärung KPI

Mithilfe von Crawlern werden für ein vordefiniertes Set von Inputkombinationen, die sich aus Hotel und Reisegruppe zusammensetzt, Preise auf relevanten Wettbewerbsportalen mit denen auf CHECK24 verglichen.

###### Berechnungslogik

Bedingt durch das Ausmaß und die Komplexität der Datenerhebung kann nicht sichergestellt werden, dass an jedem Tag für alle Inputkombinationen ein Ergebnis vorliegt (siehe Informationen zur Datenerhebung). Um trotzdem robuste tägliche Entwicklungen in der Preiskampfgewinnquote sichtbar zu machen, wird **<u>*per Voreinstellung der Anteil gewonnener Preiskämpfe als Quotient aus der gleitenden Anzahl der gewonnenen Preiskämpfe der letzten 7 Tage geteilt durch die gleitende Anzahl der Preiskampfteilnahmen der letzten 7 Tage*</u>** berechnet.

**Es besteht die Möglichkeit zur Änderung der gleitenden Aggregation auf 1 (keine gleitende Berechnung) oder 30 Tage.**
###### Datenerhebung

Da die vollständige Durchführung eines Crawlersuchlaufs für eine Inputkombination bis zu 15 Minuten beanspruchen kann, ist es nicht möglich alle Kombinationen an einem Tag durch eine Crawlerinstanz abzudecken. Aus diesem Grund laufen zu jedem Zeitpunkt mehrere an verschiedenen Tagen initiierte Crawler, die die definierten Inputkombinationen in gleicher Reihenfolge suchen. Somit kann theoretisch für jeden Input einmal täglich ein Ergebnis geliefert werden, aus technischen Gründen kann es aber immer wieder zu fehlenden Ergebnissen kommen - dieser Mangel wird in der KPI-Berechnungslogik berücksichtigt.

Die Inputs können im Bereich **zugrundeliegende Inputkombinationen** eingesehen und bearbeitet werden.

###### Changelog Crawler"
      verticalAlign="center"
    />
    <Timeline
      id="timeline4"
      items={'["2024-07-30: Erste Version"]'}
      timestamps={
        '["2020-06-29", "2020-06-29T20:39:00+00:00", "2020-06-28T11:12:00+00:00"]'
      }
    />
    <Text
      id="text221"
      _disclosedFields={{ array: [] }}
      marginType="normal"
      verticalAlign="center"
    />
  </Body>
</ModalFrame>
