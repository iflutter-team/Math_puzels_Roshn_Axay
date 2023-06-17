import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DataPage extends GetxController {
  static double? tHeight, height, width, tp, bop;

  SharedPreferences? ps;
  int level2 = 0;
  static List<String> wList = List.filled(75, "pending");
  static List<String> sList = List.filled(75, "pending");
  bool lod = false;

  get() async {
    ps = await SharedPreferences.getInstance();

    level2 = ps!.getInt("level") ?? 0;
    print("level=$level2");
    for (int i = 0; i < level2; i++) {
      String? win = ps!.getString("win$i") ?? "pending";
      String? skip = ps!.getString("skip$i") ?? "pending";
      print("level=$i\twin=$win\tskip=$skip");
      wList[i] = win;
      sList[i] = skip;
    }
    lod = true;

    print(wList);
    print(sList);
  }

  @override
  void onInit() {
    super.onInit();
    get();
  }

  DataPage(BuildContext context) {
    tHeight = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    tp = MediaQuery.of(context).padding.top;
    bop = MediaQuery.of(context).padding.bottom;
    height = tHeight! - bop!;
  }

  static List<String> question = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
    "11",
    "12",
    "13",
    "14",
    "15",
    "16",
    "17",
    "18",
    "19",
    "20",
    "21",
    "22",
    "23",
    "24",
    "25",
    "26",
    "27",
    "28",
    "29",
    "30",
    "31",
    "32",
    "33",
    "34",
    "35",
    "36",
    "37",
    "38",
    "39",
    "40",
    "41",
    "42",
    "43",
    "44",
    "45",
    "46",
    "47",
    "48",
    "49",
    "50",
    "51",
    "52",
    "53",
    "54",
    "55",
    "56",
    "57",
    "58",
    "59",
    "60",
    "61",
    "62",
    "63",
    "64",
    "65",
    "66",
    "67",
    "68",
    "69",
    "70",
    "71",
    "72",
    "73",
    "74",
  ];
  static List<String> answer = [
    "10",
    /*1*/
    "25",
    /*2*/
    "6",
    /*3*/
    "14",
    /*4*/
    "128",
    /*5*/
    "7",
    /*6*/
    "50",
    /*7*/
    "1025",
    /*8*/
    "100",
    /*9*/
    "3",
    /*10*/
    "212",
    /*11*/
    "3011",
    /*12*/
    "14",
    /*13*/
    "16",
    /*14*/
    "1",
    /*15*/
    "2",
    /*16*/
    "44",
    /*17*/
    "45",
    /*18*/
    "625",
    /*19*/
    "1",
    /*20*/
    "13",
    /*21*/
    "47",
    /*22*/
    "50",
    /*23*/
    "34",
    /*24*/
    "6",
    /*25*/
    "41",
    /*26*/
    "16",
    /*27*/
    "126",
    /*28*/
    "82",
    /*29*/
    "14",
    /*30*/
    "7",
    /*31*/
    "132",
    /*32*/
    "34",
    /*33*/
    "48",
    /*34*/
    "42",
    /*35*/
    "288",
    /*36*/
    "45",
    /*37*/
    "4",
    /*38*/
    "111",
    /*39*/
    "47",
    /*40*/
    "15",
    /*41*/
    "87",
    /*42*/
    "22",
    /*43*/
    "253",
    /*44*/
    "12",
    /*45*/
    "48",
    /*46*/
    "178",
    /*47*/
    "1",
    /*48*/
    "6",
    /*49*/
    "10",
    /*50*/
    "2",
    /*51*/
    "20",
    /*52*/
    "7",
    /*53*/
    "5",
    /*54*/
    "143547",
    /*55*/
    "84",
    /*56*/
    "11",
    /*57*/
    "27",
    /*58*/
    "3",
    /*59*/
    "5",
    /*60*/
    "39",
    /*61*/
    "31",
    /*62*/
    "10",
    /*63*/
    "130",
    /*64*/
    "22",
    /*65*/
    "3",
    /*66*/
    "14",
    /*67*/
    "42",
    /*68*/
    "164045",
    /*69*/
    "11",
    /*70*/
    "481",
    /*71*/
    "86",
    /*72*/
    "84",
    /*73*/
    "13",
    /*74*/
    "8", /*75*/
  ];
}

//(1, "10:Sum");
//(2, "25:Multiply");
//(3, "6:6*5=30");
//(4, "14:Count the squares");
//(5, "128:Try multiplication");
//(6, "7:Look at the difference of two numbers");
//(7, "50:Apply BODMAS");
//(8, "1025:Split 21 into 2 and 1");
//(9, "100:4 = 2*2");
//(10, "3:Diagonal Sum");
//(11, "212:Split 28 into 2 and 8");
//(12, "3011:");
//(13, "14:Apply BODMAS");
//(14, "16:64 = 8*8");
//(15, "1:Look at the sum of each row");
//(16, "2");
//(17, "44:Look 2,1 in reverse");
//(18, "45: 2,1 is 21 and 12");
//(19, "625:Square and Cube");
//(20, "1:Diagonal Sum");
//(21, "13");
//(22, "47: 7 = 6 + 2 - 1");
//(23, "50");
//(24, "34:Square and Sum");
//(25, "6");
//(26, "41: 5 = 12 - 7");
//(27, "16");
//(28, "126");
//(29, "82");
//(30, "14: Combination of multiplication and division");
//(31, "7");
//(32, "132");
//(33, "34");
//(34, "48");
//(35, "42");
//(36, "288");
//(37, "45");
//(38, "4");
//(39, "111");
//(40, "47");
//(41, "15,27");
//(42, "87:Rotate the screen by 180 degree");
//(43, "22");
//(44, "253:Z");
//(45, "12");
//(46, "48");
//(47, "178");
//(48, "1");
//(49, "6:Square root of 36 is 6");
//(50, "10");
//(51, "2");
//(52, "20");
//(53, "7");
//(54, "5");
//(55, "143547");
//(56, "84");
//(57, "11");
//(58, "27");
//(59, "3");
//(60, "5");
//(61, "39");
//(62, "31");
//(63, "10");
//(64, "130");
//(65, "22");
//(66, "3");
//(67, "14");
//(68, "42");
//(69, "164045");
//(70, "11");
//(71, "481");
//(72, "86");
//(73, "84");
//(74, "13");
//(75, "8");
