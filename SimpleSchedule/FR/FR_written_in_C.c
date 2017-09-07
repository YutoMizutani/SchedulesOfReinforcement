//
//  FR_written_in_C.c
//
//  Created by Yuto Mizutani on 2017/09/07.
//  Copyright (c) 2017 Yuto Mizutani.
// 
//  This software is released under the MIT License.
//  https://github.com/YutoMizutani/SchedulesOfReinforcement/blob/master/LICENSE
//

// Function definition in Clang
int decisionFR(int numOfResp, int value) {
  return numOfResp % value == 0;
}
   	
// Call a function
int numOfResp = 10;
int value = 5;
printf("%d", decisionFR(numOfResp, value)); // 1
