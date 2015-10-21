//your code here
void setup()
{
	//your code here
	size(500,500);
}
void draw()
{
	//your code here
	background(0, 0, 0);
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
		angle = (Math.cos(Math.random()*3.1415));
		

	}

}
interface Particle
{
	//your code here

}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

