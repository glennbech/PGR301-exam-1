# Eksamen PGR301 2023
Kandidatnr: 2040

## Oppgave 1
### A

For at actionen skal kjøre på sensor sin fork må sensor legge inn secretene AWS_ACCESS_KEY_ID og AWS_SECRET_ACCESS_KEY
under Actions secrets and variables i settings på forken sin. Disse får man generert fra AWS under IAM.

## Oppgave 2
## Oppgave 3
### B

Hvis sensor har lagt inn de tidligere nevnte AWS tokens i forken sin trenger han ikke gjøre andre endringer for å kjøre
workflowen. Ønsker sensor å bruke et annet ECR repo og en annen prefix til ressursene som opprettes kan dette enkelt
endres ved å endre variablene i pipeline.yml

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
* LongTaskTimer scanImage på hvor lang tid scanning ett bilde tar.

### B

## Oppgave 5
### A

Kontinuerlig Integrasjon er en måte å jobbe med software utvikling som innebærer at endringene man gjør jevnlig
integreres i main branch.

Ved CI har man gjerne en pipeline som kjører tester og kan sjekke om koden er formatert riktig og om andre kodestandarder
er fulgt. Man har ofte låst main branchen som gjør at ingen kan commite kode rett til main. Det må opprettes en 
pull request som ofte må godkjennes av en annen på teamet.

### B



### C


