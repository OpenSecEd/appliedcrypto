Kursplanen för grundskolan [lgr11][lgr11] säger att i åk 7-9 
behandlas "[l]ikformig sannolikhet och metoder för att beräkna sannolikheten i 
vardagliga situationer" samt "[h]ur kombinatoriska principer kan användas i 
enkla vardagliga och matematiska problem". Så sannolikhetsteorin är inte ny för 
er. Speciellt inte då första kursen i gymnasiet [gy11][gy11] även ska behandla 
"[g]ranskning av hur statistiska metoder och resultat används i samhället och 
inom vetenskap" samt "[b]egreppen beroende och oberoende händelser samt metoder 
för beräkning av sannolikheter vid slumpförsök i flera steg med exempel från 
spel och risk- och säkerhetsbedömningar". Det som kan skilja är notationen, men 
den skiljer från kurs till kurs och bok till bok på universitetet också --- så 
det får man alltid leva med.

Detta finns även med i den äldre kursplanen för grundskolan: "kunna använda 
begreppet sannolikhet i enkla slumpsituationer" [lpo94, åk 9][lpo94].

Vi finner ytterligare i [lgr11]: i åk 1-3 ska man behandla "[n]aturliga 
tal och deras egenskaper samt hur talen kan delas upp", d.v.s.  
heltalsdivision med kvot och rest. För detta behövs när man senare i åk 
1-3 ska behandla "[d]el av helhet och del av antal. Hur delarna kan 
benämnas och uttryckas som enkla bråk samt hur enkla bråk förhåller sig 
till naturliga tal". Så att därifrån ta steget till att räkna med enbart 
restdelarna vid divisionen (d.v.s. i cirkeln) är inte för mycket begärt 
på en kurs på högskolenivå. (Från 2011 ska detta även repeteras på 
gymnasiet: "[e]genskaper hos mängden av heltal, olika talbaser samt begreppen 
primtal och delbarhet" [gy11][gy11].)

För att förstå varje detalj i ElGamal, ja, då behöver du ha läst 
matematik på högskolenivå. Men ni behöver inte känna till att om $p$ 
inte är ett primtal så kommer vissa tal i $\mathbb{Z}_p^*$ att sakna 
multiplikativ invers, vilket gör att det inte går att avkryptera. För ni 
behöver inte implementera detta och definitivt inte skapa något nytt liknande 
system.  Poängen är att ni ska känna till att ElGamal inte är "ett magiskt 
system som bara fungerar".  Ni ska ha en idé om hur det fungerar, ni ska veta 
att det baseras på att Eve inte kan lösa diskreta logaritmproblemet --- så att 
när vi får en kvantdator som löser problemet, då vet ni att ElGamal är kört; 
eller när det kommer en ny superdator så vet ni att den har en möjlighet att 
gissa rätt nyckel om ni inte har en tillräckligt stor nyckelrymd.  Ni ska ha en 
uppfattning om att säkerheten hos ElGamal och dylika system inte baseras på 
perfekt sekretess.

Samma sak med zero-knowledge proofs of knowledge. Det krävs mycket matematik 
för att förstå varför systemet är konstruerat som det är och för att bevisa att
ett protokoll faktiskt är ett zero-knowledge proof of knowledge. Men ni behöver
inte göra det. Ni behöver bara ha tillräcklig med förståelse för vad systemet 
kan åstadkomma så att när någon idiot i framtiden försöker att lura er att ni 
behöver visa ert personnummer och legitimation för att visa att ni är över 18, 
så kan ni säga "det är fel" och förklara att det finns något som heter 
anonymous credentials som bygger på zero-knowledge proofs of knowlege där ni 
inte behöver avslöja en endaste bit mer än att ni faktiskt är över 18 år.

Andra matematiska förkunskaper som ni förväntas kunna är "[i]nnebörden 
av variabelbegreppet och dess användning i algebraiska uttryck, formler och 
ekvationer" [lgr11, åk 7-9][lgr11] samt "[f]unktioner och räta linjens 
ekvation" [lgr11, åk 7-9][lgr11].  Och från gymnasiet: "[b]egreppen funktion, 
definitions- och värdemängd samt egenskaper hos linjära funktioner samt potens- 
och exponentialfunktioner" [gy11][gy11] samt "[g]eneralisering av aritmetikens 
räknelagar till att hantera algebraiska uttryck" [gy11][gy11].  Potenser som 
nämndes tidigare ska ni även ha koll på sedan grundskolan: "[p]otensform för 
att uttrycka små och stora tal samt användning av prefix" [lgr11, åk 
7-9][lgr11]. Potenser är relaterat till logaritmer, logaritmlagarna behandlas i 
matematik 2 på gymnasiet. Att lära sig att $2^{\log x} = x$ under kursens gång 
är inte heller oresonligt. Men ska man vara strikt så behöver ni inte ens det. 
Enda anledningen till att ni behöver känna till detaljer om logatitmen är för 
att förstå varför entropin för olika variabler går att addera (utan 
logaritmerna hade vi måstat multiplicera, vilket inte är lika intuitivt och 
enheten hade då inte varit bitar).

