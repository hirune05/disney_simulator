void eria() { //<>//
  imageMode(CORNER);
  image(eria[gseq], 0, 0);
}
void plaza() {
  hazi_l = 158;
  hazi_r = 409;
  hazi_u = 163;
  hazi_d = 369;
  imageMode(CENTER);
  image(ya[0], 279, 219);
  yazi_q = 1;
  if (hazime == 0) {
    ya_x.append(279);
    ya_y.append(219);
  } else {
    ya_set(0, 279, 219);
  }
  if (go[0] == true) gseq = 1;
  fal();
  hazime = 1;
}
void gate() {
  hazi_u = 352;
  imageMode(CENTER);
  image(ya[7], 90, 439);
  image(ya[4], 469, 413);
  image(ya[1], 318, 681);
  yazi_q = 3;
  ya_set(0, 90, 439);
  ya_set(1, 469, 413);
  ya_set(2, 318, 681);

  if (go[0] == true) gseq = 2;
  else if (go[1] == true) gseq = 3;
  else if (go[2] == true) gseq = 0;
}
void soal() {
  hazi_l = 43;
  hazi_u = 75;
  imageMode(CENTER);
  image(wagon, 171, 115);
  image(ya[0], 301, 61);
  image(ya[6], 76, 542);
  yazi_q = 2;
  ya_set(0, 301, 61);
  ya_set(1, 76, 542);
  if (go[0] == true) gseq = 13;//今は適当
  else if (go[1] == true) gseq = 1;
  
  food("★ POP（カレー）", 7, 171, 115);
  disp("★ スチーマーライン", 1, 50, 219, 4, 7, 0, 8);
  disp("★ ソアリン", 10, 529, 174, 5, 5, 2, 30);
  rest("◉ カフェ・ポルトフィーノ", 220, 493, 6, 60, 5);
  rest("◉ ザンビーニ・ブラザーズ", 226, 272, 7, 60, 15);
  if(eve == true && eve_k == 1) nomal = false;
  if(food == true) food_choose();
}
void birie() {
  eve_k = 0;
  hazi_u = 200;
  hazi_d = 674;
  imageMode(CENTER);
  image(wagon, 115, 267);
  image(ya[1], 424, 582);
  image(ya[0], 189, 190);
  image(ya[3], 80, 404);
  image(ya[3], 80, 627);
  image(ya[2], 543, 446);

  yazi_q = 5;
  ya_set(0, 424, 582);
  ya_set(1, 189, 190);
  ya_set(2, 80, 404);
  ya_set(3, 80, 627);
  ya_set(4, 543, 446);
  if (go[0] == true) gseq = 5;
  else if (go[1] == true) gseq = 6;
  else if (go[2] == true){
    mus(0, 1);
    gseq = 7;
  }
  else if (go[3] == true) {
    mus(0, 1);
    gseq = 8;
  }
  else if (go[4] == true) gseq = 1;
  
  food("★ POP（キャラメル）", 1, 115, 267);
  if(food == true) food_choose();
}
void waterFront_ue() {
  hazi_u = 279;
  imageMode(CENTER);
  image(wagon, 345, 466);
  image(ya[0], 145, 319);
  image(ya[5], 100, 717);
  image(ya[2], 555, 604);
  image(ya[5], 470, 705);
  yazi_q = 4;
  ya_set(0, 145, 319);
  ya_set(1, 100, 717);
  ya_set(2, 555, 604);
  ya_set(3, 460, 705);
  if (go[0] == true) gseq = 9;
  else if (go[1] == true) gseq = 8;
  else if (go[2] == true) {
    mus(1, 0);
    gseq = 2;
  }
  else if (go[3] == true) gseq = 8;
  food("★ POP（ソルト）", 2, 345, 466);
   disp("★ タートル・トーク", 9, 35, 642, 4, 30, 0, 31);
   rest("◉ レストラン桜", 477, 535, 5, 60, 5);
   rest("◉ S.S.コロンビア", 54, 479, 6, 60, 5);
   if(food == true) food_choose();
   if(eve == true && eve_k == 9) nomal = false;
}
void waterFront_sita() {
  hazi_d = 327;
  imageMode(CENTER);
  image(ya[0], 215, 84);
  image(ya[0], 542, 84);
  image(ya[2], 570, 301);
  yazi_q = 3;
  ya_set(0, 215, 84);
  ya_set(1, 542, 84);
  ya_set(2, 570, 301);
  if (go[0] == true) gseq = 7;
  else if (go[1] == true) gseq = 7;
  else if (go[2] == true) {
    mus(1, 0);
    gseq = 2;
  }
  disp("★ レールウェイ", 3, 441, 216, 1, 3, 0, 10);
  disp("★ タワー・オブ・テラー", 6, 119, 184, 2, 2, 1, 7);
  disp("★ トイストーリーマニア", 7, 184, 320, 3, 5, 1, 40);
  if(eve == true && (eve_k == 3 || eve_k == 7)) nomal = false;
  
}
void ren_hasi() {
  hazi_l = 316;
  hazi_r = 415;
  imageMode(CENTER);
  image(ya[0], 397, 73);
  image(ya[1], 346, 709);
  yazi_q = 2;
  ya_set(0, 397, 73);
  ya_set(1, 346, 709);
  if (go[0] == true) gseq = 12;
  else if (go[1] == true) gseq = 2;
}
void hune() {
  imageMode(CENTER);
  image(ya[0], 290, 48);
  yazi_q = 1;
  ya_set(0, 290, 48);
  if (go[0] == true) gseq = 2;
  disp("★ ヴェネチアンゴンドラ", 5, 452, 388, 1, 11, 0, 18);
  rest("◉ カナレット", 169, 192, 2, 60, 5);
}
void water_hasi() {
  hazi_l = 191;
  hazi_r = 308;
  imageMode(CENTER);
  image(ya[1], 275, 707);
  image(ya[0], 245, 51);
  yazi_q = 2;
  ya_set(0, 245, 51);
  ya_set(1, 260, 707);
  if (go[0] == true) gseq = 10;
  else if (go[1] == true) gseq = 7;
}
void bunki_1() {
  imageMode(CENTER);
  image(wagon, 400, 127);
  image(ya[0], 490, 40);
  image(ya[5], 464, 279);
  image(ya[1], 100, 464);
  yazi_q = 3;
  ya_set(0, 490, 50);
  ya_set(1, 464, 279);
  ya_set(2, 100, 464);
  if (go[0] == true) gseq = 14;
  else if (go[1] == true) gseq = 11;
  else if (go[2] == true) gseq = 9;
  
  food("★ POP（醤油バター）", 3, 400, 127);
  disp("★ スチーマーライン", 11, 270, 340, 4, 7, 0, 6);
  disp("★ シェリー・グリ", 12, 378, 270, 5, 20, 0, 5);
  if(eve_k == 12) cara_k = 1;
  if(food == true) food_choose();
  if(eve == true && (eve_k == 11 || eve_k == 12)) nomal = false;
}
void bunki_2() {
  hazi_u = 254;
  hazi_d = 500;
  imageMode(CENTER);
  image(ya[4], 493, 358);
  image(ya[2], 489, 490);
  image(ya[7], 55, 282);
  yazi_q = 3;
  ya_set(0, 493, 358);
  ya_set(1, 489, 490);
  ya_set(2, 55, 282);
  if (go[0] == true){
    mus(1, 0);
    gseq = 12;
  }
  else if (go[1] == true){
    mus(1, 0);
    gseq = 12;
  }
  else if (go[2] == true) gseq = 10;
}
void bunki_3() {
  hazi_d = 716;
  imageMode(CENTER);
  image(ya[1], 148, 278);
  image(ya[6], 60, 272);
  image(ya[0], 183, 52);
  image(ya[2], 505, 187);
  image(ya[2], 505, 534);
  image(ya[3], 181, 688);

  yazi_q = 6;
  ya_set(0, 148, 278);
  ya_set(1, 60, 272);
  ya_set(2, 183, 52);
  ya_set(3, 505, 187);
  ya_set(4, 505, 534);
  ya_set(5, 181, 688);
  if (go[0] == true) gseq = 6;
  else if (go[1] == true) {
    mus(0, 1);
    gseq = 11;
  }
  else if (go[2] == true) gseq = 26;
  else if (go[3] == true) gseq = 13;
  else if (go[4] == true) gseq = 13;
  else if (go[5] == true){
    mus(0, 1);
    gseq = 11;
  }
  
  rest("◉ マゼランズ", 500, 344, 1, 60, 5);
}
void bunki_4() {
  hazi_u = 331;
  hazi_d = 518;
  imageMode(CENTER);
  image(ya[3], 55, 396);
  image(ya[0], 186, 342);
  image(ya[1], 509, 498);
  yazi_q = 3;
  ya_set(0, 55, 396);
  ya_set(1, 186, 342);
  ya_set(2, 509, 498);
  if (go[0] == true) gseq = 12;
  else if (go[1] == true){
    mus(0, 6);
    gseq = 25;
  }
  else if (go[2] == true) gseq = 3;
}
void kepc() {
  hazi_l = 225;
  hazi_r = 427;
  imageMode(CENTER);
  image(churo, 410, 386);
  image(ya[3], 235, 653);
  image(ya[0], 237, 68);
  yazi_q = 2;
  ya_set(0, 237, 653);
  ya_set(1, 237, 68);
  if (go[0] == true) gseq = 10;
  else if (go[1] == true){
    mus(1, 2);
    gseq = 15;
   }
  
  food("★ チュロ（シナモン)", 9, 410, 356);
  disp("★ ダッフィー・ショー", 13, 390, 557, 4, 10, 0, 20);
  rest("◉ ホライズンベイ", 421, 277, 5, 60, 5);
  if(food == true) food_choose();
}
void boatdis() {
  hazi_r = 580;
  hazi_l = 41;
  imageMode(CENTER);
  image(wagon, 350, 648);
  image(ya[3], 64, 725);
  image(ya[0], 328, 48);
  yazi_q = 2;
  ya_set(0, 64, 725);
  ya_set(1, 328, 48);
  if (go[0] == true){
    mus(2, 1);
    gseq = 14;
  }
  else if (go[1] == true){
    mus(2, 3);
    gseq = 16;
  }
  
  food("★ POP（抹茶）", 8, 350, 648); 
  disp("★ アクアトピア", 14, 166, 390, 4, 3, 0, 18);
  disp("★ ニモ・シーライダー", 15, 280, 162, 5, 5, 1, 6);
  if(food == true) food_choose();
}
void bunki_5() {
  hazi_u = 154;
  hazi_d = 392;
  imageMode(CENTER);
  image(wagon, 427, 180);
  image(ya[3], 35, 277);
  image(ya[1], 90, 401);
  image(ya[0], 276, 149);
  image(ya[2], 554, 199);
  yazi_q = 4;
  ya_set(0, 35, 277);
  ya_set(1, 90, 401);
  ya_set(2, 276, 149);
  ya_set(3, 554, 199);
  if (go[0] == true){
    mus(3, 2);
    gseq = 15;
  }
  else if (go[1] == true){
    mus(3, 0);
    gseq = 26;
  }
  else if (go[2] == true) gseq = 18;
  else if (go[3] == true) gseq = 17;
  
  food("★ POP（チョコレート）", 4, 427, 180);
  disp("★ ソング・オブ・ミラージュ(ショー)", 16, 321, 349, 4, 0, 0, 30);
  if(food == true) food_choose();
}
void bunki_6() {
  hazi_u = 263;
  hazi_d = 450;
  imageMode(CENTER);
  image(ya[3], 30, 417);
  image(ya[0], 74, 329);
  image(ya[0], 516, 270);
  image(ya[5], 551, 428);
  yazi_q = 4;
  ya_set(0, 30, 417);
  ya_set(1, 74, 329);
  ya_set(2, 516, 270);
  ya_set(3, 551, 428);
  if (go[0] == true) gseq = 16;
  else if (go[1] == true) gseq = 19;
  else if (go[2] == true) gseq = 19;
  else if (go[3] == true){
    mus(3, 5);
    gseq = 22;
  }
  
  disp("★ スチーマーライン", 2, 234, 312, 1, 7, 0, 6);
  disp("★ ダッフィー・グリ", 17, 166, 489, 2, 25, 0, 5);
  if(eve_k == 17) cara_k = 0;
  if(eve == true && (eve_k == 2 || eve_k == 17)) nomal = false;
}
void mikiminigr() {
  hazi_u = 169;
  hazi_d = 698;
  imageMode(CENTER);
  image(ya[1], 301, 707);
  image(ya[2], 556, 505);
  yazi_q = 2;
  ya_set(0, 301, 707);
  ya_set(1, 556, 505);
  if (go[0] == true) gseq = 16;
  else if (go[1] == true) gseq = 19;
  disp("★ ミニー・グリ", 18, 212, 172, 1, 25, 0, 5);
  disp("★ ミッキー・グリ", 19, 396, 158, 2, 25, 0, 5);
  if(eve_k == 18) cara_k = 3;
  else if(eve_k == 19) cara_k = 2;
  if(eve == true && (eve_k == 18 || eve_k == 19)) nomal = false;

}
void indy() {
  hazi_u = 328;
  hazi_d = 517;
  imageMode(CENTER);
  image(ya[3], 39, 485);
  image(ya[1], 242, 517);
  image(ya[1], 503, 514);
  image(ya[2], 570, 393);
  yazi_q = 4;
  ya_set(0, 39, 485);
  ya_set(1, 242, 517);
  ya_set(2, 503, 514);
  ya_set(3, 577, 393);
  if (go[0] == true) gseq = 18;
  else if (go[1] == true) gseq = 17;
  else if (go[2] == true) gseq = 17;
  else if (go[3] == true) {
    mus(3, 4);
    gseq = 20;
  }
  disp("★ インディ・ジョーンズ", 20, 136, 358, 1, 3, 1, 7);
}
void risedan() {
  hazi_u = 356;
  imageMode(CENTER);
  image(churo, 481, 696);
  image(ya[6], 78, 517);
  image(ya[6], 326, 712);
  yazi_q = 2;
  ya_set(0, 78, 517);
  ya_set(1, 326, 712);
  if (go[0] == true){
    mus(4, 3);
    gseq = 19;
  }
  else if (go[1] == true) gseq = 21;
  
  food("★ チュロ(ショコラ)", 11, 481, 696);
  disp("★ レイジングスピリッツ", 21, 170, 337, 4, 2, 1, 0);
  disp("★ フライイングカーペット", 22, 501, 335, 5, 2, 0, 13);
  disp("★ シンドバッド", 32, 547, 524, 6, 10, 0, 6);
  if(food == true) food_choose();
}
void jinmer() {
  hazi_l = 62;
  hazi_r = 467;
  imageMode(CENTER);
  image(ya[0], 253, 42);
  image(ya[3], 46, 570);
  image(ya[1], 116, 640);
  yazi_q = 3;
  ya_set(0, 253, 42);
  ya_set(1, 46, 570);
  ya_set(2, 116, 640);
  if (go[0] == true) gseq = 20;
  else if (go[1] == true){
    mus(4, 5);
    gseq = 22;
  }
  else if (go[2] == true) gseq = 24;
  disp("★ マジックシアター", 23, 422, 506, 1, 23, 0, 37);
  disp("★ キャラバンカーセル", 24, 317, 608, 2, 3, 0, 7);
  rest("◉ カスバ・フードコート", 335, 388, 3, 60, 10);
}
void mer_en() {
  hazi_u = 170;
  hazi_d = 675;
  hazi_l = 94;
  hazi_r = 554;
  imageMode(CENTER);
  image(wagon, 389, 305);
  image(ya[2], 560, 506);
  image(ya[0], 538, 157);
  image(ya[1], 203, 689);
  image(ya[7], 113, 512);
  yazi_q = 4;
  ya_set(0, 560, 506);
  ya_set(1, 538, 157);
  ya_set(2, 203, 689);
  ya_set(3, 113, 512);
  if (go[0] == true){
    mus(5, 4);
    gseq = 21;
  }
  else if (go[1] == true){
    mus(5, 3);
    gseq = 17;
  }
  else if (go[2] == true) {
    mus(5, 4);
    gseq = 24;
  }
  else if (go[3] == true) gseq = 23;
  
  food("★ POP（いちご）", 5, 389, 305);
  disp("★ フランダーコースター", 24, 466, 248, 4, 1, 0, 22);
  disp("★ スカットルスクーター", 25, 366, 562, 5, 2, 0, 15);
  if(food == true) food_choose();
}
void mer() {
  hazi_u = 209;
  imageMode(CENTER);
  image(ya[1], 453, 703);
  yazi_q = 1;
  ya_set(0, 453, 703);
  if (go[0] == true) gseq = 22;
  disp("★ ワールプール", 26, 338, 527, 1, 2, 0, 19);
  disp("★ ジェリーフィッシュ", 27, 164, 554, 2, 1, 0, 13);
  disp("★ マーメイドシアター", 28, 87, 416, 3, 14, 0, 35);
  disp("★ バルーンレース", 29, 183, 361, 4, 2, 0, 23);
  rest("◉ セバスチャン", 361, 284, 5, 60, 5);
}
void bunki_7() {
  hazi_u = 68;
  hazi_d = 301;
  imageMode(CENTER);
  image(wagon, 132, 137);
  image(ya[0], 201, 55);
  image(ya[3], 47, 237);
  image(ya[4], 540, 259);
  yazi_q = 3;
  ya_set(0, 201, 55);
  ya_set(1, 47, 237);
  ya_set(2, 540, 259);
  if (go[0] == true){
    mus(4, 5);
    gseq = 22;
  }
  else if (go[1] == true){
    mus(4, 6);
    gseq = 25;
  }
  else if (go[2] == true) gseq = 21;
  
  food("★ POP（コンポタ）", 6, 132, 137);
  if(food == true) food_choose();
}

