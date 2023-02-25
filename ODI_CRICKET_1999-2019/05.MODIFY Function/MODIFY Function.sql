-- CHANGING THE DATA_TYPE OF COLUMN OF IN TABLE BATSMAN
ALTER TABLE BATSMAN MODIFY COLUMN RUNS INT;
ALTER TABLE BATSMAN MODIFY COLUMN BF INT;
ALTER TABLE BATSMAN MODIFY COLUMN FOURS INT;
ALTER TABLE BATSMAN MODIFY COLUMN SIXES INT;
ALTER TABLE BATSMAN MODIFY COLUMN START_DATE DATE;
ALTER TABLE BATSMAN MODIFY COLUMN PLAYER_ID INT;
ALTER TABLE BATSMAN MODIFY COLUMN SR DECIMAL(38,1);


----- CHANGING THE DATA_TYPE OF COLUMN OF TABLE BOWLERS
ALTER TABLE BOWLERS MODIFY COLUMN OVERS DECIMAL(38,1);
ALTER TABLE BOWLERS MODIFY COLUMN ECON DECIMAL(38,1);
ALTER TABLE BOWLERS MODIFY COLUMN AVE DECIMAL(38,1);
ALTER TABLE BOWLERS MODIFY COLUMN MDNS INT;
ALTER TABLE BOWLERS MODIFY COLUMN RUNS INT;
ALTER TABLE BOWLERS MODIFY COLUMN WKTES INT;
ALTER TABLE BOWLERS MODIFY COLUMN PLAYER_ID INT;




----- CHANGING THE DATA_TYPE OF COLUMN OF TABLE ODI_MATCH_RESULT
ALTER TABLE ODI_MATCH_RESULT MODIFY COLUMN BR INT;
ALTER TABLE ODI_MATCH_RESULT MODIFY COLUMN COUNTRY_ID INT;
ALTER TABLE ODI_MATCH_RESULT MODIFY COLUMN START_DATE DATE;





