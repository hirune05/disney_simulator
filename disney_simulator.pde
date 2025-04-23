//乗り物に乗った時 + イベントしている時
import ddf.minim.*;
Minim minim;
AudioPlayer kane;
AudioPlayer cure;
AudioPlayer kiteki;
AudioPlayer densya;
AudioPlayer kasya;
AudioPlayer pin;
AudioPlayer faspas;
AudioPlayer tei;
AudioPlayer suc;
AudioPlayer friend;
AudioPlayer fir;//発射
AudioPlayer hit;//ヒット
AudioPlayer audience;
AudioPlayer[] bgm = new AudioPlayer[7];

import java.io.FileOutputStream;
PImage[] hito = new PImage[4];
PImage map;
PImage[] ya = new PImage[8];
PImage[] eria = new PImage[27];
PImage[] cara = new PImage[4];
PImage[] show = new PImage[3];
PImage wagon;
PImage bag;
PImage churo;
PImage hune;
PImage rail;
PImage fast;//ファストパス
PImage yakei;
PImage boad;
PImage crown;//王冠

FloatList yazid = new FloatList();
IntList ya_x = new IntList();
IntList ya_y = new IntList();
StringList data_have = new StringList();
boolean[] go = new boolean[7];

int gseq = 0;

int eve_k = 0;//event
int yazi_q;//yazirusi_quantity
int hito_x = 283;
int hito_y = 334;
int hazime = 0;//初めだけの制御
int hazi_l = 0;
int hazi_r = 600;
int hazi_u = 0;
int hazi_d = 750;
int hito_kind = 0;
int food_kind = 0;//0は何もない
int have_k;
int pass_num = 3;
int cara_k;
int choose = 0;//選択
int ope_c = 0;//operate count
int HP = 1000;
int t_s = 0;//total second
int t_m = 0;//total minute
int t_h = 8;//total hour
int eve_h;
int eve_m;
int wait_h;
int wait_m;
int gre_mcnt = 360;
float hune_oc = -20;
boolean have = false;
boolean nomal = true;
boolean food = false;
boolean eve = false;
boolean pass = false;
boolean mission = false;
boolean sound = true;
int parade_count = 240;

//初めの画面
boolean[] parade = new boolean[3];
boolean[] parade_2 = new boolean[3];
int game_scene = 0;

//ミッション
boolean[] misChuro = new boolean[4];
int churo_count = 0;
boolean[] misPop = new boolean[8];
int pop_count = 0;
boolean[] misGre = new boolean[4];
int gre_count = 0;
boolean toy_rank = false;
boolean tur_mis = false;

//turtle talk

PImage umi;
PImage turtle;
PImage saiko;
PImage huki;
int serihu = 0;//
int tur_scene = 0;//
int mx = 1, vx = 10;//materX, 速度
int s_k = 0;//最高kind, 0:決まってない//
int s_c;//最高count
int s_turn;//3回勝負の何回目か//
int[] tur_score = new int[4];
boolean m_stop = false;//materStop
boolean s_fin= true;//最高finish
boolean e_con = false;
String [] you = new String[2];//お前たち「」の中身


//トイストーリーマニア

Target[] tg = new Target[50];
PImage toy_back;
PImage desert;
PImage toy_start;
PImage p_ball;
PImage[] wave = new PImage[2];//0:ue, 1:sita
PImage[] kazari = new PImage[7];

float pointer_x = 1050/2;
float pointer_y =  750/2;
float ball_x = 1050/2;
float ball_y = 545;
boolean shot = false;
boolean score_save = false;
float shot_x;//クリックしたいち
float shot_y;
float bFin_x;// ボールが当たる場所（ポインター）
float bFin_y;
int mcnt = 0;
int mcnt_s = 0;
int whitch;//10と500のどっちに当たったかを判断する
int score = 0;
int scene = 0;
int naka_c = 4;//途中の321
int[] game_c = new int[3];
int spead;

int count_naka;//noka_c*60
int[] count = new int[3];
int i_s;//for文の時のスタート
int i_fin;//for文の時のフィニッシュ

