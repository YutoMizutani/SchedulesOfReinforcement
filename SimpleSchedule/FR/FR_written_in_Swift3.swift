//
//  FR_written_in_Swift3.swift
//
//  Created by Yuto Mizutani on 2017/09/07.
//  Copyright (c) 2017 Yuto Mizutani.
// 
//  This software is released under the MIT License.
//  https://github.com/YutoMizutani/SchedulesOfReinforcement/blob/master/LICENSE
//

// Function definition in Swift3
func decisionFR(_ numOfResp:Int, value:Int) -> Bool {
    return numOfResp % value == 0
}
   	
// Call a function
let numOfResp:Int = 10
let value:Int = 5
print(decisionFR(numOfResp, value:value)) // true
