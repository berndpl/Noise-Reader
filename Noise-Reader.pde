import ddf.minim.*;  

Minim minim;
AudioInput in;
int logged = 0; 
int runningTime = 0;
float averageLevel = 0;
                    
int counter = 0;
float [] oneMinute;  
float valueSecond;  

Graph	myGraph;
AverageLevel myAverageLevel;                    

float oneMinuteAverage = 0;   

float factor = 1;

void setup(){
	size(640,480);                           
	background(0);
	oneMinute = new float [60];
	minim = new Minim(this);
	in = minim.getLineIn(Minim.MONO, 64);   
	
	myGraph = new Graph(); 	       
	myAverageLevel = new AverageLevel();   
}

void draw(){  
//	background(0);   
	stroke(255);


	myAverageLevel.logLevel();
  	

		runningTime=millis()/(1000/(int)factor)%60;

		//EVERY SECOND DO:
	if (runningTime != logged){     
		valueSecond = myAverageLevel.read();

		valueSecond = map(valueSecond, 0,1,1,10);
		oneMinute[runningTime] = valueSecond;

		logged = runningTime;   
		  
	 	println ("["+runningTime+"]"+oneMinute[runningTime]);   
	
		myGraph.add(runningTime,oneMinute[runningTime]);

		oneMinuteAverage +=	oneMinute[runningTime]/(runningTime+1);
		println ("One Minute Avg.: "+oneMinuteAverage);
 	}          

                                               
	
	//EVERY MINUTE DO:
	if (runningTime == 0){
    background(0);		
                                    

		oneMinuteAverage = 0;
		
	}   
	
		
}

