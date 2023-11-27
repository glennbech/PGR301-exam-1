# Eksamen PGR301 2023
Kandidatnummer: 2040

## Oppgave 1
### A

For at actionen skal kjøre på sensor sin fork må sensor legge inn secretene AWS_ACCESS_KEY_ID og AWS_SECRET_ACCESS_KEY
under Actions secrets and variables i settings på forken sin. Disse får man generert fra AWS under IAM.

### B
Done

## Oppgave 2
Done

## Oppgave 3
### A
Done

### B

Hvis sensor har lagt inn de tidligere nevnte AWS tokens i forken sin trenger han ikke gjøre andre endringer for å kjøre
workflowen. Ønsker sensor å bruke et annet ECR repo og en annen prefix til ressursene som opprettes kan dette enkelt
endres ved å endre variablene i pipeline.yml

(I oppgave 4B legger jeg til en ny secret for EMAIL)

## Oppgave 4
### A
Jeg har valgt å legge til ett endepunkt som kan ta imot ett bilde og analysere dette uten at det trengs å lastes opp 
til en s3 bucket.

Dette kan testes med følgende kommando:
```shell
curl http://localhost:8080/scan-image -X POST --form 'file=@<IMAGE_PATH>'
```

Metrics:

* Counter scanned-images for å se hvor mange bilder som blir scannet
* Counter people for antall personer som er scannet
* Counter violation for antall bilder hvor noen ikke bruker nødvendig verneutstyr
* @Timed på begge endepunktene
* LongTaskTimer scanImage på hvor lang tid scanning av ett bilde tar.

### B

Alarmen utløses hvis scanning av ett enkelt bilde tar i gjennomsnitt lenger enn et halvt sekund, mer enn to minutter på
rad. Dette vil gi feedback på om responstiden økes kraftig.

Jeg har valgt at Epost adressen som alarmen bruker hentes fra en github secret. Dette er for å unngå å hardkode eposten
og for å unngå spam. Ved forking av repoet må det legges til en secret kalt EMAIL.

## Oppgave 5
### A

Kontinuerlig Integrasjon er en måte å jobbe med software utvikling som innebærer at endringene man gjør jevnlig
integreres i main branch.

Ved CI har man gjerne en pipeline som kjører tester og kan sjekke om koden er formatert riktig og om andre
kodestandarder er fulgt. Man har ofte låst main branchen som gjør at ingen kan commite kode rett til main. Det må
opprettes en pull request som ofte må godkjennes av en annen på teamet.

Fordelen med Kontinuerlig Integrasjon er at man alltid kan vite at main branchen kan bygges og består testene.

### B

I Scrum jobber man i sprinter og deployer gjerne på slutten av sprinten.

I Devops deployer man oftere. Når man deployer oftere er sjansen større for å deploye småfeil hvis man ikke har gode 
rutiner for testing. Samtidig kan man mye raskere oppdage og rulle ut ny kode når man oppdager feil i produksjon.

### C

Ved implementering av nye funksjoner kan man implementer innsamling av data om hvordan koden kjører, hvor lang tid 
forskjellige deler av koden tar osv.

Man kan overvåke bruker adferd og se på hva brukeren trykker på og hvor brukeren stopper opp. Man kan bruke A/B testing
og ha to forskjellige versjoner av applikasjonen og se hva som fører til at ønsket bruker oppførsel.
