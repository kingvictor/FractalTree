private double fractionLength = .8; 
private int lastBranch = 9; 
private double branchAngle = .3;  
public void setup() 
{size(640,480);} 
public void draw() 
{background(0);   
 stroke(255,0,105);   
 line(340, 500, 340, 400);
 fractalTree(340, 400, 90, 3*Math.PI/2);} 
public void fractalTree(int x,int y, double fractalLength, double angle) 
{double angle1 = angle + branchAngle;
 double angle2 = angle - branchAngle;
 fractalLength = fractionLength*fractalLength;
 int endX1 = (int)(fractalLength*Math.cos(angle1) + x);
 int endY1 = (int)(fractalLength*Math.sin(angle1) + y);
 int endX2 = (int)(fractalLength*Math.cos(angle2) + x);
 int endY2 = (int)(fractalLength*Math.sin(angle2) + y);
 line(x, y, endX1, endY1);
 line(x, y, endX2, endY2);
 if (fractalLength > lastBranch){
     fractalTree(endX1, endY1, fractalLength, angle1);
     fractalTree(endX2, endY2, fractalLength, angle2);}}
