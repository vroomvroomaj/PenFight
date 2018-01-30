import fontastic.*;

void setup(){
  size(2000,480);
  background(0);
    //mono = loadFont("NotoSansOlChiki-Regular.ttf");
  //A[0] = 1;
  //A[100] = 99;
}
  int i,j,k = 0;
  int[] A = new int[10000];
  int[] B = new int[100];
  int[] C = new int[100];
  PFont mono;

  
void draw(){
  //background(0);
  if(i<100){
  A[i] = round(random(1,6));
  print(A[i]);
  print("~");
//
textSize(30);
//text(str(A[i]),10,400,i*18,100);
text(str(A[i]),i*18,100);
  
}  
else if(i>100 && i<200){
  A[i] = round(random(1,6));
  print(A[i]);
  print("~");
//
textSize(30);
//text(str(A[i]),10,400,i*18,100);
text(str(A[i]),k*18,100);
 k++; 
}  

else if(i>200 && i<300){
  A[i] = round(random(1,6));
  print(A[i]);
  print("~");
//
textSize(30);
//text(str(A[i]),10,400,i*18,100);
text(str(A[i]),j*18,100);
 j++; 
}  
i++;

  
}