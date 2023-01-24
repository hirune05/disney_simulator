void hito() {
  fal();
  for (int i = 0; i < yazid.size(); i++) {
    if (yazid.get(i) <50) {
      go[i] = true;
      switch(gseq) {
      case 0:
        hito_set(318, 580);
        break;
      case 1:
        if (i==0) hito_set(400, 440);
        if (i==1) hito_set(104, 382);
        if (i==2) hito_set(280, 335);
        //if (i==2) hito_set(280, 600);
        break;
      case 2:
        if (i == 0) hito_set(321, 158);
        if (i == 1) hito_set(341, 622);
        if (i == 2) hito_set(346, 528);
        if (i == 3) hito_set(445, 299);
        if (i == 4) hito_set(205, 493);
        break;
      case 3:
        if (i == 0) hito_set(469, 436);
        if (i == 1) hito_set(318, 580);
        break;
      case 5:
        if (i == 0) hito_set(400, 400);
        break;
      case 6:
        if (i == 0) hito_set(170, 193);
        if (i == 1) hito_set(329, 400);
        break;
      case 7:
        if (i == 0) hito_set(260, 571);
        if (i == 1) hito_set(211, 164);
        if (i == 2) hito_set(329, 430);
        if (i == 3) hito_set(535, 204);
        println(i);
        break;
      case 8:
        if (i == 0) hito_set(104, 588);
        else if (i == 1) hito_set(346, 528);
        else if (i == 2) hito_set(329, 430);
        break;
      case 9:
        if (i == 0) hito_set(57, 289);
        else if (i == 1) hito_set(147, 435);
        break;
      case 10:
        if (i == 0) hito_set(323, 577);
        else if (i == 1) hito_set(185, 352);
        else if (i == 2) {
          hito_set(245, 151);
          eve_k = 0;
        }
        break;
      case 11:
        if (i == 0 || i== 1) hito_set(293, 227);
        else if (i == 2) hito_set(406, 198);
        break;
      case 12:
        if (i == 0) hito_set(386, 159);
        else if (i == 2) hito_set(241, 571);
        else if (i == 1 || i == 5) hito_set(242, 383);
        else if (i == 4 || i == 3) hito_set(160, 435);
        break;
      case 13:
        if (i == 0) hito_set(398, 201);
        else if (i == 1) hito_set(367, 614);
        else if (i == 2) hito_set(337, 150);
        break;
      case 14:
        if (i == 0) hito_set(406, 198);
        else if (i == 1) hito_set(172, 705);
        break;
      case 15:
        if (i == 0) hito_set(239, 171);
        if (i == 1) hito_set(115, 262);
        break;
      case 16:
        if (i == 0) hito_set(325, 160);
        else if (i == 1) hito_set(242, 238);
        else if (i == 2) hito_set(373, 578);
        else if (i == 3) hito_set(162, 414);
        break;
      case 17:
        if (i == 0) hito_set(444, 219);
        else if (i == 1) hito_set(243, 451);
        else if (i == 2) hito_set(490, 445);
        else if (i == 3) hito_set(426, 389);
        break;
      case 18:
        if (i == 0) hito_set(273, 240);
        else if (i == 1) hito_set(134, 452);
        break;
      case 19:
        if (i == 0) hito_set(457, 504);
        else if (i == 1) hito_set(138, 406);
        else if (i == 2) hito_set(473, 351);
        else if (i == 3) hito_set(186, 430);
        break;
      case 20:
        if (i == 0) hito_set(495, 417);
        else if (i == 1) hito_set(165, 135);
        break;
      case 21:
        if (i == 0) hito_set(452, 628);
        else if (i == 1) hito_set(485, 460);
        else if (i == 2) hito_set(477, 285);
        break;
      case 22:
        if (i == 0) hito_set(121, 569);
        else if (i == 1) hito_set(481, 363);
        else if (i == 2) hito_set(210, 154);
        else if (i == 3) hito_set(460, 613);
        break;
      case 23:
        if (i == 0) hito_set(191, 575);
        break;
      case 24:
        if (i == 0) hito_set(196, 588);
        else if (i == 1) hito_set(492, 342);
        else if (i == 2) hito_set(121, 569);
        break;
      case 25:
        if (i == 0) hito_set(231, 196);
        else if (i == 1) hito_set(182, 425);
        else if (i == 2) hito_set(351, 401);
        break;
        case 26:
        if (i == 0) hito_set(236, 330);
        else if (i == 1) hito_set(209, 166);
        else if (i == 2) hito_set(174, 255);
      default:
        break;
      }
    }
  }
}
