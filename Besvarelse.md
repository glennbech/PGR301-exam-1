### Oppg. 1
#### A

For at actionen skal kjøre på sensor sin fork må sensor legge inn secretene AWS_ACCESS_KEY_ID og AWS_SECRET_ACCESS_KEY
under Actions secrets and variables i settings på forken sin. Disse får man generert fra aws under IAM.

### Oppg. 2
### Oppg. 3
#### B

Hvis sensor har lagt inn de tildligere nevnte AWS tokens i forken sin trenger han ikke gjøre andre endringer for å kjøre
workflowen. Ønsker sensor å bruke et annet ECR repo og en annen prefix til ressursene som opprettes kan dette enkelt
endres ved å endre variablene i pipeline.yml