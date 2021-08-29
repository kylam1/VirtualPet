void setup()
{
  size(800,800);
  background(54,148,199);
}

//Jellyfish!
void draw()
{
  System.out.print(mouseX + ", ");
  System.out.println(mouseY);
//variables
  float radiush = 325;
  float radiusv = 262.5;
  float toprightx = 513;
  float toprighty = 111;
  float topleftx = 487;
  float toplefty = 132;
  float bottomleftx = 637;
  float bottomlefty = 395;
  float bezierax = 343;
  float bezieray = 192;
  float bezierbx = 390;
  float bezierby = 346;
  float beziercx = 166;
  float beziercy = 376;
  float beziermida = 537;
  float beziermidb = 219;
  float beziermidc = 450;
  float beziermidd = 272;
  float beziermide = 396;
  float beziermidf = 350;
  float beziermidg = 233;
  float beziermidh = 496;
  float beziermid2 = 570;
  float beziermid3 = 300;
  
//main body
  fill(255,223,79, 500);
  quad(toprightx,toprighty, topleftx,toplefty, bottomleftx,bottomlefty, 640,320); //Bottom body
  stroke(184,22,22, 400);
  rotate(PI/4);
  ellipse(600, -250, radiush, radiusv); //Body
//Body pattern
  /*sides*/ fill(255,247,99);
  noStroke();
  rotate(-PI/4); //reset rotation
  ellipse(560, 160, radiush/2.2, radiusv/6.3);
  rotate(17*PI/9);
  ellipse(470,420, radiush/2.5, radiusv/7);
  rotate(25*PI/9);
  ellipse(-40, -700, radiush/2.5, radiusv/7);
  rotate(-42*PI/9); rotate(3*PI/2 - PI/8); 
  ellipse(-535, 530, radiush/2.5, radiusv/7);
  rotate(PI/8 + PI/3); //Center back pattern
  ellipse(495, 515, radiush/5, radiusv/7); //pos y = pos y AND pos x = pos x
  rotate(-PI/3 - 3*PI/2 + PI/6);
  ellipse(740, -140, radiush/5, radiusv/7); 
  rotate(-PI/6 + 7*PI/12);
  ellipse(-15, -660, radiush/5, radiusv/7);

  rotate(-7*PI/12 + PI/4 + PI/10); //Negative values should match above to reset rotation - Body/Body pattern is at PI/4 + PI/10
  noStroke();
  fill(255,247,99); //middle
  ellipse(495, -490, radiush/2, radiusv/3.5);
  fill(255,223,79); //overlap middle
  ellipse(495, -490, radiush/3, radiusv/5.2);
  
//blocker (define body shape)
  rotate(-PI/10 - PI/4);
  fill(54,148,199);
  noStroke();
  quad(topleftx-1, toplefty-1, 641,400, 550,456, 372,146);
  strokeWeight(2);
  stroke(184,22,22, 600);
  line(topleftx,toplefty, bottomleftx,bottomlefty); //Bottom body line
//legs
  strokeWeight(2);
  stroke(153,0,0);
  noFill();
  bezier(topleftx+2,toplefty+1, bezierax,bezieray, bezierbx,bezierby, beziercx,beziercy);
  bezier(topleftx+15,toplefty+263/10, bezierax+30,bezieray+263/5, bezierbx+5,bezierby+263/20, beziercx+35,beziercy+263/4);
  bezier(beziermida,beziermidb, beziermidc,beziermidd, beziermide,beziermidf, beziermidg,beziermidh);
  bezier(beziermida+40,beziermidb+263/3.75, beziermid2,beziermid3, beziermide+20,beziermidf+263/5, beziermidg+25,beziermidh+263/6);
  bezier(beziermida+70,beziermidb+263/2.14, beziermid2+20,beziermid3+263/2.5, beziermide+40,beziermidf+263/3.75, beziermidg+40,beziermidh+263/3.75);
  bezier(bottomleftx,bottomlefty, beziermid2+60,beziermid3+263/2.5, beziermide-50,beziermidf-263/3.5, beziermidg+20,beziermidh+100);
}
