----- DELETING FROM TABLE WHERE WHERE SR='-'
DELETE FROM BATSMAN WHERE SR='-';


-- DELETING VALUE '-' IN COLUMN OVERS IN TABLE BOWLERS
DELETE FROM BOWLERS WHERE OVERS='-';

----- DELETING ('n/r','absn','tied','canc','-') FROM COLUMN RESULT IN TABLE ODI_MATCH_RESULT
DELETE FROM ODI_MATCH_RESULT WHERE RESULT IN ('n/r','absn','tied','canc','-');
