Bacteria [] colony;
boolean glow = false;
int posX = 150;
int posY = 75;
int tick = 100;
void setup()   
{     
	frameRate(100);
	size(600, 600);
	background(0);
	colony = new Bacteria[100];
	for(int i=0; i<colony.length; i++){
		colony[i] = new Bacteria();
	}
}   
void draw()   
{
	if(glow == false){
		background(0);
	}else if(glow == true){
		fill(0,0,0,10);
		noStroke();
		rect(0,0,600,600);
		fill(255, 255, 0);
		textSize(200);
		rotate(PI/4);
		posX += (int)(Math.random()*3) - 1;
		posY += (int)(Math.random()*3) - 1;
		text("GLOW", posX, posY);
		rotate(-PI/4);
	}
	for(int i = 0; i < colony.length; i++){
		colony[i].move();
		colony[i].show();
	}
}  
class Bacteria    
{     
	int x,y,mX,mY,c;
	Bacteria(){
		// x = (int)(Math.random()*501);
		// y = (int)(Math.random()*501);
		x = 250;
		y = 250;
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
			mX --;
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
		ellipse(x-5, y, 15,15);
		ellipse(x+5, y, 15,15);
		line(x, y, x-2, y-15);
		line(x, y, x+2, y-15);
	}
}
void mousePressed(){
	tick+=500;
	if(glow == false){
		glow = true;
	}else if(glow == true){
		frameRate(tick);
		glow = false;
	}
}