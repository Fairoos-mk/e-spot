import 'package:e_spot/list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class e_spot extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List<Color>Clrs=[
      Color.fromARGB(255, 246, 111,58),
      Color.fromARGB(255, 36, 131,233),
      Color.fromARGB(255, 63, 208,143),
    ];
    var imageList=[
      "assets/ig 1.png",
      "assets/ig 3.png",
      "assets/ig 2.png",
    ];
    var iconImageList=[
      "assets/icon1.png",
      "assets/icon2.png",
      "assets/icon3.png",
      "assets/icon4.png",
      "assets/icon5.png",
      "assets/icon6.png",
      "assets/icon7.png",

    ];
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20,left: 15,right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              ],
            ),
          ),
         SizedBox(
           height: 30,
         ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 15),
            child: Row(
              children: [
                for(int i=0;i<3;i++)
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    padding: EdgeInsets.only(left: 10),
                    width: MediaQuery.of(context).size.width/1.5,
                    height: MediaQuery.of(context).size.height/5.5,
                    decoration: BoxDecoration(
                      color: Clrs[i],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Special Offers",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                              Container(
                                height: 33,
                                width: 70,
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text(
                                    "Buy",
                                    style: TextStyle(
                                      color: Colors.redAccent,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Image.asset(
                          imageList[i],
                          height: 190,
                          width: 130,
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(height: 10),
          GridItems()
        ],
      ),
    );
  }
}