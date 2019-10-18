Bacteria [] colony;
void setup()   
{     
	size(500, 500);
	background(0);
	colony = new Bacteria[1000];
	for(int i=0; i<colony.length; i++){
		colony[i] = new Bacteria();
	}
}   
void draw()   
{
	background(0);
	for(int i = 0; i < colony.length; i++){
		colony[i].move();
		colony[i].show();
	}
}  
class Bacteria    
{     
	int x,y,c;
	Bacteria(){
		x = 250;
		y = 250;
		c = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
	}
	void move(){
		x += (int)(Math.random()*3)-1;
		y += (int)(Math.random()*3)-1;
	}
	void show(){
		fill(c);
		ellipse(x, y, 5, 5);
	} 
}    

void mousePressed() {
	frameRate(1000);
}