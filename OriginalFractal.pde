public void setup(){
	
	size(1000,1000);
	background(21,149,158);

}

public void draw(){



squareFractal(500,50,-500,1500,43,128,136);

strokeWeight(20);
stroke(255,234, 0);
noFill();
rect(0,0, 1000, 1000);

myFractal(500,350,650,980,249,255,89,255);



}

public void myFractal(int n,int a,int b,int c,int r, int g, int bl,int re){

if(c<5){

	strokeWeight(10);

	fill(r,g,bl);
	ellipse(n,n, c,c);

	fill(255,0,0);
	
	bezier(n, n,n-a,n-b,n+a,n-b, n, n);
	bezier(n, n, n-b,n-a,n-b,n+a, n, n);
	bezier(n, n,n-a,n+b,n+a,n+b,n, n);
	bezier(n, n,n+b,n-a,n+b,n+a, n,n);

}
	
else{

	stroke(255, 235, 0);
	strokeWeight(2);

	fill(r,g,bl);
	ellipse(n,n, c/2,c/2);

	fill(re,0,0);
	
	bezier(n, n,n-a,n-b,n+a,n-b, n, n);
	bezier(n, n, n-b,n-a,n-b,n+a, n, n);
	bezier(n, n,n-a,n+b,n+a,n+b,n, n);
	bezier(n, n,n+b,n-a,n+b,n+a, n,n);

	myFractal(n,(int)((a/2)*Math.PI/2),(int)((b/2)*Math.PI/2),(int)((1.01*c/1.13)),r,g-15,bl-5,re-20);
	
}
}

public void squareFractal(int constant, int change, int neg, int pos,int r, int g, int b){

if(neg>100){

	strokeWeight(10);
	fill(r,g,b);
	quad(constant,neg,pos,constant,constant,pos,neg,constant);
}
	
else{
	stroke(255,234,0);
	strokeWeight(10);
	fill(r,g,b);

	quad(constant,neg,pos,constant,constant,pos,neg,constant);

	squareFractal(constant,change,neg+change,pos-change,r+3,g+8,b+10);
}





}