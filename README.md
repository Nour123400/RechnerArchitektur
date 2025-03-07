
### Repository: **Performance-Tests für Sortieralgorithmen und Matrix-Multiplikation**

Dieses Repository enthält Programme zur Messung und Analyse der Ausführungszeit von verschiedenen Algorithmen in C, darunter **QuickSort**, **Insertion Sort**, **BubbleSort**, und der **Dextre-Algorithmus**, sowie **Matrix-Multiplikation**. Ziel des Projekts ist es, die Leistung dieser Algorithmen zu vergleichen und zu verstehen, wie verschiedene Implementierungsvarianten und Optimierungsstufen (wie O1, O2 und O3) die Laufzeit beeinflussen.

**Hauptfunktionen:**
- **Sortieralgorithmen**: Durchführung von Performance-Tests für die Sortieralgorithmen QuickSort, Insertion Sort, BubbleSort und den Dextre-Algorithmus.
- **Matrix-Multiplikation**: Performance-Messungen zur Matrix-Multiplikation, durchgeführt unter verschiedenen Speicherstrategien (Heap, Stack).
👉 **[Matrizenmultiplikation(Main).pdf](./Matrizenmultiplikation(Main).pdf)**
- **Zeitmessung**: Präzise Messung der Ausführungszeiten, um die Leistung der Algorithmen zu vergleichen.
- **Optimierungsstufen O1, O2 und O3**: Analyse der Auswirkungen von Compiler-Optimierungen auf die Performance von Algorithmen.
- **Unterschiede zwischen Datentypen**: Unterscheidung der Auswirkungen der Bearbeitung von **Integer**, **Double** und **Float** auf die Performance der Algorithmen.
- **Heap- und Stackverwaltung**: Analyse der Performance unter verschiedenen Speicherverwaltungsstrategien.
### Sortieralgorithmen:
- **QuickSort**: Ein effizienter Sortieralgorithmus mit durchschnittlicher Zeitkomplexität von O(n log n).
- **Insertion Sort**: Ein einfacherer, aber weniger effizienter Sortieralgorithmus mit einer Zeitkomplexität von O(n²) in der schlechtesten und O(n) in der besten Variante.
- **BubbleSort**: Ein weiteres grundlegendes Sortierverfahren mit einer Zeitkomplexität von O(n²) in allen Fällen.
- **Dextre-Algorithmus**: Ein weniger bekannter, aber ebenfalls getesteter Sortieralgorithmus, dessen Leistung ebenfalls untersucht wird.

### Matrix-Multiplikation:
Untersucht wird auch die Performance der Matrixmultiplikation unter verschiedenen Optimierungsvarianten und Speicherstrategien (Heap und Stack).
 

### Optimierungsstufen O1, O2, O3:
Die Optimierungsstufen **O1**, **O2** und **O3** beziehen sich auf die **GCC Compiler-Optimierungen**:

- **O1**: Diese Optimierungsstufe fokussiert sich auf grundlegende, sichere Optimierungen, die die Ausführungszeit verbessern, ohne dass es zu drastischen Änderungen kommt. Ziel ist es, die Performance zu erhöhen, ohne die Kompatibilität zu gefährden.
  
- **O2**: Diese Stufe wendet umfangreichere Optimierungen an, die auch fortgeschrittene Techniken zur Codeverbesserung und -kompression umfassen. Sie sorgt für eine merkliche Verbesserung der Performance, ist jedoch immer noch sicher in Bezug auf die Codekompatibilität.
  
- **O3**: Diese höchste Optimierungsstufe bringt die größte Leistungssteigerung, indem der Compiler alle verfügbaren Techniken zur Codeverbesserung anwendet, einschließlich aggressiverer Optimierungen und spezifischer Hardwareanpassungen. Der Code wird für maximale Performance optimiert, was jedoch die Kompatibilität und Lesbarkeit beeinträchtigen kann.

### Unterschiedliche Datentypen:
Im Repository werden auch die Unterschiede bei der Bearbeitung von verschiedenen Datentypen getestet:

- **Integer (int)**: Ganzzahlen, die als einfache Datentypen für viele Algorithmen genutzt werden, insbesondere bei Sortieralgorithmen.
- **Double**: Gleitkommazahlen mit doppelter Präzision, die in wissenschaftlichen Berechnungen und Matrizenoperationen häufig verwendet werden.
- **Float**: Gleitkommazahlen mit einfacher Präzision, die in Anwendungen mit weniger präzisen Berechnungen oder geringeren Speicheranforderungen verwendet werden.

### Besonderheiten:
- **Heap vs. Stack**: Die Matrixmultiplikation wird sowohl auf dem Heap als auch auf dem Stack durchgeführt, um die Unterschiede in der Speicherzuweisung und -verwaltung zu messen.
- **Kombinierungsvarianten O1, O2, O3**: Die verschiedenen Optimierungsstufen bei GCC beeinflussen, wie der Code miteinander kombiniert und optimiert wird. Diese Optimierungsstufen werden getestet, um die Auswirkungen auf die Ausführungszeit der Algorithmen unter verschiedenen Bedingungen zu untersuchen.

### Verwendungszweck:
- Ideal für die Untersuchung und den Vergleich der Leistung von verschiedenen Sortieralgorithmen und der Matrixmultiplikation unter verschiedenen Datentypen.
- Dient als Benchmark-Tool zur Analyse der Auswirkungen von verschiedenen Compiler-Optimierungen (O1, O2, O3) auf die Leistung.
- Nützlich für die Optimierung von Algorithmen in Bezug auf die Ausführungszeit und den Speicherverbrauch bei verschiedenen Datentypen und Speicherstrategien.
