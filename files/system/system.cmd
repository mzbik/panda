DISABLE LOGGING
DISABLE OUTPUT-DISPLAY BUGINF-MESSAGES
DISABLE OUTPUT-DISPLAY BUGCHK-MESSAGES
DISABLE OUTPUT-DISPLAY SYSTEM-MESSAGES
DISABLE OUTPUT-DISPLAY ALL-MESSAGES /JOB
SET BATCH-STREAM 0:3 TIME-LIMIT 11000
SET BATCH-STREAM 0:3 PRIORITY-LIMITS 1:63
START BATCH-STREAM 0:3
!WAIT 5
!NCP SET CIRCUIT NI-0-0 SERVICE ENABLED
!NCP SET CIRCUIT NI-0-0 STATE ON
SEND ALL System in operation
 