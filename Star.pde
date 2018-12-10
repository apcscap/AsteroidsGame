class Star //note that this class does NOT extend Floater
{
	private float x, y;
	//your code here
	public Star() {
		x = (float)Math.random()*width;
		y = (float)Math.random()*height;
	}
	public void show() {
		ellipse(x, y, 5, 5);
	}
}
