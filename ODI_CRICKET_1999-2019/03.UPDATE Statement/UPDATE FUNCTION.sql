
-------- CHANGING THE DATE FORMAT OF COLUMN START_DATE OF TABLE BATSMAN
UPDATE BATSMAN SET START_DATE=STR_TO_DATE(START_DATE,'%d-%M-%Y');


/* UPDATING COLUMN '%*'=NOT OUT
					ELSE= OUT     OF TABLE BATSMAN	*/
UPDATE BATSMAN SET `OUT/NOT_OUT`=CASE 
									WHEN `OUT/NOT_OUT` LIKE '%*' THEN "NOT OUT"
                                    ELSE "OUT"
                                    END;


----- CHANGING DATE FORMAT OF COLUMN START_DATE  OF TABLE BOWLER
UPDATE BOWLERS SET START_DATE=STR_TO_DATE(START_DATE,'%d-%M-%Y');

----- UPDATING '-' VALUE OF COLUMN AVE OF TABLE BOWLERS
UPDATE  BOWLERS SET AVE=RUNS WHERE AVE='-';


----- CHANGING THE FORMATE OF DATE OF COLUMN START_DATE IN TABLE ODI_MATCH_RESULT
UPDATE  ODI_MATCH_RESULT SET START_DATE=STR_TO_DATE(START_DATE,'%d-%m-%Y');



