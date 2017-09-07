10
20 'FR_written_in_n88BASIC.BAS
30
40 'Created by Yuto Mizutani on 2017/09/07.
50 'Copyright (c) 2017 Yuto Mizutani.
60 
70 'This software is released under the MIT License.
80 'https://github.com/YutoMizutani/SchedulesOfReinforcement/blob/master/LICENSE
90

200 REM Subroutine definition in n88BASIC
210 *DecisionFR
220 isResult = -1 REM -1以外は全てFALSE
230 IF numOfResp = 0 THEN isResult = 0 : RETURN
240 IF numOfResp MOD value = 0 THEN isResult = -1 ELSE isResult = 0
250 RETURN

100 REM Call a subroutine
110 numOfResp = 10
120 value = 5
130 GOSUB *DecisionFR
140 IF isResult THEN PRINT "TRUE" ELSE PRINT "FALSE" REM TRUE
150 END
