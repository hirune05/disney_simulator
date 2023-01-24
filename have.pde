void have() {
  textSize(40);
  textAlign(CORNER, CENTER);
  if (have_k == 0) {
    for ( int i = 0; i < data_have.size(); i++ ) {
      if (choose == i) fill(255, 255, 0);
      else fill(255);
      text(data_have.get(i), 100, i * 60 + 160);
      //textファイルの行数ごとに画面に表示
    }
  } else if (have_k == 1) {
    for ( int i = 0; i < pass_num; i++) {
      if (choose == i) fill(255, 255, 0);
      else fill(255);
      image(fast, 100, i * 80 + 160);
      text("ファストパス", 150, i * 80 + 160);
    }
  }
}

void haveWrite() {
  background(#2344A5);
  have();
  fill(255);
  noStroke();
  rectMode(CENTER);
  rect(900, 58, 180, 80, 30);
  fill(0);
  rect(770, 505, 200, 20);
  fill(#8CF505);
  rectMode(CORNER);
  rect(670, 495, HP/5, 20);
  fill(255);
  textAlign(CORNER, CENTER);
  textSize(60);
  text("もちもの", 100, 70);
  textSize(30);
  text("space:つかう", 860, 366);
  fill(#DFC7FA);
  if(have_k == 0) textSize(40);
  else textSize(20);
  text("食べ物", 380, 70);
  if(have_k == 1) textSize(40);
  else textSize(20);
  text("チケット", 550, 70);
  fill(0);
  textSize(30);
  text("HP: " + HP, 890, 500);
  textSize(40);
  textAlign(CENTER, CENTER);
  text("もどる", 900, 55);
  image(hito[3], 762, 310, 300, 300);
}

void food_choose() {
  textMode(CORNER);
  if (choose == 1) fill(#E44CFC);
  else  fill(255);
  text("・買う", 650, 421);
  if (choose == 2) fill(#E44CFC);
  else  fill(255);
  text("・買わない", 650, 466);
}

void mission(){
  background(#2344A5);
  textSize(40);
  textAlign(CORNER, CENTER);
  fill(255);
  text("・　　　ポップコーン全制覇", 100, 160);
  text("・　　　チュロス全制覇", 100, 275);
  text("・　　　グリーティング全制覇", 100, 390);
  text("・　　　トイマニで3位以内に入る", 100, 505);
  text("・　　　タートル・トークで350点以上とる", 100, 620);
  noStroke();
  rectMode(CENTER);
  rect(900, 58, 180, 80, 30);
  fill(#F7CCFC);
  textSize(60);
  text("ミッション", 100, 70);
  fill(0);
  textSize(40);
  textAlign(CENTER, CENTER);
  text("もどる", 900, 55);
  rectMode(CORNER);
  rect(150, 200, 400, 30);//50
  rect(150, 315, 400, 30);//100
  rect(150, 430, 400, 30);
  text(pop_count + " / 8", 625, 210);
  text(churo_count + " / 4", 625, 325);
  text(gre_count + " / 4", 625, 440);
  fill(#8CF505); 
  rect(150, 200, 50 * pop_count, 30);
  rect(150, 315, 100 * churo_count, 30);
  rect(150, 430, 100 * gre_count, 30);
  imageMode(CENTER);
  if (pop_count == 8) image(crown, 100, 160);
  if (churo_count == 4) image(crown, 100, 275);
  if (gre_count == 4) image(crown, 100, 390);
  if (toy_rank == true) image(crown, 100, 505);
  if (tur_mis == true) image(crown, 100, 620);
}
