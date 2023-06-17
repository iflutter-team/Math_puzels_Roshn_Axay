import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mathspuzzel/utils/asset_res.dart';

Widget levelBg() {
  return Container(
    height: Get.height,
    width: Get.width,
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage(
          AssetRes.bgImage,
        ),
        fit: BoxFit.fill,
      ),
    ),
    child: Column(
      children: [
        const SizedBox(height: 50),
        const Image(
          image: AssetImage(AssetRes.pImage),
        ),
        SizedBox(
          height: Get.height * 0.75,
          width: Get.width,
          child: GridView.builder(
            padding: const EdgeInsets.only(left: 10, right: 10),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 5,
                mainAxisSpacing: 10,
                childAspectRatio: 1.2),
            itemCount: 75,
            itemBuilder: (context, index) {
              return Container(
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(AssetRes.boxOpen),
                    ),
                  ),
                  child: Text(
                    "${index + 1}",
                    style: TextStyle(
                      fontFamily: "chalk",
                      color: Colors.white,
                      fontSize: Get.width * 0.07,
                      fontWeight: FontWeight.bold,
                    ),
                  ));
            },
          ),
        ),
      ],
    ),
  );
}
/*

class LevelPage extends StatefulWidget {
  @override
  _LevelPageState createState() => _LevelPageState();
}

class _LevelPageState extends State<LevelPage> {
  SharedPreferences? ps;
  int level2 = 0;
  static List<String> wList = List.filled(75, "pending");
  static List<String> sList = List.filled(75, "pending");
  bool lod = false;

  get() async {
    ps = await SharedPreferences.getInstance();
    setState(() {
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
    });

    print(wList);
    print(sList);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    get();
  }

  @override
  Widget build(BuildContext context) {
    DataPage(context);
    return Scaffold(
      body: lod
          ? Container(
              height: DataPage.height,
              width: double.infinity,
              decoration: const BoxDecoration(
                  // color: Colors.black
                  image: DecorationImage(
                      image: AssetImage(
                        "Pic/1bg.jpg",
                      ),
                      fit: BoxFit.fill)),
              child: Column(
                children: [
                  Container(
                    height: DataPage.height! * 0.25,
                    width: double.infinity,
                    padding: EdgeInsets.fromLTRB(
                        DataPage.width! * 0.1,
                        DataPage.height! * 0.05,
                        DataPage.width! * 0.1,
                        DataPage.height! * 0.02),
                    child: const Image(
                      image: AssetImage("Pic/p.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    height: DataPage.height! * 0.75,
                    width: double.infinity,
                    // color: Colors.orange,
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 5,
                              mainAxisSpacing: 20,
                              childAspectRatio: 1.6),
                      itemCount: 75,
                      itemBuilder: (context, index) {
                        if (wList[index] == "yes") {
                          return Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.only(right: 6),
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("Pic/box-open.png"))),
                            child: InkWell(
                              onTap: () {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(
                                  builder: (context) {
                                    return PlayPage(index);
                                  },
                                ));
                              },
                              child: Container(
                                  height: double.infinity,
                                  width: double.infinity,
                                  alignment: Alignment.center,
                                  padding: const EdgeInsets.only(
                                    left: 5,
                                    top: 10,
                                  ),
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                    image:
                                        AssetImage("Pic/ic_loss_star_big1.png"),
                                    fit: BoxFit.fill,
                                  )),
                                  child: Text(
                                    "${index + 1}",
                                    style: TextStyle(
                                      fontFamily: "chalk",
                                      color: const Color(0xff7f181b),
                                      fontSize: DataPage.width! * 0.07,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )),
                            ),
                          );
                        }
                        if (sList[index] == "yes") {
                          return Container(
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("Pic/box-open.png"))),
                            child: InkWell(
                              onTap: () {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(
                                  builder: (context) {
                                    return PlayPage(index);
                                  },
                                ));
                              },
                              child: Container(
                                  height: double.infinity,
                                  width: double.infinity,
                                  alignment: Alignment.center,
                                  padding: const EdgeInsets.only(
                                    left: 10,
                                    top: 10,
                                  ),
                                  child: Text(
                                    "${index + 1}",
                                    style: TextStyle(
                                      fontFamily: "chalk",
                                      color: const Color(0xfffcac70),
                                      fontSize: DataPage.width! * 0.07,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )),
                            ),
                          );
                        }
                        if (index == level2) {
                          return Container(
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("Pic/box-open.png"))),
                            child: InkWell(
                              onTap: () {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(
                                  builder: (context) {
                                    return PlayPage(index);
                                  },
                                ));
                              },
                              child: Container(
                                  height: double.infinity,
                                  width: double.infinity,
                                  alignment: Alignment.center,
                                  padding: const EdgeInsets.only(
                                    left: 10,
                                    top: 10,
                                  ),
                                  child: Text(
                                    "${index + 1}",
                                    style: TextStyle(
                                      fontFamily: "chalk",
                                      color: const Color(0xfffcac70),
                                      fontSize: DataPage.width! * 0.07,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )),
                            ),
                          );
                        }
                        return Container(
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("Pic/box-open.png"))),
                          child: Image.asset("Pic/box-close.png"),
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}

 */
