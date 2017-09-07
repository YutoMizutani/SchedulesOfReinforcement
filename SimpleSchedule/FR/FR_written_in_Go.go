//
//  FR_written_in_Go.go
//
//  Created by Yuto Mizutani on 2017/09/07.
//  Copyright (c) 2017 Yuto Mizutani.
// 
//  This software is released under the MIT License.
//  https://github.com/YutoMizutani/SchedulesOfReinforcement/blob/master/LICENSE
//

// Function definition in Go
func decisionFR(numOfResp int, value int) bool {
    return numOfResp % value == 0
}

// Call a function
numOfResp := 10
value := 5
fmt.Println(decisionFR(10, 5)) // true
