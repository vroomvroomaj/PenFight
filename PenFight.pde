import fontastic.*;
import static javax.swing.JOptionPane.*;

void setup(){
  size(2050,1000);
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
  if(AP == true)
    AHasTheDice();
  if(BP == true)
    BHasTheDice();
  if(CP == true)
    CHasTheDice();
  }



}

void AHasTheDice(){
  A[i] = round(random(1,6));
  print(A[i]);
  print("~");
  textSize(30);
  if (A[i] == 4 || A[i] == 6){
    fill(0,255,0);
    text(str(A[i]),i*18,100);
    AP = false;
    BP = true;
    CP = true;
    AAHasThePen();
    
  }
  else{
    fill(255,0,0);
    text(str(A[i]),i*18,100);
  }
  
  i++;
}

void BHasTheDice(){
  B[k] = round(random(1,6));
  print(B[k]);
  print("~");
  textSize(30);
  if (B[k] == 4 || B[k] == 6){
    translate(width/2, height/2);
    rotate(k);
    fill(0,255,0);
    text(str(B[k]),k*18,200);
    noFill();
    stroke(255,0,0);rotateX(PI/1.1);
    rect(0,160,2050,50);rotateX(PI/1.7);
    
    AP = true;
    BP = false;
    CP = true;
    BBHasThePen();
  }
  else{
    translate(width/2, height/2);
    rotate(k);
    fill(0,255,0);
    text(str(B[k]),k*18,200);
    noFill();
    stroke(255,0,0);rotateX(PI/1.1);
    rect(0,160,2050,50);rotateX(PI/1.7);
  }
  
  k++; 
}

void CHasTheDice(){
  C[j] = round(random(1,6));
  print(C[j]);
  print("~");
  textSize(30);
  if (C[j] == 4 || C[j] == 6){
    fill(0,255,0);
    text(str(C[j]),j*18,300);
    AP = true;
    BP = true;
    CP = false;
    CCHasThePen();
  }
  else{
    fill(255,0,0);
    text(str(C[j]),j*18,300);
  }
  
  j++; 
}

void AAHasThePen(){
  if(AP == false){
  AA[l] = l;
  textSize(15);
  fill(0,255,0);
  text(str(AA[l]),l*20,130);
  l++;
  }
  
}

void BBHasThePen(){
  if(BP == false){
  BB[m] = m;
  textSize(15);
  fill(0,255,0);
  text(str(BB[m]),m*20,230);
  m++;
  }
}

void CCHasThePen(){
  if(CP == false){
  CC[n] = n;
  textSize(15);
  fill(0,255,0);
  text(str(CC[n]),n*20,330);
  n++;
  }
  
}
