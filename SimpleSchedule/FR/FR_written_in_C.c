int decisionFR(int numOfResp, int value) {
  return numOfResp % value == 0;
}
   	
// Function call
int numOfResp = 10;
int value = 5;
printf("%d", decisionFR(numOfResp, value)); // 1
