//your code here
NormalParticle [] stuff;
void setup()
{
	//your code here
	size(500,500);
	stuff = new NormalParticle[1000];
	for(int i = 0; i < stuff.length; i++)
	{
		stuff[i] =  new NormalParticle;
	}
}
void draw()
{
	//your code here
	background(0, 0, 0);
	for(int i = 0; i < stuff.length; i++)
	{
		
	}
}
class NormalParticle
{
	//your code here
	double xPos;
	double yPos;
	double speed;
	double angle;

	NormalParticle()
	{
		xPos = (Math.random()*5);
		yPos = (Math.random()*5);
		angle = Math.random()*2*Math.PI;
		speed = Math.random()*8; 

		

	}

}
interface Particle 
{
	//your code here
	void move()
	{
		//angle += Math.cos(angle);
		yPos += Math.cos(angle) * speed;
		xPos += Math.sin(angle) * speed;
	}
	void show()
	{
		fill(255);
		ellpise(xPos, yPos, 7, 7);
	}


}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