int data[] = new int[100];
String textScoreData[] = null;
String file;

void setup() {
  size(1050, 760);
  PFont font = createFont("Osaka", 40);
  textFont (font);
  load_data();

  //トイマニ
  count_naka = naka_c*60;
  game_c[0] = 20;
  game_c[1] = 25;
  game_c[2] = 10;
  for (int i = 0; i < 3; i++) {
    count[i] = game_c[i] * 60;
  }
  //scene:1
  for (int i = 0; i < 10; i++) {
    tg[i] = new Target(-100, 310, 100, 2, i*180, 255, false, 0, false);
  }//100
  for (int i = 10; i < 20; i++) {
    tg[i] = new Target(-100, 310, 70, 2, (i-10)*180 + 90, 255, false, 0, false);
  }//10, 50
  for (int i = 20; i < 28; i++) {
    tg[i] = new Target(-100, 190, 60, 3, (i-20) * 250 + 90, 255, false, 0, false);
  }//200

  //sscene:2
  for (int i = 28; i < 31; i++) {
    tg[i] = new Target(150 * (i -28) + 150, 390, 60, 0, 0, 255, false, 0, false);
  }//100点
  for (int i = 31; i < 36; i++) {
    tg[i] = new Target(90 * (i -31)+ 550, 260, 40, 0, 0, 255, false, 0, false);
  }//100点
  for (int i = 36; i < 39; i++) {
    tg[i] = new Target(600, 350, 30, 2, (i-36)*120, 255, false, 0, false);
  }//10と500点
  for (int i = 39; i < 42; i++) {
    tg[i] = new Target(width+100, 430, 30, -2, (i-39)*120, 255, false, 0, false);
  }//10と500点
  for (int i = 42; i < 45; i++) {
    tg[i] = new Target(-100, 150, 30, 3, (i-42) * 600 + 100, 255, false, 0, false);
  }//200点左
  for (int i = 45; i < 48; i++) {
    tg[i] = new Target(width+100, 160, 30, -3, (i-45) * 600 + 400, 255, false, 0, false);
  }//200点右
  tg[48] = new Target(width/4, height/2, 400, 0, 0, 255, false, 0, false);
  tg[49] = new Target((width/4) * 3, height/2, 400, 0, 0, 255, false, 0, false);
  String initFile = dataPath("") + "\\test.txt";//書き込むファイルの置いてあるところ
  file = initFile;
  textScoreData = loadStrings( file );
  for (int i = 0; i < 13; i++) {
    data[i] = Integer.valueOf(textScoreData[i]);
  }

  if ( textScoreData == null ) { //text ファイルロード失敗
    println( "\n" + file + "読み込み失敗" );
    exit();
  }
  data = reverse(sort(data));/*textファイルに書き込まれたスコアを大きい順に並び替える
   →小さい順に書き込んだものを逆にしている*/
}
void draw() {
  if(game_scene == 0) gameStart();
  else {
    if (eve == false) background(0);
    if (nomal == true) {
      background(0);
      sound = true;
      eria();
      if(t_h > 16){
      fill(0, 0, 0, (t_h-16) * (t_h-16) * 10);
      noStroke();
      rect(0, 0, 1050, 760);
      }
      imageMode(CORNER);
      image(map, 610, 62);
      if (mouseX > 955 && mouseX < 1055 && mouseY < 755 && mouseY > 655) {
        fill(#FCF3A6);
      } else {
        fill(255);
      }
      noStroke();
      rectMode(CORNER);
      rect(955, 665, 100, 100);
      image(bag, 970, 680);
      if (mouseX > 608 && mouseX < 708 && mouseY < 755 && mouseY > 655) {
        fill(#FCF3A6);
      } else {
        fill(255);
      }
      rect(608, 665, 100, 100);
      image(boad, 630, 680);
      strokeWeight(20);
      stroke(0);
      noFill();
      rectMode(CORNER);
      rect(618, 70, 420, 284);
      fill(255);
      textAlign(CORNER, CENTER);
      textSize(40);
      if (t_m < 10)
        text(t_h + ": 0" + t_m, 910, 25);
      else 
        text(t_h + ": " + t_m, 910, 25);
      hazi_l = 0;
      hazi_r = 600;
      hazi_u = 0;
      hazi_d = 750;
      switch(gseq) {
      case 0:
        plaza();
        break;
      case 1:
        gate();
        break;
      case 2:
        birie();
        break;
      case 3:
        soal();
        break;
      case 5:
        hune();
        break;
      case 6:
        ren_hasi();
        break;
      case 7:
        waterFront_ue();
        break;
      case 8:
        waterFront_sita();
        break;
      case 9:
        water_hasi();
        break;
      case 10:
        bunki_1();
        break;
      case 11:
        bunki_2();
        break;
      case 12:
        bunki_3();
        break;
      case 13:
        bunki_4();
        break;
      case 14:
        kepc();
        break;
      case 15:
        boatdis();
        break;
      case 16:
        bunki_5();
        break;
      case 17:
        bunki_6();
        break;
      case 18:
        mikiminigr();
        break;
      case 19:
        indy();
        break;
      case 20:
        risedan();
        break;
      case 21:
        jinmer();
        break;
      case 22:
        mer_en();
        break;
      case 23:
        mer();
        break;
      case 24:
        bunki_7();
        break;
      case 25:
        prome();
        break;
      case 26:
        bunki_8();
        break;
      default:
        break;
      }
      fal();

      if (yazid.size()>yazi_q) {
        for (int i = yazid.size(); i>yazi_q; i--) {
          yazid.remove(i-1);
        }
      }
      for (int i = 0; i<yazid.size(); i++) {
        yazid.set(i, dist(ya_x.get(i), ya_y.get(i), hito_x, hito_y));
      }
      for (int i = yazid.size(); i<yazi_q; i++) {
        yazid.append(dist(ya_x.get(i), ya_y.get(i), hito_x, hito_y));
      }
      hito();
      imageMode(CENTER);
      image(hito[hito_kind], hito_x, hito_y);
      if (HP <= 0) {
        if (data_have.size() >=1) {
          textAlign(CORNER, CENTER);
          textSize(20);
          fill(#FC0A6F);
          text("もう限界...", hito_x + 20, hito_y -50);
          text("なんかたべない?", hito_x + 20, hito_y -25);
        } else {
          nomal = false;
          choose = 1;
        }
      } else if (HP <= 100) {
        textAlign(CORNER, CENTER);
        textSize(20);
        fill(#FC0A6F);
        text("疲れた...。", hito_x + 20, hito_y -30);
      }
      if (t_h >= 21) nomal = false;
      else if((parade[0] == true && t_h == 20)|| (parade[1] == true && t_h == 14)|| (parade[2] == true && t_h == 11)) {
        audience.rewind();
        t_m += 30;
        nomal = false;
      }
  } else {
      if (HP <= 0)gameOver();
      else if (have == true) {
        haveWrite();
      } else if (mission == true) {
        mission();
      } else if (eve == true) {
        for(int i = 0; i < 7; i++){
        bgm[i].pause();
      }
        switch(eve_k) {
        case 1:
        case 2:
        case 11:
          steamer();
          break;
        case 3:
        case 4:
          rail();
          break;
        case 7:
          toymani();
          break;
        case 9:
          turtle();
          break;
        case 12:
        case 17:
        case 18:
        case 19:
          gre();
          break;
        }
      } else {
        if (t_h >= 21) closed();
        else if(eve == false &&((parade[0] == true && t_h == 20)|| (parade[1] == true && t_h == 14)|| (parade[2] == true && t_h == 11))){
          parade();
        }
      }
    }
  }
}

void ya_set(int n, int x, int y) {
  ya_x.set(n, x);
  ya_y.set(n, y);
}
void hito_set(int x, int y) {
  hito_x = x;
  hito_y = y;
}
void fal() {
  for (int i = 0; i< 5; i++) {
    go[i] = false;
  }
}
