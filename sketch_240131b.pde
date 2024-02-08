float arm1L = 50;
float arm1W = 10;
float hand1L = 15;
float hand1W = 20;
float finger11 = 17;
float finger12 = 18;
float finger13 = 16;
float finger14 = 10;
float finger1T = 10;
float finger1W = 3;
float angleAX = 0;
float angleAY = 0;
float angleAZ = 0;
float angleHX = 0;
float angleHY = 0;
float angleHZ = 0;

float angleF11 = 0;
float angleF12 = 0;
float angleF13 = 0;
float angleF21 = 0;
float angleF22 = 0;
float angleF23 = 0;
float angleF31 = 0;
float angleF32 = 0;
float angleF33 = 0;
float angleF41 = 0;
float angleF42 = 0;
float angleF43 = 0;
float angleT1 = 0;
float angleT2 = 0;

float dif = 3.0;

float arm2L = 50;
float arm2W = 10;
float hand2L = 15;
float hand2W = 20;
float finger21 = 17;
float finger22 = 18;
float finger23 = 16;
float finger24 = 10;
float finger2T = 10;
float finger2W = 3;

float angle2AX = 0;
float angle2AY = 0;
float angle2AZ = 0;

float angle2HX = 0;
float angle2HY = 0;
float angle2HZ = 0;

float angleF211 = 0;
float angleF212 = 0;
float angleF213 = 0;
float angleF221 = 0;
float angleF222 = 0;
float angleF223 = 0;
float angleF231 = 0;
float angleF232 = 0;
float angleF233 = 0;
float angleF241 = 0;
float angleF242 = 0;
float angleF243 = 0;
float angleT21 = 0;
float angleT22 = 0;

boolean g=false;
boolean u=false;
boolean c=false;
boolean h=false;
boolean r=false;
boolean p=false;
boolean a=false;


void setup(){
  size(1000, 1000, P3D);
  //background(255);

  camera(150, -50, 100, 0, 0, 40, 0, 0, -1);

  noStroke();  
}


