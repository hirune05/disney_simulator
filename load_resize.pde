void load_data() {
  hito[0] = loadImage("hito_usiro.png");
  hito[1] = loadImage("hito_r.png");
  hito[2] = loadImage("hito_l.png");
  hito[3] = loadImage("hito_mae.png");
  map = loadImage("map.jpeg");
  wagon = loadImage("wagon.png");
  bag = loadImage("bag.png");
  churo = loadImage("churo.png");
  hune = loadImage("hune.png");
  rail = loadImage("rail.png");
  fast = loadImage("pass.png");
  yakei = loadImage("yozora.jpg");
  boad = loadImage("clip.png");
  crown = loadImage("crown.png");

  eria[0] = loadImage("plaza.jpeg");
  eria[1] = loadImage("gate.jpeg");
  eria[2] = loadImage("birie.jpeg");
  eria[3] = loadImage("soalin.jpeg");
  eria[4] = loadImage("show.jpg");
  eria[5] = loadImage("hune.jpeg");
  eria[6] = loadImage("hasi.jpeg");
  eria[7] = loadImage("water_ue.jpeg");
  eria[8] = loadImage("water_sita.jpeg");
  eria[9] = loadImage("water_hasi.jpeg");
  eria[10] = loadImage("bunki_1.jpeg");
  eria[11] = loadImage("bunki_2.jpeg");
  eria[12] = loadImage("bunki_3.jpeg");
  eria[13] = loadImage("bunki_4.jpeg");
  eria[14] = loadImage("kepc.jpeg");
  eria[15] = loadImage("boatdis.jpeg");
  eria[16] = loadImage("bunki_5.jpeg");
  eria[17] = loadImage("bunki_6.jpeg");
  eria[18] = loadImage("mikiminigr.jpeg");
  eria[19] = loadImage("indy.jpeg");
  eria[20] = loadImage("risedan.jpeg");
  eria[21] = loadImage("jinmer.jpeg");
  eria[22] = loadImage("mer_en.jpeg");
  eria[23] = loadImage("mer.jpeg");
  eria[24] = loadImage("bunki_7.jpeg");
  eria[25] = loadImage("prome.jpeg");
  eria[26] = loadImage("bunki_8.jpeg");

  ya[0] = loadImage("yazirusi_ue.png");
  ya[1] = loadImage("yazirusi_sita.png");
  ya[2] = loadImage("yazirusi_r.png");
  ya[3] = loadImage("yazirusi_l.png");
  ya[4] = loadImage("r_u.png");
  ya[5] = loadImage("r_d.png");
  ya[6] = loadImage("l_d.png");
  ya[7] = loadImage("l_u.png");

  cara[0] = loadImage("daffyあいにゃん.jpg");
  cara[1] = loadImage("sherryあいにゃん.jpg");
  cara[2] = loadImage("mikkyあいにゃん１.jpg");
  cara[3] = loadImage("minnieあいにゃん.jpg");
  
  show[0] = loadImage("fantazmic.jpg");
  show[1] = loadImage("shine.jpg");
  show[2] = loadImage("BBB.jpg");

  for (int i = 0; i <= 3; i++) {
    hito[i].resize(80, 80);
  }
  for (int i=0; i<4; i++) {
    eria[i].resize(608, 760);
  }
  eria[4].resize(600, 337);//後でなんとかする
  for (int i = 5; i<27; i++) {
    eria[i].resize(608, 760);
  }
  for (int i = 0; i<8; i++) {
    ya[i].resize(70, 90);
  }
  for (int i = 0; i < 4; i++) {
    cara[i].resize(1050, 760);
  }
  for (int i = 0; i < 3; i++){
    show[i].resize(1050, 760);
  }
  map.resize(432, 300);
  wagon.resize(126, 113);
  bag.resize(70, 70);
  boad.resize(48, 66);
  churo.resize(70, 70);
  hune.resize(200, 200);
  rail.resize(288, 140);
  fast.resize(80, 80);
  yakei.resize(1050, 760);
  crown.resize(80, 80);

  minim = new Minim(this);
  kane = minim.loadFile("金額表示.mp3");
  cure = minim.loadFile("ロボット起動1.mp3");
  kiteki = minim.loadFile("大型船の汽笛1.mp3");
  densya = minim.loadFile("モノレール走行中.mp3");
  kasya = minim.loadFile("カメラのシャッター1.mp3");
  pin = minim.loadFile("決定、ボタン押下13.mp3");
  faspas = minim.loadFile("決定、ボタン押下30.mp3");
  audience = minim.loadFile("歓声と拍手1.mp3");
  bgm[0] = minim.loadFile("medite.mp3");
  bgm[1] = minim.loadFile("amefro.mp3");
  bgm[2] = minim.loadFile("poat.mp3");
  bgm[3] = minim.loadFile("lost.mp3");
  bgm[4] = minim.loadFile("aravia.mp3");
  bgm[5] = minim.loadFile("marm.mp3");
  bgm[6] = minim.loadFile("mist.mp3");

  //タートル・トーク
  umi = loadImage("umi.jpg");
  turtle = loadImage("turtle.png");
  saiko = loadImage("saiko.png");
  huki = loadImage("huki.png");
  umi.resize(1050, 760);
  turtle.resize(384, 270);
  huki.resize(450, 450);

  tei = minim.loadFile("歓声1.mp3");
  suc = minim.loadFile("ラッパのファンファーレ.mp3");

  //トイマニ
  friend = minim.loadFile("俺がついてるぜ.mp3");
  fir = minim.loadFile("fir.mp3");
  hit = minim.loadFile("hit.mp3");
  
  toy_back = loadImage("ToyMani.jpg");
  toy_back.resize(1050, 760);
  desert = loadImage("desert.jpeg");
  desert.resize(1050, 760);
  toy_start = loadImage("toy_start.jpg");
  toy_start.resize(1050, 760);
  p_ball = loadImage("p_ball.png");
  p_ball.resize(70, 70);
  wave[0] = loadImage("wave_ue.png");
  wave[1] = loadImage("wave_sita.png");
  for (int i = 0; i < 2; i++) {
    wave[i].resize(480, 20);
  }
  kazari[0] = loadImage("pig.png");
  kazari[0].resize(130, 97);
  kazari[6] = loadImage("hori.png");
  kazari[6].resize(420, 400);
  kazari[1] = loadImage("cow.png");
  kazari[1].resize(100, 100);
  kazari[2] = loadImage("duck_l.png");
  kazari[3] = loadImage("duck_r.png");
  kazari[4] = loadImage("bird_l.png");
  kazari[5] = loadImage("bird_r.png");
  for (int i = 2; i < 4; i++) {
    kazari[i].resize(80, 80);
    kazari[i+2].resize(91, 69);
  }
}
