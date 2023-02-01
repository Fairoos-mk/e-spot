import 'package:flutter/material.dart';

import 'detailspage.dart';

class GridItems extends StatelessWidget {
  var pNames=[
    "AppleWatchM2",
    "EarHeadphone",
    "NikeShoe",
    "WhiteTshirt",
    "Bag",
    "chappal",
    "Ladieswatch",
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: pNames.length,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap:  true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.7,
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index){
          return Container(
            height: 400,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0XFFD4ECF7),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 4,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "30% off",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                      Icon(Icons.favorite, color: Colors.redAccent),
                    ],
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>ItemScreen()));
                      },
                      child: Image.asset(
                        "assets/${pNames[index]}.png",
                        height: 80,
                        width: 80,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          pNames[index],
                          style: TextStyle(
                            fontSize:  15,
                            color: Colors.black.withOpacity(0.8),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Text(
                              "\$100",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.redAccent,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              "\$130",
                              style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                fontSize: 13,
                                color: Colors.black.withOpacity(0.4),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }
    );
  }
}