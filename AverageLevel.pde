class AverageLevel {

	float averageLevel = 0;
	int messures = 0;

	void logLevel (){

		for(int i = 0; i < in.bufferSize() - 1; i++)
		{
		  line(i, 50 + in.left.get(i)*50, i+1, 50 + in.left.get(i+1)*50);
		  line(i, 50, 100, 50);
			averageLevel += abs(in.left.get(i)); 
			messures++;
		}	
		
		
	}
	
	float read (){
      float averageLevelReturn;
			averageLevelReturn = (averageLevel/messures); 
			println("Return Avg. Level [Messures: "+messures+"][Avg. Level: "+averageLevel+"]: "+averageLevelReturn);
			averageLevel = 0;
			messures = 0;			
			return averageLevelReturn;
	}


}