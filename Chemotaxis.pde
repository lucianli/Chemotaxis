Bacteria[] colony;  
 void setup()   
 {     
 	size(600,600);
 	background(75);   
 	colony = new Bacteria[100];
 	for (int i=0; i<colony.length; i++) {
 		colony[i] = new Bacteria();
 	}
 }   
 void draw()   
 {    
 	for (int i=0; i<colony.length; i++) {
 		colony[i].show();
 		colony[i].walk();	
 	}   
 }  
 class Bacteria    
 {     
 	int myX, myY, bacteriaColor;
 	Bacteria() {
 		myX = (int)(Math.random()*301)+150;
 		myY = (int)(Math.random()*301)+150;
 		bacteriaColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
 	}
 	void walk() {
 		myX = myX + (int)(Math.random()*7)-3;
 		myY = myY + (int)(Math.random()*7)-3;
 	}
 	void show() {
 		noStroke();
 		fill(bacteriaColor);
 		ellipse(myX,myY,30,30);
 	}
 }    