//your code here
NormalParticle [] stuff;
void setup()
{
	//your code here
	size(500,500);
	stuff = new NormalParticle[1000];
	for(int i = 0; i < stuff.length; i++)
	{
		stuff[i] =  new NormalParticle();
	}
}
void draw()
{
	//your code here
	background(0, 0, 0);
	for(int i = 0; i < stuff.length; i++)
	{
		stuff[i].move();
		stuff[i].show();
	}
}
class NormalParticle implements Particle
{
	//your code here
	double xPos;
	double yPos;
	double speed;
	double angle;
	double size;
	int colores;

	NormalParticle()
	{
		xPos = 250;
		yPos = 250;
		angle = Math.random()*(2*Math.PI);
		speed = Math.random()*20; 
		size = Math.random()*7;
		colores = color(255, 255, 0);
	}
	public void move()
	{
		xPos += speed * Math.cos(angle);
		yPos += speed * Math.sin(angle);

	}

	public void show()
	{
		ellipse((float)xPos, (float)yPos, (float)size, (float)size);
	}

}
interface Particle 
{
	//your code here
	public void show();
	public void move();
}
class OddballParticle  //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

