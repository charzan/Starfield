//your code here
Particle [] stuff;
void setup()
{
	//your code here
	size(500,500);
	stuff = new Particle[1000];
	for(int i = 0; i < stuff.length; i++)
	{
		stuff[0] = new OddballParticle();
		stuff[1] = new JumboParticle();
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
		colores = color(0, 0, 255);
	}
	public void move()
	{
		xPos += speed * Math.cos(angle);
		yPos += speed * Math.sin(angle);

	}

	public void show()
	{
		fill(colores);
		ellipse((float)xPos, (float)yPos, (float)size, (float)size);
	}

}
interface Particle 
{
	//your code here
	public void show();
	public void move();
}
class OddballParticle implements Particle //uses an interface
{
	//your code here
	double xPos;
	double yPos;
	double speed;
	double angle;
	double size;
	int colores;

	OddballParticle()
	{
		xPos = 250;
		yPos = 250;
		angle = Math.random()*(2*Math.PI);
		speed = Math.random()*20; 
		size = Math.random()*15;
		colores = color(255, 0, 0);
	}
	public void move()
	{
		xPos += speed * Math.cos(angle);
		yPos += speed * Math.sin(angle);
	}
	public void show()
	{
		fill(colores);
		rect((float)xPos, (float)yPos, (float)size+5, (float)size+5);
	}

}
class JumboParticle extends NormalParticle //uses inheritance
{
	public void show()
	{
		fill(colores);
		ellipse((float)xPos, (float)yPos, (float)size+30, (float)size+30);
	}
}

