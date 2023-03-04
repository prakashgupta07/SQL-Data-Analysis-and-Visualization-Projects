/* --------------------------------------------*/
/*   EXTRECT TOTAL RUNS  OF BATSMAN           */
/* ------------------------------------------*/

DELIMITER $$
CREATE FUNCTION BATSMAN_RECORD( BATSMAN_NAME VARCHAR(255)) 
RETURNS INT
DETERMINISTIC
BEGIN
	DECLARE TOTAL_RUNS INT;
		SELECT SUM(RUNS) AS TOTAL_RUNS
			INTO TOTAL_RUNS
		FROM BATSMAN 
        WHERE BATSMAN=BATSMAN_NAME ;
	RETURN TOTAL_RUNS;
END $$
DELIMITER ;

SELECT BATSMAN_RECORD('Virat Kohli ');

/* --------------------------------------------*/
/*   SELECT AVERAGE   OF BATSMAN           */
/* ------------------------------------------*/


DELIMITER $$
CREATE FUNCTION BATSMAN_AVERAGE( BATSMAN_NAME VARCHAR(255)) 
RETURNS DECIMAL(38,2)
DETERMINISTIC
BEGIN
	DECLARE BATSMAN_AVE DECIMAL(38,2);
		SELECT SUM(RUNS)/SUM(CASE 
								WHEN `OUT/NOT_OUT`='NOT OUT' THEN "0"
                                ELSE "1"
                                END
                                ) 
			INTO BATSMAN_AVE
		FROM BATSMAN 
        WHERE BATSMAN=BATSMAN_NAME ;
	RETURN BATSMAN_AVE;
END $$
DELIMITER ;

SELECT BATSMAN_AVERAGE('Virat Kohli ');

/* --------------------------------------------*/
/*   SELECT BEST SCORE  OF BATSMAN           */
/* ------------------------------------------*/

DELIMITER $$
CREATE FUNCTION BEST_SCORE_BAT(BATSMAN_NAME VARCHAR(50))
RETURNS INT
DETERMINISTIC
BEGIN
		DECLARE BEST_SCORE INT;
        SELECT MAX(RUNS) 
			INTO BEST_SCORE
            FROM BATSMAN  WHERE BATSMAN=BATSMAN_NAME ;
            RETURN BEST_SCORE;
END $$
DELIMITER ;

SELECT BEST_SCORE_BAT('Virat Kohli ');


/* --------------------------------------------*/
/*   SELECT BEST BOWLING FIGURE          */
/* ------------------------------------------*/

DELIMITER $$
CREATE FUNCTION BEST_BOWLING_FIGURE(BOWLER_NAME VARCHAR(50))
RETURNS INT
DETERMINISTIC
BEGIN
		DECLARE BEST_WICKETS INT;
        SELECT MAX(WKTES) 
			INTO BEST_WICKETS
            FROM BOWLERS  WHERE BOWLER=BOWLER_NAME ;
            RETURN BEST_WICKETS;
END $$
DELIMITER ;

SELECT BEST_BOWLING_FIGURE('Lasith Malinga');