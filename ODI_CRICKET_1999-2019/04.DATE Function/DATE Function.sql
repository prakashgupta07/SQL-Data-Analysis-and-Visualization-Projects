
-------- CHANGING THE DATE FORMAT OF COLUMN START_DATE OF TABLE BATSMAN
UPDATE BATSMAN SET START_DATE=STR_TO_DATE(START_DATE,'%d-%M-%Y');


----- CHANGING DATE FORMAT OF COLUMN START_DATE  OF TABLE BOWLER
UPDATE BOWLERS SET START_DATE=STR_TO_DATE(START_DATE,'%d-%M-%Y');


----- CHANGING THE FORMATE OF DATE OF COLUMN START_DATE IN TABLE ODI_MATCH_RESULT
UPDATE  ODI_MATCH_RESULT SET START_DATE=STR_TO_DATE(START_DATE,'%d-%m-%Y');
