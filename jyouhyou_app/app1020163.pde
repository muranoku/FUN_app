
int by=2;//1段目のボタンのy座標

/*
1段目のボタンのx座標
*/

int bx=2; //white button
int bx2=34;//black button
int bx3=66;//red button
int bx4=98;//lightgreen button
int bx5=130;//blue button
int bx6=162;//purple button
int bx7=194;//orange button
int bx8=300;//太ペン
int bx9=332;//中ペン
int bx10=364;//細ペン
int kx=268;//全消し
int ex=236;//消しゴム


int bwh=30;//ボタンの幅と高さ

/*
2段目のボタンのx座標
ペンタイプ1～3
*/

int bx11=34;
int bx12=66;
int bx13=2;

int by2=34;//2段目のボタンのy座標
 
int penType;//ペンの種類
 
color c;
int b=1;

int count = 1;
 
void setup() {
  
  size(800, 800);
  background(240);
  fill(0,255,255);
  rect(0,0,800,80);
  fill(0);
  textSize(60);
  text("Let's sketch",400,60);
  line(0,80,800,80);
  line(400,80,400,800);
  line(0,400,800,400);
  
 }
 
void draw() {
  stroke(c);
  strokeWeight(b);
  if (mousePressed) {
    if (penType==1) {//ペンタイプ1
      if(mouseY > 80){//80以下は描画しない
      line(mouseX, mouseY, pmouseX, pmouseY);
      }
    }
 
    if (penType==2) {//ペンタイプ2
     
     for (int i=0;i<10;i++){
        if(mouseY > 80){//80以下は描画しない
        fill(c);
        ellipse(mouseX+random(-10, 10), mouseY+random(-10, 10), random(2, 10), random(2, 10));
      }
      }
    }
   
    
    if (penType==3) {//ペンタイプ3
      stroke(c);
      for (int i=0;i<10;i++){
        if(mouseY > 80){//80以下は描画しない
        fill(c);
        line(mouseX, mouseY, mouseX+random(2, 30), mouseY+random(2, 30));
        }
      }
    }
  }
    paint();
}
 
 
 
void paint() {
  stroke(0);
  strokeWeight(1);
  
  fill(255);
  rect(bx, by, bwh, bwh);//white button

  fill(0);
  rect(bx2, by, bwh, bwh);//black button
 
  fill(255, 0, 0);
  rect(bx3, by, bwh, bwh);//red button
 
  fill(0, 255, 0);
  rect(bx4, by, bwh, bwh);//lightgreen button
 
  fill(0, 0, 255);
  rect(bx5, by, bwh, bwh);//blue button
 
  fill(100, 0, 100);
  rect(bx6, by, bwh, bwh);//purple button
 
  fill(255, 99, 71);
  rect(bx7, by, bwh, bwh);//orange button
 
  fill(255);
  rect(bx11, by2, bwh, bwh);
  line(bx11+2, by2+15, bx11+28, by2+15);//ペンタイプ1
 
 
  rect(bx12, by2, bwh, bwh);
  fill(0, 150);
  noStroke();
  for (int j=0; j<50;j++) {
    ellipse(bx12+15+random(-10, 10), by2+15+random(-10, 10), random(4), random(4));
  }//ペンタイプ2
 
  stroke(0);
  fill(255);
  rect(bx13, by2, bwh, bwh);
  line(bx13+1,by2,30,62);//ペンタイプ3
  
  stroke(0);
  strokeWeight(1);
  
  fill(255);  
  rect(bx8, by, bwh, bwh);
  fill(0);
  ellipse(bx8+15, by+15, 22, 22);//太ペン
 
  fill(255);
  rect(bx9, by, bwh, bwh);
  fill(0);
  ellipse(bx9+15, by+15, 15, 15);//中ペン
 
  fill(255);
  rect(bx10, by, bwh, bwh);
  fill(0);
  ellipse(bx10+15, by+15, 5, 5);//細ペン
 
  fill(255);
  rect(kx, by, bwh, bwh);
  fill(0);
  line(kx, by, kx+30, by+30);
  line(kx+30, by, kx, by+30);//全消し
  
  fill(255);
  rect(ex, by, bwh, bwh);
  fill(255);
  ellipse(ex+15, by+12, 15, 15);
  fill(0);
  rect(ex+7, by+12, 15, 15);//消しゴム
 
 /*
 クリック判定
 */
 
 
 if (mousePressed) {
    if (mouseX>bx && mouseX<bx+bwh&& mouseY>by&& mouseY<by+bwh ) {
      c=255;//white
    }
    if (mouseX>bx2 && mouseX<bx2+bwh&& mouseY>by&& mouseY<by+bwh ) {
      c=0;//black
    }
 
    if (mouseX>bx3 && mouseX<bx3+bwh&& mouseY>by&& mouseY<by+bwh ) {
      c=color(255, 0, 0);//red
    }
    if (mouseX>bx8 && mouseX<bx8+bwh&& mouseY>by&& mouseY<by+bwh ) {
      b=10;//太ペン
    }
    if (mouseX>bx9 && mouseX<bx9+bwh&& mouseY>by&& mouseY<by+bwh ) {
      b=5;//中ペン
    }
    if (mouseX>bx10 && mouseX<bx10+bwh&& mouseY>by&& mouseY<by+bwh ) {
      b=1;//細ペン
    }
    if (mouseX>bx4 && mouseX<bx4+bwh&& mouseY>by&& mouseY<by+bwh ) {
      c=color(0, 255, 0);//lightgreen
    }
    if (mouseX>bx5 && mouseX<bx5+bwh&& mouseY>by&& mouseY<by+bwh ) {
      c=color(0, 0, 255);//blue
    }
    if (mouseX>bx6 && mouseX<bx6+bwh&& mouseY>by&& mouseY<by+bwh ) {
      c=color(100, 0, 100);//purple
    }
    if (mouseX>bx7 && mouseX<bx7+bwh&& mouseY>by&& mouseY<by+bwh ) {
      c=color(255, 99, 71);//orange
    }
    if (mouseX>kx && mouseX<kx+bwh&& mouseY>by&& mouseY<by+bwh ) {
      
      background(240);
      fill(0,255,255);
      rect(0,0,800,80);
      fill(0);
      line(0,80,800,80);
      line(400,80,400,800);
      line(0,400,800,400);
      text("Let's sketch",400,60);
       }
    if (mouseX>ex && mouseX<ex+bwh&& mouseY>by&& mouseY<by+bwh ) {
      c=color(240);//消しゴム
    }
    /*
    57行目へ
    */
    if (mouseX>bx11 && mouseX<bx11+bwh&& mouseY>by2&& mouseY<by2+bwh ) {
      penType=1;
    }
    if (mouseX>bx12 && mouseX<bx12+bwh&& mouseY>by2&& mouseY<by2+bwh ) {
      penType=2;
    }
    if (mouseX>bx13 && mouseX<bx13+bwh&& mouseY>by2&& mouseY<by2+bwh ) {
      penType=3;
    
  }
 
  }
}

/*
画像保存
*/

void keyPressed() {
  // Sのキー入力時に保存
  if(key == 's' || key == 'S') {
    String path  = System.getProperty("user.home") + "/Desktop/scshot" + count + ".jpg"; // デスクトップのパスを取得
    save(path);//保存
    count++;// 番号を足してく
  }
}