void draw(){

  background(255);

  //チョキ
    if(keyPressed){
     if(key == 'c'){
       c = true;
     }
  }
  else{
    c=false;
  }
  if(keyPressed){   
     if(key == 'h'){
       h = true;
     }
  }
  else{
    h=false;
  }
     if((c==true)&&(h==true)){
     if((radians(angleF31)>=0)&&(radians(angleF31)<PI/2)){
     angleF31 = angleF31 + dif;
     angleF32 = angleF32 + dif;
     angleF33 = angleF33 + dif;
     angleF41 = angleF41 + dif;
     angleF42 = angleF42 + dif;
     angleF43 = angleF43 + dif;
     angleT1 = angleT1 + dif;
     angleT2 = angleT2 + dif;
     angleAX = angleAX + dif/3;
     angle2AX = angle2AX - dif/3;
     
     }
     }

  //グー
    if(keyPressed){
     if(key == 'g'){
       g = true;
     }
  }
  else{
    g=false;
  }
  if(keyPressed){   
     if(key == 'u'){
       u = true;
     }
  }
  else{
    u=false;
  }
     if((g==true)&&(u==true)){
     if((radians(angleF31)>=0)&&(radians(angleF31)<PI/2)){

      angleF11 = angleF11 + dif;
     angleF12 = angleF12 + dif;
     angleF13 = angleF13 + dif;
     angleF21 = angleF21 + dif;
     angleF22 = angleF22 + dif;
     angleF23 = angleF23 + dif;
     angleF31 = angleF31 + dif;
     angleF32 = angleF32 + dif;
     angleF33 = angleF33 + dif;
     angleF41 = angleF41 + dif;
     angleF42 = angleF42 + dif;
     angleF43 = angleF43 + dif;
     angleT1 = angleT1 + dif;
     angleT2 = angleT2 + dif;
     angleF231 = angleF231 + dif;
     angleF232 = angleF232 + dif;
     angleF233 = angleF233 + dif;
     angleF241 = angleF241 + dif;
     angleF242 = angleF242 + dif;
     angleF243 = angleF243 + dif;
     angleT21 = angleT21 + dif;
     angleT22 = angleT22 + dif;
     angleAX = angleAX + dif/3;
     angle2AX = angle2AX - dif/3;
     }
     }
     
 //パー
  if(keyPressed){
     if(key == 'p'){
       p = true;
     }
  }
  else{
    p=false;
  }
  if(keyPressed){   
     if(key == 'a'){
       a = true;
     }
  }
  else{
    a=false;
  }
     if((p==true)&&(a==true)){
     if((radians(angleF231)>=0)&&(radians(angleF231)<PI/2)){ 
     angleF211 = angleF211 + dif;
     angleF212 = angleF212 + dif;
     angleF213 = angleF213 + dif;
     angleF221 = angleF221 + dif;
     angleF222 = angleF222 + dif;
     angleF223 = angleF223 + dif;
     angleF231 = angleF231 + dif;
     angleF232 = angleF232 + dif;
     angleF233 = angleF233 + dif;
     angleF241 = angleF241 + dif;
     angleF242 = angleF242 + dif;
     angleF243 = angleF243 + dif;
     angleT21 = angleT21 + dif;
     angleT22 = angleT22 + dif;
     angleAX = angleAX + dif/3;
     angle2AX = angle2AX - dif/3;
     }
     }
    
  //リセットボタン
  if(keyPressed){
     if(key == 'r'){
     angleF11 = 0;
     angleF12 = 0;
     angleF13 = 0;
     angleF21 = 0;
     angleF22 = 0;
     angleF23 = 0;
     angleF31 = 0;
     angleF32 = 0;
     angleF33 = 0;
     angleF41 = 0;
     angleF42 = 0;
     angleF43 = 0;
     angleT1 = 0;
     angleT2 = 0;  
     angleAX = 0;
     angleAY = 0;
     angleAZ = 0;
     angleHX = 0;
     angleHY = 0;
     angleHZ = 0;
     angleF211 = 0;
     angleF212 = 0;
     angleF213 = 0;
     angleF221 = 0;
     angleF222 = 0;
     angleF223 = 0;
     angleF231 = 0;
     angleF232 = 0;
     angleF233 = 0;
     angleF241 = 0;
     angleF242 = 0;
     angleF243 = 0;
     angleT21 = 0;
     angleT22 = 0;  
     angle2AX = 0;
     angle2AY = 0;
     angle2AZ = 0;
     angle2HX = 0;
     angle2HY = 0;
     angle2HZ = 0;
     }
  }
  
 
pushMatrix();
  //肘1
  rotateY(radians(angleAY));
  rotateX(radians(-angleAX));

  //腕1
  rotateZ(radians(angleAZ));
  translate(0,-60,arm2L/2);
  fill(255,20,255);
  box(arm1W,arm1W,arm1L);

  //手首1
  rotateZ(radians(angleHZ));
  translate(0,0,arm1L/2);
  rotateY(radians(angleHY));
  rotateX(radians(-angleHX));
  pushMatrix();

  //掌1
  translate(0,0,hand1L/2);
  fill(255,20,255);
  box(hand1W/4,hand1W,hand1L);

  //人差し指1
  popMatrix();
  pushMatrix();
  translate(0,-hand1W/2+finger1W/2,hand1L);
  rotateY(radians(angleF11));
  translate(0,0,finger11/6);
  fill(255,230,255);
  box(finger1W,finger1W,finger11/3);
  translate(0,0,finger11/6);
  rotateY(radians(angleF12));
  translate(0,0,finger11/6);
  fill(255,128,255);
  box(finger1W,finger1W,finger11/3);
  translate(0,0,finger11/6);
  rotateY(radians(angleF13));
  translate(0,0,finger11/6);
  fill(255,20,255);
  box(finger1W,finger1W,finger11/3);

  //中指1
  popMatrix();
  pushMatrix();
  translate(0,-finger1W,hand1L);
  rotateY(radians(angleF21));
  translate(0,0,finger12/6);
  fill(255,230,255);
  box(finger1W,finger1W,finger12/3);
  translate(0,0,finger12/6);
  rotateY(radians(angleF22));
  translate(0,0,finger12/6);
  fill(255,128,255);
  box(finger1W,finger1W,finger12/3);
  translate(0,0,finger12/6);
  rotateY(radians(angleF23));
  translate(0,0,finger12/6);
  fill(255,20,255);
  box(finger1W,finger1W,finger12/3);

  //薬指1
  popMatrix();
  pushMatrix();
  translate(0,finger1W,hand1L);
  rotateY(radians(angleF31));
  translate(0,0,finger13/6);
  fill(255,230,255);
  box(finger1W,finger1W,finger13/3);
  translate(0,0,finger13/6);
  rotateY(radians(angleF32));
  translate(0,0,finger13/6);
  fill(255,128,255);
  box(finger1W,finger1W,finger13/3);
  translate(0,0,finger13/6);
  rotateY(radians(angleF33));
  translate(0,0,finger13/6);
  fill(255,20,255);
  box(finger1W,finger1W,finger13/3);

  //小指1
  popMatrix();
  pushMatrix();
  translate(0,hand1W/2-finger1W/2,hand1L);
  rotateY(radians(angleF41));
  translate(0,0,finger14/6);
  fill(255,230,255);
  box(finger1W,finger1W,finger14/3);
  translate(0,0,finger14/6);
  rotateY(radians(angleF42));
  translate(0,0,finger14/6);
  fill(255,128,255);
  box(finger1W,finger1W,finger14/3);
  translate(0,0,finger14/6);
  rotateY(radians(angleF43));
  translate(0,0,finger14/6);
  fill(255,20,255);
  box(finger1W,finger1W,finger14/3);

  //親指1
  popMatrix();
  translate(0,-hand1W/2,finger1W/2);
  rotateX(radians(90));
  rotateY(radians(angleT1));
  translate(0,0,finger1T/4);
  fill(255,230,255);
  box(finger1W,finger1W,finger1T/2);
  translate(0,0,finger1T/4);
  rotateY(radians(angleT2));
  translate(0,0,finger1T/4);
  fill(255,128,255);
  box(finger1W,finger1W,finger1T/2);
  
  
 popMatrix();
  //肘2
  rotateY(radians(angle2AY));
  rotateX(radians(-angle2AX));

  //腕2
  rotateZ(radians(angle2AX));
  translate(0,60,arm2L/2);
  fill(20,20,255);
  box(arm2W,arm2W,arm2L);

  //手首2
  rotateZ(radians(angle2HY));
  translate(0,0,arm2L/2);
  rotateY(radians(angle2HY));
  rotateX(radians(-angle2HX));
  pushMatrix();

  //掌2
  translate(0,0,hand2L/2);
  fill(20,20,255);
  box(hand2W/4,hand2W,hand2L);

  //人差し指2
  popMatrix();
  pushMatrix();
  translate(0,-hand2W/2+finger2W/2,hand2L);
  rotateY(radians(angleF211));
  translate(0,0,finger21/6);
  fill(20,255,255);
  box(finger2W,finger2W,finger21/3);
  translate(0,0,finger21/6);
  rotateY(radians(angleF212));
  translate(0,0,finger21/6);
  fill(20,138,255);
  box(finger2W,finger2W,finger21/3);
  translate(0,0,finger21/6);
  rotateY(radians(angleF213));
  translate(0,0,finger21/6);
  fill(0,0,255);
  box(finger2W,finger2W,finger21/3);

  //中指2
  popMatrix();
  pushMatrix();
  translate(0,-finger2W,hand2L);
  rotateY(radians(angleF221));
  translate(0,0,finger22/6);
  fill(20,255,255);
  box(finger2W,finger2W,finger22/3);
  translate(0,0,finger22/6);
  rotateY(radians(angleF222));
  translate(0,0,finger22/6);
  fill(20,138,255);
  box(finger2W,finger2W,finger22/3);
  translate(0,0,finger22/6);
  rotateY(radians(angleF223));
  translate(0,0,finger22/6);
  fill(0,0,255);
  box(finger2W,finger2W,finger22/3);

  //薬指2
  popMatrix();
  pushMatrix();
  translate(0,finger2W,hand2L);
  rotateY(radians(angleF231));
  translate(0,0,finger23/6);
  fill(20,255,255);
  box(finger2W,finger2W,finger23/3);
  translate(0,0,finger23/6);
  rotateY(radians(angleF232));
  translate(0,0,finger23/6);
  fill(20,138,255);
  box(finger2W,finger2W,finger23/3);
  translate(0,0,finger23/6);
  rotateY(radians(angleF233));
  translate(0,0,finger23/6);
  fill(0,0,255);
  box(finger2W,finger2W,finger23/3);

  //小指2
  popMatrix();
  pushMatrix();
  translate(0,hand2W/2-finger2W/2,hand2L);
  rotateY(radians(angleF241));
  translate(0,0,finger24/6);
  fill(20,255,255);
  box(finger2W,finger2W,finger24/3);
  translate(0,0,finger24/6);
  rotateY(radians(angleF242));
  translate(0,0,finger24/6);
  fill(20,138,255);
  box(finger2W,finger2W,finger24/3);
  translate(0,0,finger24/6);
  rotateY(radians(angleF243));
  translate(0,0,finger24/6);
  fill(0,0,255);
  box(finger2W,finger2W,finger24/3);

  //親指2
  popMatrix();
  translate(0,-hand2W/2,finger2W/2);
  rotateX(radians(90));
  rotateY(radians(angleT21));
  translate(0,0,finger2T/4);
  fill(20,255,255);
  box(finger2W,finger2W,finger2T/2);
  translate(0,0,finger2T/4);
  rotateY(radians(angleT22));
  translate(0,0,finger2T/4);
  fill(20,138,255);
  box(finger2W,finger2W,finger2T/2);

}
