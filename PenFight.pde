import fontastic.*;
import static javax.swing.JOptionPane.*;

void setup(){
  size(2050,480);
  frameRate(30);
  background(0);
  textSize(35);
      fill(0,120,120);
      text("A", 0, 70);
      text("B", 0, 170);
      text("C", 0, 270);
  //mono = loadFont("NotoSansOlChiki-Regular.ttf");
  //A[0] = 1;
  //A[100] = 99;
}
  int i,j,k,l,m,n = 0;
  int N = 10000;
  boolean AP = true;
  boolean BP = true;
  boolean CP = true;
  
  
  int[] A = new int[N];
  int[] B = new int[N];
  int[] C = new int[N];
  int[] AA = new int[N];
  int[] BB = new int[N];
  int[] CC = new int[N];
  PFont mono;

  
void draw(){
  if(AA[100] == 100 || BB[100] == 100 || CC[100] == 100 ) {
    if(AA[100] == 100){
      //showMessageDialog(null, " A is the PenFight Winner!!");
      textSize(40);
      fill(random(0,255),random(0,255),random(0,255));
      text(" A is the PenFight Winner!!", 700, 400);
      delay(500);
    }
    else if(BB[100] == 100){
      //showMessageDialog(null, " B is the PenFight Winner!!");
      textSize(40);
      fill(random(0,255),random(0,255),random(0,255));
      text(" B is the PenFight Winner!!", 700, 400);
      delay(200);
    }
    else if(CC[100] == 100){
      //showMessageDialog(null, " C is the PenFight Winner!!");
      textSize(40);
      fill(random(0,255),random(0,255),random(0,255));
      text(" C is the PenFight Winner!!", 700, 400);
      delay(100);
    }
      
  }
  else{
  //delay(1000);
    AHasTheDice(); 
    WhoeverHasThePen();
    BHasTheDice();
    WhoeverHasThePen();
    CHasTheDice(); 
    WhoeverHasThePen();   
  }


//delay(10);
}

void AHasTheDice(){
  if(AP == true){
  A[i] = randomGenerator();
  print(A[i]);
  print("~");
  textSize(30);
  if (A[i] == 4 || A[i] == 6){
    fill(0,255,0);
    text(str(A[i]),i*18,100);
    AP = false;
    BP = true;
    CP = true;
    //WhoeverHasThePen();
    
  }
  else{
    fill(255,0,0);
    text(str(A[i]),i*18,100);
  }
  
  i++;
  }
}

void BHasTheDice(){
  if(BP == true){
  B[k] = randomGenerator();
  print(B[k]);
  print("~");
  textSize(30);
  if (B[k] == 4 || B[k] == 6){
    fill(0,255,0);
    text(str(B[k]),k*18,200);
    AP = true;
    BP = false;
    CP = true;
    //WhoeverHasThePen();
  }
  else{
    fill(255,0,0);
    text(str(B[k]),k*18,200);
  }
  
  k++; 
  }
}

void CHasTheDice(){
  if(CP == true){
  C[j] = randomGenerator();
  print(C[j]);
  print("~");
  textSize(30);
  if (C[j] == 4 || C[j] == 6){
    fill(0,255,0);
    text(str(C[j]),j*18,300);
    AP = true;
    BP = true;
    CP = false;
    //WhoeverHasThePen();
  }
  else{
    fill(255,0,0);
    text(str(C[j]),j*18,300);
  }
  
  j++; 
  }
}
void WhoeverHasThePen(){
  

  if(AP == false){
  AA[l] = l;
  textSize(15);
  fill(0,255,0);
  text(str(AA[l]),l*20,130);
  l++;
  }

  else if(BP == false){
  BB[m] = m;
  textSize(15);
  fill(0,255,0);
  text(str(BB[m]),m*20,230);
  m++;
  }

  else if(CP == false){
  CC[n] = n;
  textSize(15);
  fill(0,255,0);
  text(str(CC[n]),n*20,330);
  n++;
  }
}

int randomGenerator(){
  //delay(1000);
  return(round(random(1,6)));
}
//void mousePressed() {
//  loop();  // Holding down the mouse activates looping
//}

//void mouseReleased() {
//  noLoop();  // Releasing the mouse stops looping draw()
//} 