Även i Matematik A tog man upp funktioner: "kunna tolka och hantera 
algebraiska uttryck, formler och funktioner som krävs för problemlösning i 
vardagslivet och i studieinriktningens övriga ämnen" [lpf94, Matematik 
A][lpf94]; samt potenser: "kunna ställa upp och tolka linjära ekvationer och 
enkla potensekvationer samt lösa dem med för problemsituationen lämplig metod 
och med lämpliga hjälpmedel" [lpf94, Matematik A][lpf94]. På samma sätt täcks 
logaritmer senare: "kunna tolka och använda logaritmer och potenser med reella 
exponenter samt kunna tillämpa dessa vid problemlösning" [lpf94, Matematik 
C][lpf94]. Men det är fortfarande rimliga förväntningar att ni lär er vad en 
logaritm är under denna kurs.

Det enda som är kvar som inte tagits upp i grundskolan eller gymnasiet 
är mängder. Vi behöver inga djupare resultat om mängder, utan vi behöver 
endast veta

    - att $M = \{x, y, \ldots\}$ är en mängd med elementen $x$ och $y$,
    - att vi säger $x \in M$ och $y \in M$ för att säga att $x$ 
      respektive $y$ är ett element i mängden $M$,
    - att $\{x\} \cup \{y\} = \{x, y\}$ och $\{x, y\} \cap \{y, z\} 
      = \{y\}$.

Vilket också är helt resonligt att ni lär er på denna kurs.

Att använda sigmatecknet för att beteckna en summa är enbart en form av 
notation, den kan närmast jämföras med att skriva en for-iteration 
(vilket ni har som förkunskap).  Summatecknet benämns inte heller i någon av 
kursplanerna [lgr11][lgr11], [gy11][gy11], [lpo94][lpo94], [lpf94][lpf94]. Det 
närmaste man finner där är i Matematik C: "kunna använda matematiska modeller 
av olika slag, däribland även sådana som bygger på summan av en geometrisk 
talföljd" [lpf94, Matematik C][lpf94].  Så sannolikt introduceras 
summanotationen där för att den inte har behövts tidigare och att det avsnittet 
skulle bli helt oumbärligt utan en kortare notation, så den notationen är inte 
något speciellt för Matematik C.  Geometriska talföljder, som är specifikt för 
Matematik C, är dock en speciell typ av summa som vi inte är intresserade av, 
detsamma gäller aritmetiska talföljder (som brukar behandlas strax innan de 
geometriska).

Matematik D och E innehåller ingenting om sannolikhetslära [gy11, Matematik D 
och E][gy11].

Alla dessa saker som ni behöver tog jag upp under föreläsningens gång.  
Och jag understryker ytterligare en gång att ni bör ställa frågor under 
föreläsningen; även om det bara är att jag ska repetera vad jag sa på 
föregående slide, att jag ska påminna om definitionen av en logaritm 
trots att det bara var fem minuter sedan jag gick igenom det. Ett tips 
är att ni antecknar under föreläsningens gång. Sedan får ni avsätta tid 
för att lära er detta, det är inte särskilt mycket och det är en del av 
kursen.  Ni behöver inte läsa extra kurser i matematik, jag har tagit 
upp allt ni behöver.  (Förutsatt att ni faktiskt minns vad ni lärde er 
i grund- och gymnasieskolan, annars bör ni repetera det.) Behöver ni mer 
material än enbart föreläsningen så är det bara att fråga: för 
sannolikhetsteori rekommenderas [Sannolikhet, avsnitt 1--4][Sannolikhet], den 
tar upp mer än vad vi behöver --- även om mängder.

[lgr11]: http://skolverket.se/laroplaner-amnen-och-kurser/grundskoleutbildning/grundskola/matematik

[gy11]: http://www.skolverket.se/laroplaner-amnen-och-kurser/gymnasieutbildning/gymnasieskola/mat?subjectCode=MAT&courseCode=MATMAT01c&lang=sv&tos=gy#anchor_MATMAT01c

[lpo94]: http://skolverket.se/laroplaner-amnen-och-kurser/grundskoleutbildning/grundskola/matematik

[lpf94]: http://skolverket.se/laroplaner-amnen-och-kurser/gymnasieutbildning/gymnasieskola/kursplaner-fore-2011/subjectKursinfo.htm?subjectCode=MA&courseCode=MA1201&lang=sv&tos=gy2000#anchor_MA1201

[Sannolikhet]: https://www.math.kth.se/cirkel/2007/kompendium07.ps


