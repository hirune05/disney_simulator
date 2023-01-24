void mousePressed() {
  print(mouseX + ", ");
  println(mouseY);
  if (game_scene == 0) {
    for (int i = 0; i < 3; i++) {
      if (mouseX > 150 && mouseX < 190 && mouseY > 300 + i * 136 && mouseY < 340 + i * 136) {
        if (parade[i] == false) parade[i] = true;
        else parade[i] = false;
      }
    }
  } else {
    if (eve == true) {
      if (eve_k == 7 && mouseY > 545 && shot == false) {
        shot_x = mouseX;
        shot_y = mouseY;
        bFin_x = pointer_x;
        bFin_y = pointer_y;
        fir.play();
        fir.rewind();
        shot = true;
      }
    } else {
      if (mouseX > 955 && mouseX < 1055 && mouseY < 755 && mouseY > 655) {
        nomal = false;
        have = true;
      }
      if ((have = true) && (mouseX > 810 && mouseX < 990 && mouseY > 18 && mouseY < 98)) {
        have = false;
        have_k = 0;
        nomal = true;
      }
      if (mouseX > 608 && mouseX < 708 && mouseY < 755 && mouseY > 655) {
        have = false;
        nomal = false;
        mission = true;
      }
      if ((mission = true) && (mouseX > 810 && mouseX < 990 && mouseY > 18 && mouseY < 98)) {
        mission = false;
        nomal = true;
      }
    }
  }
}
void keyPressed() {
  if (game_scene == 0) {
    if (keyCode == ENTER) {
      bgm[0].play();
      bgm[0].loop();
      game_scene = 1;
    }
  } else {
    if (nomal == true && food == false && HP > 0) {
      if (keyCode == UP && hito_y - 35 > hazi_u) {
        hito_kind = 0;
        hito_y-=10;
        HP-=2;
        t_s+=3;
      }
      if (keyCode == DOWN && hito_y + 35 < hazi_d) {
        hito_kind = 3;
        hito_y+=10;
        HP-=2;
        t_s+=3;
      }
      if (keyCode == RIGHT && hito_x + 18 < hazi_r) {
        hito_kind = 1;
        hito_x+=10;
        HP-=2;
        t_s+=3;
      }
      if (keyCode == LEFT && hito_x - 18 > hazi_l) {
        hito_kind = 2;
        hito_x-=10;
        HP-=2;
        t_s+=5;
      }

      if (t_s >= 60) {
        t_s-= 60;
        t_m+= 1;
      }
      if (t_m >= 60) {
        t_m -= 60;
        t_h+= 1;
      }
    } else if (food == true || HP < 1) {
      if (keyCode == UP || keyCode == DOWN) {
        if (choose == 1) choose = 2;
        else if ( choose == 2) choose = 1;
      }
    } else if (have == true) {
      if (keyCode == UP) {
        choose --;
        if (choose < 0) {
          if (have_k == 0) choose = data_have.size()-1;
          else if (have_k == 1) choose = pass_num-1;
        }
      }
      if (keyCode == DOWN) {
        choose ++;
        if ((have_k == 0 && choose >= data_have.size()) || (have_k == 1 && choose >= pass_num)) choose = 0;
      }
      if (keyCode == RIGHT || keyCode == LEFT) {
        if (have_k == 0) have_k = 1;
        else if (have_k == 1) have_k = 0;
      }
    }
    if (keyCode == ENTER) {
      if (have == false) {
        if (eve_k != 0) {
          pass = false;
          if (eve == true) {
            if (eve_k == 9 && s_fin == true) {
              serihu++;
            }
          } else {
            eve = true;
            if (t_h >= 21) exit();
            t_h+= eve_h;
            t_m+= eve_m;
            if (t_m >= 60) {
              t_m -= 60;
              t_h+= 1;
            }
          }
          if(sound == true){
            sound = false;
          switch(eve_k) {
          case 1:
          case 2:
          case 11:
            kiteki.rewind();
            kiteki.play();
            break;
          case 3:
          case 4:
            densya.play();
            densya.rewind();
            break;
          case 7:
            friend.play();
            friend.loop();
            break;
          case 9:
          case 12:
          case 17:
          case 18:
          case 19:
            break;
          case 40:
          cure.play();
          cure.rewind();
          HP = 1000;
          default:
            eve = false;
            break;
          }
          }
          if (eve_k == 7 && scene == 5) {
            nomal = true;
            eve = false;
            toy_reset();
            friend.rewind();
            friend.pause();
            m_2(1);
          }
        } else if (food_kind != 0) {
          food = true;
          choose = 1;
        }
      }
    }

    if (keyCode == ' ') {
      if (food_kind != 0) {
        if (choose == 1) {
          switch(food_kind) {
          case 1:
            data_have.append("・POP(キャラメル)");
            if (misPop[0] == false) pop_count+= 1;
            misPop[0] = true;
            break;
          case 2:
            data_have.append("・POP(ソルト)");
            if (misPop[1] == false) pop_count+= 1;
            misPop[1] = true;
            break;
          case 3:
            data_have.append("・POP(醤油バター)");
            if (misPop[2] == false) pop_count+= 1;
            misPop[2] = true;
            break;
          case 4:
            data_have.append("・POP(チョコレート)");
            if (misPop[3] == false) pop_count+= 1;
            misPop[3] = true;
            break;
          case 5:
            data_have.append("・POP(いちご)");
            if (misPop[4] == false) pop_count+= 1;
            misPop[4] = true;
            break;
          case 6:
            data_have.append("・POP(コンポタ)");
            if (misPop[5] == false) pop_count+= 1;
            misPop[5] = true;
            break;
          case 7:
            data_have.append("・POP(カレー)");
            if (misPop[6] == false) pop_count+= 1;
            misPop[6] = true;
            break;
          case 8:
            data_have.append("・POP(抹茶)");
            if (misPop[7] == false) pop_count+= 1;
            misPop[7] = true;
            break;
          case 9:
            data_have.append("・チュロ(シナモン)");
            if (misChuro[0] == false) churo_count+= 1;
            misChuro[0] = true;
            break;
          case 10:
            data_have.append("・チュロ(オレンジ)");
            if (misChuro[1] == false) churo_count+= 1;
            misChuro[1] = true;
            break;
          case 11:
            data_have.append("・チュロ(ショコラ)");
            if (misChuro[2] == false) churo_count+= 1;
            misChuro[2] = true;
            break;
          case 12:
            data_have.append("・チュロ(デミぽて)");
            if (misChuro[3] == false) churo_count+= 1;
            misChuro[3] = true;
            break;
          }
          t_m += 5;
          if(t_m > 60){
            t_m = 0;
            t_h += 1;
          }
          kane.play();
          kane.rewind();
          choose = 0;
        }
        food = false;
      }
      if (have == true) {
        if (have_k == 0 && data_have.size() > 0) {
          HP+= 300;
          if (HP > 1000) HP = 1000;
          data_have.remove(choose);
          cure.play();
          cure.rewind();
        } else if (have_k == 1 && pass_num > 0 && pass == false) {
          pass_num--;
          pass = true;
          faspas.play();
          faspas.rewind();
        }
      }
      if (HP < 1 && data_have.size() < 1) {
        if (choose == 1) {
          HP+=500;
          t_m += 30;
          nomal = true;
        }
      }
      if (eve == true) {
        if (eve_k == 9 && s_c > 100) {
          tei.setGain(-400 + mx * 2);
          m_stop = true;
          s_fin = true;
          tei.play();
          tei.rewind();
        }
      }
    }
  }
}
