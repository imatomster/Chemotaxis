Bacteria [] colony;
void setup()   
{     
	frameRate(100);
	size(500, 500);
	background(0);
	colony = new Bacteria[20];
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
	int x,y,mX,mY,c;
	Bacteria(){
		x = 250;// (int)(Math.random()*501);
		y = 250;// (int)(Math.random()*501);
		mX = 250;
		mY = 250;
		c = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
	}
	void move(){
		x += (int)(Math.random()*3) - 1;
		y += (int)(Math.random()*3) - 1;
		if(mouseX>mX){
			x ++;
			mX ++;
		}else if (mouseX<mX){
			x --;
			mX --;ellipse(x-1, y, 5,10);
		}
		if(mouseY>mY){
			y++;
			mY ++;
		}else if (mouseY<mY){
			y--;
			mY --;
		}


	}
	void show(){
		stroke(c);
		fill(c);
		ellipse(x, y, 10, 10);
		ellipse(x-2, y, 15,15);
		ellipse(x+2, y, 15,15);

	} 
}    