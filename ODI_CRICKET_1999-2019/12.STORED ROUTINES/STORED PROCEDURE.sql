
/*----------------------------------------------------------------------------------*/
/*                                 STORED ROUTINES                                 */
/*    EXTRECT ALL BATSMAN WHICH HAS MORE THEN 5000 RUNS                           */
/*-------------------------------------------------------------------------------*/


DELIMITER $$
CREATE PROCEDURE BATSMAN_5000_RUNS()
BEGIN 
		SELECT BATSMAN,SUM(RUNS) AS TOTAL_RUNS FROM BATSMAN 
        GROUP BY 1 HAVING SUM(RUNS)>5000 ORDER BY 2 DESC ;
END $$
DELIMITER ;
CALL BATSMAN_5000_RUNS();


/*----------------------------------------------------------------------------------*/
/*    EXTRECT ALL BATSMAN AND THEIR CENTURIES                                      */
/*--------------------------------------------------------------------------------*/
DELIMITER $$
CREATE PROCEDURE BATSMAN_CENTURY()
BEGIN 
		SELECT BATSMAN, SUM(CASE 
						WHEN RUNS >=100 THEN "1"
						ELSE "0"
						END)  AS CENTURIES
						FROM BATSMAN  GROUP BY 1 ORDER BY 2 DESC;
END $$
DELIMITER ;
CALL BATSMAN_CENTURY();

/* ---------------------------------------------------------------*/
/*   EXTRECT BATSMAN TOTAL RUSN VS DIFFERENT COUNTRY             */
/* -------------------------------------------------------------*/

DELIMITER $$
CREATE PROCEDURE BATS_RUNS_VS_COUNTRY()
BEGIN 
	SELECT BATSMAN,OPPOSITION,SUM(RUNS) AS TOTAL_RUNS FROM BATSMAN GROUP BY 1,2 ORDER BY 1 DESC;
END $$
DELIMITER ;

CALL BATS_RUNS_VS_COUNTRY();

/* ----------------------------------------------------- */
/*         STORE PRECEDURE WITH INPUT PARAMETER         */
/*          EXTRECT INDIVISUL BATSMAN RECORDS          */
/* ---------------------------------------------------*/

DELIMITER $$
CREATE PROCEDURE BATSMAN_DETAILS(IN BATSMAN_NAME VARCHAR(50))
BEGIN
		SELECT BATSMAN, SUM(RUNS) AS TOTAL_RUNS,SUM(FOURS)AS FOURS,SUM(SIXES) AS SIXES FROM BATSMAN 
        WHERE BATSMAN = BATSMAN_NAME GROUP BY 1 ;
END $$
DELIMITER  ;

/* -----------------------------------------------------*/
/*         STORE PRECEDURE WITH INPUT PARAMETER        */
/*          EXTRECT INDIVISUL BOWLER RECORDS          */
/* --------------------------------------------------*/

DELIMITER $$
CREATE PROCEDURE INDIVISUAL_BOWLER(IN BOWLER_NAME VARCHAR(40))
BEGIN
		SELECT BOWLER,SUM(OVERS) AS TOTAL_OVERS ,SUM(MDNS) AS MDNS_OVERS ,SUM(RUNS) AS RUNS_GIVEN ,SUM(WKTES) AS TOTAL_WICKETS ,
        COUNT(*) AS MATCH_PLAYED FROM BOWLERS WHERE BOWLER=BOWLER_NAME
        GROUP BY 1 ;
END $$
DELIMITER ;
CALL INDIVISUAL_BOWLER('Suranga Lakmal');

/* -------------------------------------------------------------------------*/
/*        EXTRECT ALL COUNTRY WINNING RECORD AGAINST OPPOSITION            */
/* -----------------------------------------------------------------------*/
DELIMITER $$
CREATE PROCEDURE COUNTRY_WINNING_RECORD()
BEGIN
			SELECT COUNTRY,OPPOSITION,RESULT,COUNT(*) AS WIN_LOSS FROM 
							ODI_MATCH_RESULT GROUP BY 1,2,3 ORDER BY 1;
END $$
DELIMITER ;

CALL COUNTRY_WINNING_RECORD();


/* --------------------------------------------*/
/*        EXTRECT ALL GROUND RECORD           */
/* ------------------------------------------*/
DELIMITER $$
CREATE PROCEDURE GROUND_RECORD()
BEGIN
			SELECT COUNTRY ,GROUND ,TOSS,BAT, RESULT,COUNT(*) AS MATCHES FROM 
				ODI_MATCH_RESULT GROUP BY 1,2,3,4 ORDER BY 1;
END $$
DELIMITER ;

CALL GROUND_RECORD();


