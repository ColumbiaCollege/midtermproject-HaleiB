Frog myFrog; 
Car myCar1;
Car myCar2; 


void setup() {
  size(700, 700);
  // Parameters go inside the parentheses when the object is constructed.
  //myFrog = new Frog(color(0, 170, 0), width/2, 699, 1);
  myFrog = new Frog(width/2);
  myCar1 = new Car(color(255, 0, 0), 0, 100, 2); 
  myCar2 = new Car(color(0, 0, 255), 0, 10, 1);
}

void draw() {
  background(170);
  myFrog.drawFrog();
  myCar1.drive();
  myCar1.display();
  myCar2.drive();
  myCar2.display();
}



// Even though there are multiple objects, we still only need one class. 
// No matter how many cookies we make, only one cookie cutter is needed.
class Car { 
  color c;
  float xpos;
  float ypos;
  float xspeed;

  // The Constructor is defined with arguments.
  Car(color tempC, float tempXpos, float tempYpos, float tempXspeed) { 
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
  }
}


void display() {
  stroke(0);
  fill(c);
  rectMode(CENTER);
  rect(xpos, ypos, 20, 10);
}

void drive() {
  xpos = xpos + xspeed;
  if (xpos > width) {
    xpos = 0;
  }
}

if (keyPressed)
