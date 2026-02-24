 # Oppgave: Oversettelse av TeX-filer til norsk (høy kvalitet)

 Sist oversatte fil i01649.tex

  ## Mål
  1. Oversett `iXXXXX.tex` til `iXXXXXno.tex` en og en om gangen (Husk Dette en og en ), med høy språklig kvalitet på norsk bokmål. 
  2. For hver tiende oversatt fil:
  3. Lag `oSetNNNNN_NNNNN.tex` med riktig tittel og antall oppgaver.
  4. Lag `oSetNNNNN_NNNNN.seq` som bygger `all.tex` fra de 10 `*no.tex`.
  5. Sett `.seq` kjørbar (`chmod +x`).
  6. Om et sett oSetNNNNN_NNNNN.seq finnes fra før gjør en touch av filen dette sikrer at make opptaderer oppgavesettet. 

Dette kalles en batch videre

  ## Viktige krav (må følges)
  1. IKKE kopier kildetekst direkte til ixxxxxno.tex`. Over sett en og en ixxxxx.tex fil
  2. Alle `*no.tex` skal være faktisk oversatt/forbedret norsk tekst. Bruk manuell kvalitetsoversettelse. Bruk tiden som er nødvendig for det. 
  3. Språkkvalitet er kritisk: korrekt grammatikk, tegnsetting, og bruk av `æ`, `ø`, `å`.
  4. Behold TeX-struktur, matematiske uttrykk, tabeller og markører:
     - `%(BEGIN_QUESTION)` / `%(END_QUESTION)`
     - `%(BEGIN_ANSWER)` / `%(END_ANSWER)`
     - `%(BEGIN_NOTES)` / `%(END_NOTES)`
  5. Behold filreferansen i hver oppgave (`\underbar{file iXXXXX}`), men bruk korrekt nummer.
  6. Ikke introduser LaTeX-kommandoer som ikke finnes i prosjektets preamble.
  7. Hold ASCII der mulig, men norsk tekst skal bruke ekte `æ/ø/å` (ikke omskrivinger).
  8. Korriger åpenbare skrivefeil i både eksisterende norsk tekst og ny oversettelse.
  9. Bytt V til U kun når V representerer elektrisk spenning (f.eks. Ohms lov/kretsligninger). Ikke bytt V når den betyr volum eller andre størrelser.


  ## Kvalitetskontroll per batch (obligatorisk)
  1. Verifiser at alle 10 `*no.tex` finnes.
  2. Verifiser at hver fil har alle `BEGIN/END`-markører korrekt.
  3. Søk etter typiske feil (`str0m`, `n0y`, manglende `æ/ø/å`, osv.) og rett.
  4. Verifiser at `.seq` finnes og er kjørbar.
  5. Ingen bygging (`make`) med mindre eksplisitt bedt om det.

  ## Arbeidsmåte
  - Fortsett automatisk batch for batch uten å stoppe.
  - Stopp kun ved faktisk feil som ikke kan løses.
  - Rapporter kort hva som er ferdig, hva som er rettet, og hva som gjenstår.

  ## Preflight før batch regnes som ferdig (obligatorisk)
  1. `\item`-sikkerhet:
     - Alle `\item` må stå inne i `itemize`/`enumerate`.
     - Ingen ensomme `\item` er tillatt.
  2. Listebalanse:
     - Antall `\begin{itemize}` skal matche `\end{itemize}` i hver fil.
     - Antall `\begin{enumerate}` skal matche `\end{enumerate}` i hver fil.
  3. TeX-spesialtegn:
     - Tekstlig `&` skal skrives som `\&` (f.eks. `P\&ID`).
     - Unngå rå spesialtegn som kan bryte kompilering.
  4. Filnavn i set-filer:
     - `.seq`-filer skal kun referere `iNNNNNno.tex` (5 siffer + `no`).
     - Ingen blanding av `iNNNNN.tex` og `iNNNNNno.tex` i samme norsk oppgavesett.
  5. Regenerering før kompilering:
     - Etter retting i batchen skal tilhørende `.seq` kjøres for å bygge ny `all.tex` før test.
  6. Språkkrav:
     - `*no.tex` skal være gjennomgående norsk bokmål.
     - Engelsk tekst beholdes kun når den er nødvendig fagterm eller bevisst sitat.
  7. Obligatorisk sjekkliste som logges:
     - Markerbalanse (`BEGIN/END` for `QUESTION/ANSWER/NOTES`).
     - Listebalanse (`itemize`/`enumerate`).
     - Ensomme `\item`.
     - Uescapet `&`.
     - Korrekte filreferanser i `.seq`.
  8. Skriv nummer på sist oversatt fil øverst i TASK.md, denne overskrives for hver nye fil. 
