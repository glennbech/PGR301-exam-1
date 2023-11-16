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
Jeg har valgt å legge til ett endepunkt som kan ta imot ett bilde og analysere dette uten at det trengs å lastes opp 
til en s3 bucket.

Dette kan testes med følgende kommando:
```shell
curl http://localhost:8080/scan-image -X POST --form 'file=@<IMAGE_PATH>'
```

## Oppgave 5
### A
### B
### C
