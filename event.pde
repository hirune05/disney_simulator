void food(String a, int k, int x, int y) {
  textAlign(CORNER, CENTER);
  textSize(35);
  if (dist(hito_x, hito_y, x, y)< 80) {
    food_kind = k;
    fill(255, 255, 0);
  }
  else if (dist(hito_x, hito_y, x, y)< 100) {
    fill(255);
    eve_k = 0;
  }
  text(a, 650, 376);
}

void rest(String a, int x, int y, int num, int m, int w_m){
  textAlign(CENTER, CENTER);
  textSize(80);
  fill(#FFC421);
  text("★", x, y);
  fill(0);
  textSize(25);
  text(w_m + m + "分", x + 10, y+15);
  if (dist(hito_x, hito_y, x, y)< 80) {
    eve_h = 0;
    if(t_h >= 11 && t_h <= 13) w_m *= 2;
    eve_m = m + w_m;
    eve_k = 40;
    fill(255, 255, 0);
  } else if (dist(hito_x, hito_y, x, y)< 100) {
    fill(255);
    eve_k = 0;
  } else fill(255);
  textAlign(CORNER, CENTER);
  textSize(35);
  text(a, 650, 386 + (num - 1) * 40);
}

void disp(String a, int k, int x, int y, int num, int m, int w_h, int w_m) {
  if (pass == false) {
    if((parade_2[0] == false && t_h == 20)|| (parade_2[1] == false && t_h == 14)|| (parade_2[2] == false && t_h == 11)) fill(#6EE4F7);
    else fill(255, 255, 0);
  }
  else if(pass == true) fill(#FC4CE5);
  textAlign(CENTER, CENTER);
  textSize(80);
  text("★", x, y);
  fill(0);
  textSize(25);
  if (pass == false) {
    if((parade_2[0] == false && t_h == 20)|| (parade_2[1] == false && t_h == 14)|| (parade_2[2] == false && t_h == 11)) {
    w_m = (w_h*60 + w_m)/3;
    w_h = 0;
  }
  }
  else if(pass == true) {
    w_h = 0;
    w_m = 0;
  }
  text(w_h * 60 + w_m + m + "分", x + 10, y+15);
  if (dist(hito_x, hito_y, x, y)< 80) {
    eve_h = w_h;
    eve_m = m + w_m;
    eve_k = k;
    fill(255, 255, 0);
  } else if (dist(hito_x, hito_y, x, y)< 100) {
    fill(255);
    eve_k = 0;
  } else fill(255);
  textAlign(CORNER, CENTER);
  textSize(35);
  text(a, 650, 386 + (num - 1) * 40);
}

void steamer() {
  background(#F7FAB1);
  rectMode(CORNER);
  noStroke();
  fill(#0CCAF7);
  rect(0, 500, width, 280);
  imageMode(CENTER);
  image(hune, hune_oc*2.5, 480);
  if (hune_oc*2.5 > 1080) {
    switch(eve_k) {
      case(1):
      hito_set(234, 312);
      gseq = 17;
      mus(0, 3);
      break;
      case(2):
      hito_set(50, 219);
      gseq = 3;
      mus(3, 0);
      break;
    }
    nomal = true;
    eve = false;
    hune_oc = -20;
  }
  hune_oc++;
}

void rail() {
  background(#46BFFF);
  rectMode(CORNER);
  noStroke();
  fill(#2A9B5D);
  rect(0, 500, width, 280);
  fill(#AAB4B9);
  rect(0, 500, width, 50);
  rect(200, 500, 40, 280);
  rect(700, 500, 40, 280);
  imageMode(CENTER);
  image(rail, hune_oc*2.5, 460);
  if (hune_oc*2.5 > 1080) {
    switch(eve_k) {
      case(3):
      hito_set(116, 361);
      gseq = 26;
      mus(1, 0);
      break;
      case(4):
      hito_set(441, 216);
      gseq = 8;
      mus(0, 1);
      break;
    }
    nomal = true;
    eve = false;
    hune_oc = -20;
    densya.pause();
    densya.rewind();
  }
  hune_oc++;
}

void gre() {
  imageMode(CORNER);
  if (misGre[cara_k] == false) gre_count+= 1;
  misGre[cara_k] = true;
  if (gre_mcnt > 0) {
    textSize(200);
    textAlign(CENTER, CENTER);
    if (gre_mcnt < 60 * 3) {
      background(0);
      if (gre_mcnt < 60 *2) {
        background(0);
        image(cara[cara_k], 100, 150, 525, 380);
      }
    } else if (gre_mcnt < 60 * 6) {
      image(cara[cara_k], 0, 0);
      if (gre_mcnt < 60 * 4) {
        text("①", width/2, height/2);
        if ( gre_mcnt < 185) {
          if ( gre_mcnt > 180) {
            kasya.play();
          } else {
            kasya.rewind();
            pin.rewind();
          }
        } else pin.play();
      } else if (gre_mcnt < 60 * 5) {
        text("②", width/2, height/2);
        if (gre_mcnt  < 245) pin.rewind();
        else pin.play();
      } else if (gre_mcnt < 60 * 6) {
        text("③", width/2, height/2);
        if (gre_mcnt < 305) pin.rewind();
        else pin.play();
      }
    }
    gre_mcnt--;
  } else {
    switch(gseq){
      case 17:
      case 18:
      case 19:
      m_2(3);
      break;
      case 10:
      m_2(1);
      break;
    }
    nomal = true;
    eve = false;
    gre_mcnt = 360;
    pin.rewind();
  }
}

void gameStart() {
  background(0);
  textAlign(CORNER);
  textSize(80);
  fill(#FCFCA3);
  text("夢の国へようこそ!!", 145, 150);
  textSize(50);
  stroke(255);
  strokeWeight(5);
  for (int i = 0; i < 3; i++) {
    if (parade[i] == true) fill(#23E307);
    else noFill();
    rect(150, 300 + i * 136, 40, 40);
  }
  fill(255);
  text("ナイトショーをみる", 220, 336);
  text("パレードをみる", 220, 472);
  text("ビッグバンドビートをみる", 220, 608);
  textSize(35);
  text("(20:00~)", 505, 385);
  text("(14:00~)", 460, 521);
  text("(11:00~)", 640, 657);
  textSize(40);
  strokeWeight(5);
  rectMode(CORNER);
  rect(692, 220, 300, 180, 30);
  textSize(40);
  fill(#D072FA);
  text("基本操作", 756, 205);
  textSize(25);
  fill(0);
  text("ENTER  : 始める, 終わる", 715, 260);
  text("space   : 選択の決定", 715, 300);
  text("十字キー: 選択・移動", 710, 340);
  text("その他   : マウスキー", 715, 380);
  fill(#15D3C5);
  text("パレードやショーを見ない場合は", 650, 450);
  text("その時間帯、待ち時間が1/3になります", 620, 480);
  for(int i = 0; i < 3; i++){
    if(parade[i] == true) parade_2[i] = true;
    else if(parade[i] == false) parade_2[i] = false;
  }
}

void parade() {
  if (parade_count > 150) {
    background(#FCFCB2);
    textSize(50);
    textAlign(CENTER, CENTER);
    fill(#EC61FC);
    text("パレードやショーが始まるよ!", width/2, height/2-50);
  } else if (parade_count > 0) {
    tei.setGain(0);
    audience.play();
    switch(t_h) {
    case 20:
      background(show[0]);
      break;
    case 14:
      background(show[1]);
      break;
    case 11:
      background(show[2]);
      break;
    }
  } else {
    switch(t_h) {
    case 20:
      parade[0] = false;
      break;
    case 14:
      parade[1] = false;
      break;
    case 11:
      parade[2] = false;
      break;
    }
    parade_count = 240;
    nomal = true;
    /*if(gseq <= 6 || gseq == 12 || gseq == 13 || gseq == 26) m_2(0);
    else if(gseq <= 11 || gseq == 14) m_2(1);
    else if(gseq == 15) m_2(2);
    else if(gseq >= 16 && gseq <= 19) m_2(3);
    else if((gseq >= 20 && gseq <= 21) || gseq == 24) m_2(4);
    else if(gseq >= 22 && gseq <= 23) m_2(5);
    else if(gseq == 25) m_2(6);*/
  }
  parade_count--;
}

void gameOver() {
  background(0);
  textAlign(CENTER, CENTER);
  textSize(60);
  fill(#96F7E9);
  text("YOU CAN'T MOVE", width/2, height/2-20);
  fill(255);
  textSize(30);
  text("リトライする", width/2, height/2+90);
  text("ゲームをやめる", width/2, height/2+160);
  rectMode(CENTER);
  noFill();
  strokeWeight(2);
  stroke(255);
  if (choose == 1) {
    rect(width/2, height/2+95, 220, 50);
    textSize(20);
    text("30分経過し、体力が半分回復した状態になります。", width/2, 690);
  }
  if (choose == 2) rect(width/2, height/2+165, 220, 50);
}

void closed() {
  eve_k = 100;
  background(yakei);
  textAlign(CORNER);
  textSize(40);
  fill(#C329CB);
  text("ただ今閉園時間になりました。", 211, 178);
  text("どうぞお気をつけてお帰りください", 211, 253);
  text("またのおこしをお待ちしております。", 211, 318);
  textSize(30);
  fill(255);
  text("ENTER: おわる", 630, 380);
}

//タートル・トーク

void turtle() {
  background(umi);
  imageMode(CENTER);
  if (tur_scene == 0) talk();
  else if (tur_scene == 1) score();
}

void talk() {
  textAlign(CORNER);
  fill(0);
  textSize(25);
  text("ENTER:会話を進める", 100, 189);
  text("0", 230, 660);
  noStroke();
  rect(275, 600, 500, 50);
  fill(#E0EA50);
  text("space:止める", 850, 620);
  textSize(30);
  fill(#E810B6);
  text("↑声のvolumeメーター：「ウォー！」と叫ぶ", 281, 693);
  if (serihu != 6 && serihu != 9 && serihu != 12 && serihu != 15 && serihu != 18) {
    image(turtle, width/2-50, 300);
    image(huki, 750, 150);
  }
  switch(serihu) {
    case(0):
    serihu("ワ~ォ!", "こんなところに人間がいるぜ!", " ");
    break;
    case(1):
    serihu("なぁ、", "ゲームしないか？", " ");
    break;
    case(2):
    serihu("俺が", "お前たちさ〜いこうだぜ〜!", "って言った時だけ..");
    break;
    case(3):
    serihu("ウｫ〜！", "って叫ぶんだ。", "ただし...");
    break;
    case(4):
    serihu("少しでも違う言葉には、", "反応するなよ??", "さっそくやってみようぜ!!");
    break;
    case(5):
    serihu("...", " ", "お前たち");
    break;
    case(6):
    if (e_con == false) {
      s_fin = false;
      e_con = true;
    }
    saikou();
    break;
    case(7):
    serihu("今のは練習だ~。", "それじゃぁ本番いこうぜ!!", "三回勝負な!");
    break;
    case(8):
    serihu("...", " ", "お前たち");
    e_con = false;
    break;
    case(9):
    if (e_con == false) {
      reset();
      e_con = true;
    }
    s_turn = 0;
    saikou();
    break;
    case(10):
    if (tur_score[0] > 85) serihu("お前すげぇなぁ", "次もがんばれ!", "いくぞ!");
    else if (s_k == 3) serihu("お前、さいとうっていうのか!?", "名前、覚えたぜ!", "次、いくぞ!");
    else if (s_k == 4) serihu("...", "さいころってなんだ?", "自分でもわかんね〜ぜ!!");
    else serihu("お!?", "次はよそ見するなよ?", "いくぞ!");
    break;
    case(11):
    serihu("...", " ", "お前たち");
    e_con = false;
    break;
    case(12):
    if (e_con == false) {
      reset();
      e_con = true;
    }
    s_turn = 1;
    saikou();
    break;
    case(13):
    if (tur_score[1] > 85) serihu("お前すげぇなぁ", "次もがんばれ!", "いくぞ!");
    else if (s_k == 3) serihu("お前、さいとうっていうのか!?", "名前、覚えたぜ!", "次、いくぞ!");
    else if (s_k == 4) serihu("...", "さいころってなんだ?", "自分でもわかんね〜ぜ!!");
    else serihu("お!?", "次はよそ見するなよ?", "いくぞ!");
    break;
    case(14):
    serihu("...", " ", "お前たち");
    e_con = false;
    break;
    case(15):
    if (e_con == false) {
      reset();
      e_con = true;
    }
    s_turn = 2;
    saikou();
    break;
    case(16):
    serihu("すげぇ〜楽しかったな!", "遊んでくれてありがとな!!", "スコアは後で確認できるぜ");
    break;
    case(17):
    serihu("...", " ", "お前たち");
    e_con = false;
    break;
    case(18):
    if (e_con == false) {
      reset();
      e_con = true;
    }
    s_turn = 3;
    saikou();
    break;
    case(19):
    serihu("4回勝負になっちまったな", "また来てくれよな", "じゃぁな!");
    break;
    case(20):
    tur_scene = 1;
    break;
  }
}
void saikou() {
  if (s_k == 0) {
    if (serihu == 6) s_k = 1;
    else s_k = (int)random(1, 4);
  }
  switch(s_k) {
    case(1):
    you[0] = "こ";
    you[1] = "う";
    break;
    case(2):
    you[0] = "こ";
    you[1] = "ろ";
    break;
    case(3):
    you[0] = "と";
    you[1] = "う";
    break;
  }
  textSize(40);
  textAlign(CENTER, CORNER);
  fill(0);
  if (s_c > 20) text("さ〜", 635, 250);
  if (s_c > 100) text("い", 715, 250);
  fill(#F519DF);
  if (s_c > 120) text(you[0], 755, 250);
  if (s_c > 125) text(you[1], 795, 250);
  fill(0);
  if (s_c > 130) text("だ", 835, 250);
  if (s_c > 135) text("ぜ〜", 895, 250);
  s_c++;
  if (s_c >= 150) s_c = 150;
  image(saiko, width/2-50, 300);
  if (m_stop == false) {
    if (s_c > 100) {
      mx+= vx;
    }
    if (mx>=500) vx = -vx;
    else if (mx < 1) {
      if (s_k != 1) {
        suc.play();
        suc.rewind();
      }
      m_stop = true;
      s_fin = true;
      mx = 0;
    }
  }
  text(mx/5, 815, 650);
  fill(#F4F548);
  noStroke();
  rect(275, 600, mx, 50);
  if (serihu != 6) {
    if (s_k == 1) tur_score[s_turn] = mx/5;
    else tur_score[s_turn] = 100 - mx/5;
    fill(0);
    textSize(40);
    text(tur_score[s_turn], 950, 80);
  }
  if (s_fin == true && mx!= 0) {
    textSize(mx/2);
    fill(0);
    textAlign(CENTER, CENTER);
    rotate(radians(-20));
    text("ウｫ〜！", width/2-100, 500);
    rotate(radians(20));
  }
}

void serihu(String a, String b, String c) {
  fill(0);
  textSize(25);
  textAlign(CORNER, CENTER);
  text(a, 620, 100);
  text(b, 610, 140);
  text(c, 610, 180);
}

void reset() {
  s_fin = false;
  m_stop = false;
  mx = 1;
  s_k = 0;
  s_c = 0;
  vx = 10;
}

void tur_fin_reset() {
  serihu = 0;
  tur_scene = 0;
  s_k = 0;
  s_fin = true;
  m_stop = false;
  mx = 1;
  s_k = 0;
  s_c = 0;
  vx = 10;
  s_turn = 0;
  m_stop = false;
  e_con = false;
}

void score() {
  int total = tur_score[0] + tur_score[1] + tur_score[2] + tur_score[3];
  if (total >= 350) tur_mis = true;
  textAlign(CORNER, CENTER);
  textSize(80);
  fill(255, 255, 0);
  text("YOUR SCORE", 200, 100);
  textSize(200);
  fill(0);
  text(total, 200, 220);
  if (serihu >= 21) {
    nomal = true;
    eve = false;
    tur_fin_reset();
    m_2(1);
  }
}

//トイマニ

void toymani() {
  if (scene == 1|| scene == 2 || scene == 3) {
    if (scene == 1) {
      spead = 10;
      background(toy_back);
      i_s = 0;
      i_fin = 28;
    } else if (scene == 2) {
      spead = 10;
      background(desert);
      i_s = 28;
      i_fin = 48;
      kazari();
    } else if (scene == 3) {
      spead = 5;
      background(desert);
      i_s = 48;
      i_fin = 50;
      kazari();
    }
    mato();
    if (scene == 2) {
      imageMode(CORNER);
      image(wave[0], 580, 375);
      image(wave[1], 580, 455);
    }
    ball();
    shot();
    toy_score();
    count();
  } else if (scene == 0) {
    spead = 10;
    background(toy_start);
    textAlign(CENTER, CENTER);
    textSize(80);
    fill(255, 255, 0);
    text("TOY STORY MANIA", width/2, 200);
    noStroke();
    fill(#FF820D);
    rectMode(CENTER);
    rect(width/4 * 3 - 80, 318, 200, 40, 10);
    fill(255);
    textSize(40);
    if (mcnt_s%60 < 30) text("Get Start", width/4 * 3 - 80, 310);
    ball();
    shot();
    mcnt_s++;
  }
  if (scene == 4) {
    naka();
  } else if (scene == 5) {
    background(toy_start);
    gamefin();
  }
}

class Target {
  float x;//
  float y;//
  float d;//diameter
  //float v;
  float vx;
  float wait;//
  boolean hit;//
  int c;
  int tei;//500と10のどっちに確定したか//0
  boolean s_count;//
  int reviv_c = 0;//復活カウント
  int hit_count = 0;
  Target(float x, float y, float d, float vx, float wait, int c, boolean hit, int tei, boolean s_count) {
    this.x = x;
    this.y = y;
    this.d = d;
    this.vx = vx;
    this.wait = wait;
    this.c = c;
    this.hit = hit;
    this.tei = tei;
    this.s_count = s_count;
  }
  void display() {
    fill(c);
    stroke(0);
    strokeWeight(1);
    ellipse(x, y, d, d);
  }
}

void kazari() {
  for (int i = 28; i < 48; i++) {
    if (i < 31) image(kazari[0], tg[i].x-30, tg[i].y+30);
    else if (i < 36) image(kazari[1], tg[i].x+15, tg[i].y + 25);
    else if (i < 39) image(kazari[3], tg[i].x+18, tg[i].y + 10);
    else if (i < 42) image(kazari[2], tg[i].x-18, tg[i].y + 10);
    else if (i < 45) image(kazari[5], tg[i].x+14, tg[i].y -45);
    else if (i < 48) image(kazari[4], tg[i].x-14, tg[i].y -45);
  }
  imageMode(CENTER);
  image(kazari[6], tg[1].x-20, 450);
}

void mato() {
  if (mcnt%200 < 90) whitch = 1;
  else if (mcnt%200 >=90) whitch = 2;
  for (int i = i_s; i< i_fin; i++) {
    tg[i].wait--;
    if (tg[i].wait <= 0) {
      tg[i].wait = 0;
      tg[i].x += tg[i].vx;
      tg[i].display();
      fill(0);
      textSize(tg[i].d/2);
      textAlign(CENTER, CENTER);
      if ((scene == 1 && i < 10) || (scene == 2 && (i >= 28 && i < 36))) {
        fill(#FF0346);
        text("100", tg[i].x, tg[i].y);
      } else if ((scene ==1 && i < 20) ||
        (scene == 2 && (i >= 36 && i < 42))) {
        if (scene == 2) {
          if (i < 39) {
            if (tg[i].x > width+250) tg[i].x = 600;
          } else if (i < 42) {
            if (tg[i].x < 600) tg[i].x = width+250;
          }
        }
        if ((whitch == 1 && tg[i].hit == false) || tg[i].tei == 1) {
          fill(#02A037);
          text("500", tg[i].x, tg[i].y);
        } else if ((whitch == 2 && tg[i].hit == false )|| tg[i].tei == 2) {
          fill(#47C6F2);
          text("10", tg[i].x, tg[i].y);
        }
      } else if (scene == 2 && i == 46) {
        fill(#484CFF);
        text("1000", tg[i].x, tg[i].y);
      } else if ((scene == 1 && i < 28)||
        (scene == 2 && i < 48)) {
        fill(#9431FF);
        text("200", tg[i].x, tg[i].y);
      } else if (scene == 3) {
        if (tg[i].hit_count < 5) {
          fill(#FF0346);
          text("100", tg[i].x, tg[i].y);
        } else if (tg[i].hit_count < 15) {
          fill(#02A037);
          text("500", tg[i].x, tg[i].y);
        } else if (tg[i].hit_count < 30) {
          fill(#484CFF);
          text("1000", tg[i].x, tg[i].y);
        } else {
          fill(#F508FA);
          text("10000", tg[i].x, tg[i].y);
        }
      }
    }
    if (tg[i].hit == true) tg[i].c = 0;
    else tg[i].c = 255;
  }
  mcnt++;
}

void naka() {
  background(0);
  textAlign(CENTER, CENTER);
  naka_c = count_naka/60;
  fill(255);
  textSize(100);
  if (naka_c <= 1) text("①", width/2, height/2);
  else if (naka_c <= 2) text("②", width/2, height/2);
  else if (naka_c <= 3) text("③", width/2, height/2);
  if (naka_c == 0) {
    if (game_c[0] == 0) {
      count_naka = 5* 60;
      scene = 2;
    } else {
      count_naka = 5* 60;
      scene = 1;
    }
  }
  count_naka--;
}

void rank() {
  for ( int i = 0; i < 12; i++ ) {
    if (score == data[i]) fill(255, 255, 0);
    else fill(0);
    textSize(30);
    if (i < 9) {
      text( String.valueOf(i+1) + "  位　" + String.valueOf(data[i]), 900, i * 45 + 40);
    } else {
      text( String.valueOf(i+1) + "位　" + String.valueOf(data[i]), 900, i * 45 + 40);
    }
    //textファイルの行数ごとに画面に表示
  }
}

void textWrite( String fileName, String msg ) {
  try {
    FileOutputStream fos = new FileOutputStream( fileName, true);
    fos.write( msg.getBytes() );
    fos.close();
  }
  catch (Exception ex) {
    //例外
    ex.printStackTrace();
  }
}

void getData() {
  textScoreData = loadStrings( file );
  if ( textScoreData == null ) {
    println( "\n" + file + "読み込み失敗" );
    exit();
  }
  for (int i = 0; i < textScoreData.length; i++) {
    data[i] = Integer.valueOf(textScoreData[i]);
  }
  //data[textScoreData.length] = calorie;
  data = reverse(sort(data));
  //新しく取得したデータを大きい順に並べる
}

void gamefin() {
  textMode(CORNER);
  fill(#FFF40D);
  textSize(80);
  text("YOUR SCORE!", 400, 100);
  fill(#FF0D9B);
  textSize(200);
  text(score, 400, 300);
  if (score_save == false) {
    String rank_score = str(score);
    println (rank_score + "を書き込みました");
    textWrite( file, rank_score + "\n");
  }
  getData();
  rank();
  if (score >= data[2]) toy_rank = true;
  score_save = true;
}

void toy_score() {
  for (int i = 0; i < tg.length; i++) {
    if (tg[i].hit == true && tg[i].s_count == true) {
      if ((scene == 1 && i < 10) || (scene == 2 && i < 36)) {
        score += 100;
      } else if ( (scene == 1 && i < 20) || (scene == 2 && i < 42)) {
        if (tg[i].tei == 1) score += 500;
        else if (tg[i].tei == 2) score += 10;
      } else if ((scene == 1 && i < 28) || (scene == 2 && i < 48)) score += 200;
      else if (scene == 3) {
        if (tg[i].hit_count < 5) score+= 100;
        else if (tg[i].hit_count < 15) score+= 500;
        else if (tg[i].hit_count < 30)score+= 1000;
        else score+= 10000;
        tg[i].s_count = false;
        tg[i].hit = false;
        tg[i].hit_count++;
      }
      tg[i].s_count = false;
    }
    if (scene == 2) {
      if (tg[i].hit == true) {
        tg[i].reviv_c ++;
        if (tg[i].reviv_c >= 180) {
          tg[i].reviv_c = 180;
          tg[i].hit = false;
        }
      }
    }
  }
  fill(0);
  textSize(40);
  text(score, 900, 50);
}
void count() {
  for (int i = 0; i < 3; i++) {
    game_c[i] = count[i]/60;
  }
  if (scene == 1) {
    count[0]--;
    if (game_c[0]<=0) {
      count[0] = 0;
      scene = 4;
    }
    fill(0);
    text(game_c[0], 100, 100);
  }
  if (scene == 2) {
    count[1]--;
    if (game_c[1]<=0) {
      count[1] = 0;
      scene = 3;
    }
    fill(0);
    text(game_c[1], 100, 100);
  }
  if (scene == 3) {
    count[2]--;
    if (game_c[2]<=0) {
      count[2] = 0;
      scene = 5;
    }
    fill(0);
    text(game_c[2], 100, 100);
  }
}

void ball() {
  imageMode(CENTER);
  if (mouseY > 545) {
    strokeWeight(2);
    stroke(255, 0, 0);
    line(525, 545, mouseX, mouseY);
    pointer_x = 2090-3*mouseX;
    pointer_y = 2180-3*mouseY;
  }
  image(p_ball, ball_x, ball_y);
}
void shot() {
  noFill();
  stroke(255, 0, 0);
  strokeWeight(3);
  ellipse(pointer_x, pointer_y, 20, 20);
  ellipse(pointer_x, pointer_y, 40, 40);
  if (shot== true) {
    if (shot_x < 525) {
      ball_x += (525-shot_x)/spead;
      ball_y += (545-shot_y)/spead;
    } else if (shot_x > 525) {
      ball_x += (525-shot_x)/spead;
      ball_y += (545-shot_y)/spead;
    }
    if (dist(ball_x, ball_y, bFin_x, bFin_y-10)< 20 || ball_y < 0) {
      if (scene != 0) {
        for (int i = i_s; i<i_fin; i++) {
          if (dist(tg[i].x, tg[i].y, ball_x, ball_y)<tg[i].d) {
            hit.play();
            hit.rewind();
            if (i >= 10 && i < 20) {
              if ( whitch == 1) tg[i].tei = 1;
              else if (whitch == 2) tg[i].tei = 2;
            }
            if (tg[i].hit == false) {
              tg[i].s_count = true;
              tg[i].hit = true;
              tg[i].c = 0;
              tg[i].reviv_c = 0;
            }
          }
        }
      } else if (scene == 0) {
        if (dist(ball_x, ball_y, bFin_x, bFin_y-10)<45) {
          if (dist(width/4 * 3 - 80, 318, ball_x, ball_y) < 50) {
            hit.play();
            hit.rewind();
            scene = 4;
          }
        }
      }
      ball_x = 525;
      ball_y = 545;
      shot = false;
    }
  }
}

void toy_reset() {
  count_naka = naka_c*60;
  game_c[0] = 20;
  game_c[1] = 25;
  game_c[2] = 10;
  for (int i = 0; i < 3; i++) {
    count[i] = game_c[i] * 60;
  }
  pointer_y =  750/2;
  ball_x = 1050/2;
  ball_y = 545;
  shot = false;
  score_save = false;
  mcnt = 0;
  mcnt_s = 0;
  score = 0;
  scene = 0;
  naka_c = 4;
  count_naka = naka_c * 60;
  for (int i = 0; i < 50; i++) {
    tg[i].c = 255;
    tg[i].hit = false;
    tg[i].tei = 0;
    tg[i].s_count = false;
    tg[i].hit_count = 0;
    if (i < 10) {
      tg[i].x = -100;
      tg[i].y = 310;
      tg[i].wait = i*180;
    } else if (i < 20) {
      tg[i].x = -100;
      tg[i].y = 310;
      tg[i].wait = (i-10)*180 + 90;
    } else if (i < 28) {
      tg[i].x = -100;
      tg[i].y = 190;
      tg[i].wait = (i-20)*250;
    } else if (i < 31) {
      tg[i].x = 150 * (i-28) + 150;
      tg[i].y = 390;
      tg[i].wait = 0;
    } else if (i < 36) {
      tg[i].x = 90 * (i-31) + 550;
      tg[i].y = 260;
      tg[i].wait = 0;
    } else if (i < 39) {
      tg[i].x = 600;
      tg[i].y = 350;
      tg[i].wait = (i-36) * 120;
    } else if (i < 42) {
      tg[i].x = width+100;
      tg[i].y = 430;
      tg[i].wait = (i-39)*120;
    } else if (i < 45) {
      tg[i].x = -100;
      tg[i].y = 150;
      tg[i].wait = (i-42)*600 + 100;
    } else if (i < 48) {
      tg[i].x = width+100;
      tg[i].y = 160;
      tg[i].wait = (i-45)*600 + 400;
    } else if (i == 48) {
      tg[i].x = width/4;
      tg[i].y = height/2;
      tg[i].wait = 0;
    } else if (i == 49) {
      tg[i].x = (width/4)* 3;
      tg[i].y = height/2;
      tg[i].wait = 0;
    }
  }
}

void mus(int a, int b){
  bgm[a].pause();
  bgm[b].rewind();
  bgm[b].play();
  bgm[b].loop();
}

void m_2(int a){
  bgm[a].play();
  bgm[a].loop();
}
