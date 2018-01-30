import fontastic.*;

void setup(){
  size(2000,480);
  background(0);
    //mono = loadFont("NotoSansOlChiki-Regular.ttf");
  //A[0] = 1;
  //A[100] = 99;
}
  int i,j,k = 0;
  int[] A = new int[100];
  int[] B = new int[100];
  int[] C = new int[100];
  PFont mono;

  
void draw(){
  //background(0);
//if(i<100)
  {
  A[i] = round(random(1,6));
  print(A[i]);
  print("~");
//
textSize(30);
if (A[i] == 4 || A[i] == 6)
fill(0,255,0);
else
fill(255);
text(str(A[i]),i*18,100);
  
}  
//else if(i>100 && i<200)
{
  B[k] = round(random(1,6));
  print(B[k]);
  print("~");
//
textSize(30);
if (B[i] == 4 || B[i] == 6)
fill(0,255,0);
else
fill(255);
text(str(B[k]),k*18,200);
 k++; 
}  

//else if(i>200 && i<300)
{
  C[j] = round(random(1,6));
  print(C[j]);
  print("~");
//
textSize(30);
if (C[i] == 4 || C[i] == 6)
fill(0,255,0);
else
fill(255);
text(str(C[j]),j*18,300);
j++; 
}  

i++;
delay(200);
}
