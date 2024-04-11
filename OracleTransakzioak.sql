 
 
 
 
 
 
 Beste SqlDeveloper bat ireki eta HR erabiltzaile gisa ere sartu.
• Sartu lehenengo SqlDeveloper-en.
• Regions taulan hurrengo registroa txertatu:
INSERT INTO regions VALUES (5,'Afrika' );


• Ikus dezakegula egiaztatu. ✔


• Sartu beste SqlDeveloper-era. Ilara ikus dezakegu? Ez, ez da ikusten
• Itzuli lehen SqlDeveloper-era eta egin commit bat.
• Berriro sartuko gara beste SqlDeveloper-era. Ikus dezakegu orain
ilara? Bai, Ilara ikusi dezakegu commit egin ondoren

• Itzul gaitezen lehen SqlDeveloper-era.
• Ilarako DELETE bat egin.
• Egiaztatu ezabatu egin dela.
• ROLLBACK bat egin. Bai, rollback egin ondoren afrika berreskuratzen dugu
• Egiaztatu berreskuratu dela.


• SAVEPOINT bat probatuko dugu.
• Bi eragiketa hauek egingo ditugu:
INSERT INTO regions VALUES (7,'Mexiko' );
INSERT INTO regions VALUES (8,'Frantzia' );
• SAVEPOINT bat jarriko dugu
• Egiaztatu txertaketak ikusten ditugula
• Orain eragiketa hau egingo dugu
UPDATE regions SET region_name='Argelia' WHERE region_id=8;


	

savepoint zero;
INSERT INTO regions VALUES (7,'Mexiko' );
savepoint bat;
INSERT INTO regions VALUES (8,'Frantzia' );
savepoint bi;
ROLLBACK TO bi;


• Egin ROLLBACK bat aurreko SAVEPOINT-eraino.
• Egiaztatu UPDATE bakarrik desagertu dela.
Update bakarrik desagertu da, orain frantzia izena du

• COMMIT bat egin.

Commit egin ondoren bi erabiltzaileetatik ikus dezakegu