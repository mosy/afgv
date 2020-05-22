# Konvertering av oppgavefile:ne i0XXXX.tex, fra TEX til LATEX. 

For å konvertere alle oppgavene i src mappen til å virke med latex er det behov til å bytte ut mye av syntaksen i filene. 
Til dette kan en bruke vim substitute. Denne siden skal være en dokumentasjon av søkestrenger som er brukt. 

For å erstatte brukes tip 97 i practial vim

1. Søk  /søkestreng
2. :vimgrep // **/*.tex for å finne alle tex filer og forandre alle. 
3. :set hidden # for å kunne navigere vek fra en fil uten å lagre
4. :cfdo %s//erstatningsstreng. 
5. :cfdo update skriver alle filer. 

## bytte av epsfbox med includegraphics[width=15.5cm]

/epsfbox
:vimgrep // **/*.tex
:set hidden 
:cfdo %s//includegraphics[width=15.5cm]/gc
:cfdo update


/^\(\\medskip\)\n\_^\(\\item\)
 %s//\\begin{itemize}\r\2/gc
 
\medskip
\item
til
\begin{itemize}
\item

 %s//\\begin{itemize}\r\2/gc


/^\\medskip\n^\\item
:vimgrep // **/*.tex
:set hidden
:cfdo %s//\\begin{itemize}\r\\item/g
:cfdo update


:%s/^\\medskip\n^\\item/\\begin{itemize}\r\\item/g


for siste del av \item
legger først til \end{itemize}

:%s/^\\item.*\n\_^\\medskip/&\\end{itemize}/g

For deretter å erstatte med bare end{itemize}

:%s/medskip\\end/end/g/:


## To trinns lister

Etter å ha fikset første del av lister gjenstår lister dobbelt innrykk:

Dette er et eksempel:
___________________________________________________________________________________________
___________________________________________________________________________________________________________________________________________________________________________________________________________
\begin{itemize}
\item{} {\bf Electric power generation:} learning how the specialized control systems for electrical generators work, adapting to changes in the industry such as decentralized power production (e.g. wind farms, solar generators, energy storage facilities).
\itemitem{} Example: specialized processes (e.g. nuclear reactors, geothermal wells, wind turbines)
\itemitem{} Example: protective relays
\itemitem{} Example: ``smart grid'' instrumentation
\itemitem{} Example: control network encyption and security
\item{} {\bf Oil and natural gas exploration/production:} learning how to monitor and control state-of-the art resource extraction technologies such as horizontal drilling and deep-sea production, learning the characteristics of production processes in order to optimize control and safety shutdown systems.
\itemitem{} Example: deep-sea wellhead instrumentation
\itemitem{} Example: horizontal drilling
\itemitem{} Example: maximizing wellbore yield
\itemitem{} Example: custody transfer instrumentation
\item{} {\bf Oil refining:} few types of manufacturing facilities offer as much technological complexity in one site as an oil refinery -- you can spend an entire career learning about the processes and technologies used in a typical refinery without ever reaching the end!
\itemitem{} Example: steam generation, power generation, water treatment
\itemitem{} Example: catalytic chemical reaction processes
\itemitem{} Example: hazardous materials extraction (e.g. anhydrous ammonia, hydrogen sulfide)
\itemitem{} Example: new processes for refining challenging feedstocks such as ``light tight oil'' from the Bakken shale and other plays
\item{} {\bf Coal gasification:} learning how to measure and control relatively new technologies such as slagging gasifiers.
\itemitem{} Example: optical interferometric temperature sensors
\itemitem{} Example: hazardous materials extraction (e.g. anhydrous ammonia, hydrogen sulfide)
\item{} {\bf Chemical processing:} typically these facilities are very diverse, and harbor a number of high-level hazards.
\itemitem{} Example: catalytic chemical reaction processes
\itemitem{} Example: hazardous materials extraction (e.g. anhydrous ammonia, hydrogen sulfide)
\item{} {\bf Wood pulping and paper production:} a pulp \& paper mill is nearly as diverse as an oil refinery with respect to instrumentation.  An added technical challenge with legacy paper mills is that they tend to employ everything from old pneumatic instrumentation to the latest state-of-the-art systems -- in other words, old technology doesn't seem to get updated as often as it would at an oil refinery.
\itemitem{} Example: pulp consistency control, which is unique to this industry
\itemitem{} Example: ``hog fuel'' boiler controls, challenging due to the inconsist nature of wood waste (``hog'') fuel
\itemitem{} Example: recovery boiler operations (very dangerous processes, known for their history of explosive failure)
\item{} {\bf Pharmaceutical manufacturing:} learning the production requirements of new product lines, learning how to calibrate and maintain the latest in biological instrumentation.  
\itemitem{} Example: specialized analytical instrumentation for measuring drug quality
\item{} {\bf Food processing and packaging:} learning how to apply automation to reduce the cost and increase availability of food.
\itemitem{} Example: most food processing facilities are not big enough to sustain a large maintenance staff, and so the ``instrument tech'' must do many other technical duties (e.g. electrical, mechanical)
\item{} {\bf Alcohol production and bottling:} learning how to apply automation to small-scale craft brewery/distillery operations.
\itemitem{} Example: most small breweries and distilleries are not big enough to sustain a large maintenance staff, and so the ``instrument tech'' must do many other technical duties (e.g. electrical, mechanical)
\item{} {\bf Municipal water and wastewater treatment:} learning how to maintain the specialized instruments used to measure the quality of water, and how to control new processes for cleaning the water.
\itemitem{} Example: analyzers for detecting contaminants such as cryptosporidium and biological agents such as anthrax
\itemitem{} Example: new processes for treating water contaminated with medical waste
\item{} {\bf Electric power generation:} learning how the specialized control systems for electrical generators work, adapting to changes in the industry such as decentralized power production (e.g. wind farms, solar generators, energy storage facilities).
\itemitem{} Example: protective relays
\itemitem{} Example: ``smart grid'' instrumentation
\itemitem{} Example: control network encyption and security
\item{} {\bf Instrument control circuit layout and design:} learning new software packages such as {\tt InTools} for documenting instrumentation systems.
\item{} {\bf PLC programming (control system design engineering):} learning new brands and models of PLCs, as well as new programming languages.
\item{} {\bf Renewable energy:} all the challenges of a regular power generation facility, plus the complexities of an energy source that varies uncontrollably!
\item{} {\bf Mining:} learning about the specialized instrumentation used to assay ores in real time, plus the challenges of controlling machinery and processes in extremely harsh conditions.
\item{} {\bf Control valve service:} learning how to apply state-of-the-art ``smart'' instrumentation to the control of bulky valve mechanisms, learning about metallurgy and process fluid reactions in order to diagnose early valve failures.  
\item{} {\bf Contract instrumentation work:} every day brings a new challenge as the nature and location of the work constantly changes!
\end{itemize}

Disse listene går inn og ut. Slik av vi må hå \begin{itemize} \end{itemize} for hver gang dette skje. 

Søke frem til det \itemitem starter
^\(\\item\(item\)\@!.*\)\n\_^\(\\itemitem.*\)

og sette inn \begin{itemize}
:cfdo %s//\1\r\\begin{itemize}\r\2/gc


søke etter itemitem etterfulgt av item
^\(\\itemitem.*\)\n\_^\(\\item\(item\)\@!.*\) 

Sette inn \end{itemize}

:cfdo %s//\1\r\\end{itemize}\r\2 

søke etter \itemitem etterfult av \end{itemize}


