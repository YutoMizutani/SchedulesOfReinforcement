' 
'   FR_written_in_VB.NET.vb
' 
'   Created by Yuto Mizutani on 2017/09/07.
'   Copyright (c) 2017 Yuto Mizutani.
'  
'   This software is released under the MIT License.
'   https://github.com/YutoMizutani/SchedulesOfReinforcement/blob/master/LICENSE
'

' Function definition in VB.NET
Function decisionFR(ByVal numOfResp As Integer, ByVal value As Integer) As Boolean
	Return numOfResp Mod value = 0
End Function
	
' Call a function
Dim numOfResp As Integer = 10
Dim value As Integer = 5
Debug.Write(decisionFR(10, 5)) ' True