void bunki_8(){
  imageMode(CENTER);
  image(churo, 343, 231);
  image(ya[5], 442, 480);
  image(ya[1], 243, 682);
  image(ya[0], 226, 40);
  yazi_q = 3;
  ya_set(0, 442, 480);
  ya_set(1, 243, 682);
  ya_set(2, 226, 40);
  if (go[0] == true){
    mus(0, 6);
    gseq = 25;
  }
  else if (go[1] == true) gseq = 12;
  else if (go[2] == true){
    mus(0, 3);
    gseq = 16;
  }
  textAlign(CORNER, CENTER);
  textSize(40);
  if(dist(hito_x, hito_y, 343, 231)< 80) {
    food_kind = 10;
    fill(255, 255, 0);
  }
  else {
    fill(255);
    food_kind = 0;
  }
  text("★ チュロ(オレンジ)", 650, 366);
  if(food == true) food_choose();
  disp("★ レールウェイ", 4, 116, 361, 4, 3, 0, 10);
  if(eve == true && eve_k == 4) nomal = false;
  if(food == true) food_choose();
}
void prome() {
  hazi_u = 234;
  hazi_d = 692;
  imageMode(CENTER);
  image(churo, 358, 270);
  image(ya[4], 560, 274);
  image(ya[1], 368, 703);
  image(ya[7], 169, 246);
  yazi_q = 3;
  ya_set(0, 560, 274);
  ya_set(1, 368, 703);
  ya_set(2, 169, 246);
  if (go[0] == true){
    mus(6, 4);
    gseq = 24;
  }
  else if (go[1] == true){
    mus(6, 0);
    gseq = 13;
  }
  else if (go[2] == true) {
    mus(6, 0);
    gseq = 26;
  }
  food("★ チュロ(デミぽて)", 12, 358, 270);
  disp("★ 海底2万マイル", 30, 448, 568, 4, 5, 0, 29);
  disp("★ センター", 31, 67, 361, 5, 3, 1, 13);
  rest("◉ ヴォルケニアンレストラン", 534, 467, 6, 60, 5);
  rest("◉ 餃子ドッグ", 323, 427, 7, 30, 20);
  if(food == true) food_choose();
}
