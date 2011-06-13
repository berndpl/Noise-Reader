class Graph{
int segments;            
int	radius = 100;          
float maxValue;
float[] values;
float alpha;

	Graph(){
			segments = 60 * (int)factor; 
		  alpha = PI * 2 / segments;   
			println("Graph created");
	}
	
	void add(int i, float mappedVal){                   
	      float theta = alpha * i - 1.5;
				println("theta: "+theta);
	      float x = cos(theta) * radius;
				float y = sin(theta) * radius;
	      float x2 = cos(theta) * radius*mappedVal;
				float y2 = sin(theta) * radius*mappedVal;
				line((int)x+width/2,(int)y+height/2,(int)x2+width/2,(int)y2+height/2);
	}          
}