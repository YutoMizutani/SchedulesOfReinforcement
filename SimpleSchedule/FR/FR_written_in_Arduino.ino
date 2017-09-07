//
//  FR_written_in_Arduino.ino
//
//  Created by Yuto Mizutani on 2017/09/07.
//  Copyright (c) 2017 Yuto Mizutani.
// 
//  This software is released under the MIT License.
//  https://github.com/YutoMizutani/SchedulesOfReinforcement/blob/master/LICENSE
//

// Function definition in Arduino
boolean decisionFR(int numOfResp, int value) {
	return numOfResp % value == 0;
}

// Call a function
int numOfResp = 10;
int value = 5;
Serial.println(decisionFR(10, 5)); // true
