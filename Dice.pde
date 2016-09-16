void setup()
{
	size(700, 700);
	noLoop();
}
void draw()
{
	background(100);
	int sum=0;
	for(int y = 40; y <= 1000; y+=100)
	{
	for(int x=40; x <= 1000; x+=100)
	{
	Die bob = new Die(x, y);
	bob.roll();
	bob.show();
	sum = sum+bob.roll;
}
}
stroke(0);
textSize(30);
text("Total: " + sum, 400, 400);
}
void mousePressed()
{
	redraw();  
}
class Die //models one single dice cube
{
	int myX, myY, roll;
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
	}
	void roll()
	{
		roll=((int)(Math.random()*6)+1);
	}
	void show()
	{
		fill(10);
		rect(myX, myY, 30, 30);
		
		if (roll==1)
		{
			fill(255);
			ellipse(myX+15, myY+15, 5, 5);
		}	
		if (roll==2)
		{
			fill(255);
			ellipse(myX+7, myY+22, 5, 5);
			ellipse(myX+22, myY+22, 5, 5);
		}	
		if (roll==3)
		{
			fill(255);
			ellipse(myX+15, myY+15, 5, 5);
			ellipse(myX+7, myY+7, 5, 5);
			ellipse(myX+22, myY+22, 5, 5);
		}
		if (roll==4)
		{
			fill(255);
			ellipse(myX+7, myY+7, 5, 5);
			ellipse(myX+22, myY+22, 5, 5);
			ellipse(myX+7, myY+22, 5, 5);
			ellipse(myX+22, myY+7, 5, 5);
		}	
		if (roll==5)
		{
			fill(255);
			ellipse(myX+7, myY+7, 5, 5);
			ellipse(myX+22, myY+22, 5, 5);
			ellipse(myX+7, myY+22, 5, 5);
			ellipse(myX+22, myY+7, 5, 5);
			ellipse(myX+15, myY+15, 5, 5);
		}
		if (roll==6)
		{
			fill(255);
			ellipse(myX+7, myY+7, 5, 5);
			ellipse(myX+22, myY+22, 5, 5);
			ellipse(myX+7, myY+22, 5, 5);
			ellipse(myX+22, myY+7, 5, 5);
			ellipse(myX+7, myY+15, 5, 5);
			ellipse(myX+22, myY+15, 5, 5);
		}	
			
			
	}
}
