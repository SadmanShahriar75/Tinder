

// ignore: unnecessary_import
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tinder_swipe/flutter_tinder_swipe.dart';
  






class SwipeRight  extends StatefulWidget {
  @override
  State<SwipeRight> createState() => _SwipeRightState();
}

class _SwipeRightState extends State<SwipeRight> {
  CardController controller = CardController();

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: new Scaffold(
        body:  Center(
          child: _showPrefListData(size, controller),
        ),
      ),
    );
  }

  _showPrefListData(Size size, CardController cardController) {
    return Column(
      
      
      children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 20,right: 20),
            child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 52,
                      height: 52,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 1, color: Color(0xFFE8E6EA)),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.deepOrange,
                      ),
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Discover",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold)),
                        Text("Chicago, II"),
                      ],
                    ),
                    Container(
                      width: 52,
                      height: 52,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 1, color: Color(0xFFE8E6EA)),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: const Icon(
                        Icons.tune,
                        color: Colors.deepOrange,
                        size: 33,
                      ),
                    )
                  ],
                ),
          ),
          /////////////////////////////////////////////////////////////
        Center(
          child: Container(
            margin: const EdgeInsets.only(top: 40),
            height: size.height * 0.5,
            child: SwipeCard(
              swipeEdgeVertical: 8.0,
              animDuration: 500,
              totalNum: 3,
              stackNum: 3,
              swipeEdge: 2.0,
              allowVerticalMovement: false,
              maxWidth: MediaQuery.of(context).size.width * 1,
              minWidth: MediaQuery.of(context).size.width * 0.8,
              minHeight: MediaQuery.of(context).size.width + 120 * 0.88,
              maxHeight: MediaQuery.of(context).size.width + 120 * 0.99,
              cardBuilder: (context, index) => Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: FadeInImage(
                              fit: BoxFit.cover,
                              height: MediaQuery.of(context).size.height * 1,
                              width: MediaQuery.of(context).size.width,
                              image: AssetImage(
                                imageItems[index]['image'],
                              ),
                              placeholder: AssetImage(
                                imageItems[index]['image'],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              width: double.infinity,
                              height: size.height * 0.15,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                                color: Colors.white,
                                gradient: new LinearGradient(
                                    colors: [
                                      Colors.transparent,
                                      Colors.black45,
                                    ],
                                    begin: const FractionalOffset(1.0, 0.0),
                                    end: const FractionalOffset(0.0, 1.0),
                                    stops: [0.0, 1.0],
                                    tileMode: TileMode.clamp),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Kylie Jean | Age 25
                                    Text("Kylie Jean , 23",
                                        style: TextStyle(
                                            color: const Color(0xffffffff),
                                            fontWeight: FontWeight.w400,
                                            fontSize: size.width * 0.08),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left),
                                    Text(
                                      'Marketer',
                                      style: TextStyle(
                                          color: const Color(0xffffffff),
                                          fontWeight: FontWeight.w400,
                                          fontSize: size.width * 0.04),
                                      textAlign: TextAlign.center,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ))),
              cardController: cardController,
              swipeUpdateCallback:
                  (DragUpdateDetails details, Alignment align) {
                /// Get swiping card's alignment
                if (align.x < 0) {
                  //Card is LEFT swiping
    
                } else if (align.x > 0) {
                  //Card is RIGHT swiping
    
                }
              },
              swipeCompleteCallback:
                  (CardSwipeOrientation orientation, int index) {},
            ),
          ),
        ),
    
    
        ////////////////////////////////////////
        SizedBox(height: 20,),
       
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 78,
                    height: 78,
                    decoration: const ShapeDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/icons/close-small.png")),
                      color: Colors.white,
                      shape: OvalBorder(),
                      shadows: [
                        BoxShadow(
                          color: Color(0x11000000),
                          blurRadius: 50,
                          offset: Offset(0, 20),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 99,
                    height: 99,
                    decoration: const ShapeDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/icons/like.png")),
                      color: Color(0xFFE94057),
                      shape: OvalBorder(),
                      shadows: [
                        BoxShadow(
                          color: Color(0x33E94057),
                          blurRadius: 15,
                          offset: Offset(0, 15),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 78,
                    height: 78,
                    decoration: const ShapeDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/icons/star.png")),
                      color: Colors.white,
                      shape: OvalBorder(),
                      shadows: [
                        BoxShadow(
                          color: Color(0x11000000),
                          blurRadius: 50,
                          offset: Offset(0, 20),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                  ),
                ],
              ),
       
      ],
    );
  }

  List<dynamic> imageItems = [
    {
      "image": "assets/images/rose.png",
    },
    {
     "image": "assets/images/cuty.webp",
    },
    {
    "image": "assets/images/women.png",
    },
    {
    "image": "assets/images/cuty.webp",
    },
  ];
}