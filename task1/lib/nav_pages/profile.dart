import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 375,
                  height: 455,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/women.png"),
                        fit: BoxFit.fill),
                  ),
                ),
                Positioned(
                  top: 410,
                  child: Container(
                    height: 400,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        )),
                  ),
                ),
                Positioned(
                  top: 360,
                  left: 40,
                  child: Row(
                    children: [
                      Container(
                        width: 78,
                        height: 78,
                        decoration: const ShapeDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage("assets/icons/close-small.png")),
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
                     const  SizedBox(
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
                    const   SizedBox(
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
                )
              ],
            ),
            const SizedBox(
              height: 80,
            ),

            ///////////////////////     stack done  ////////////////////////////////////////S
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Jessica Parker, 23',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Container(
                            width: 52,
                            height: 52,
                            decoration: ShapeDecoration(
                              image:  const DecorationImage(
                                  image: AssetImage("assets/icons/send.png")),
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 1, color: Color(0xFFE8E6EA)),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          )
                        ],
                      ),
                      Text(
                        'Proffesional model',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.699999988079071),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                 const SizedBox(
                    height: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        const  Text(
                            'Location',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Sk-Modernist',
                              fontWeight: FontWeight.w700,
                              height: 0.09,
                            ),
                          ),
                          Container(
                            width: 61,
                            height: 34,
                            decoration: ShapeDecoration(
                              color: const Color.fromARGB(255, 250, 230, 232),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/icons/local-two.png"),
                              const  Text(
                                  '1 km',
                                  style: TextStyle(
                                    color: Color(0xFFE94057),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Chicago, IL United States',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.699999988079071),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                 const SizedBox(
                    height: 30,
                  ),

                const  Text(
                    'About',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Sk-Modernist',
                      fontWeight: FontWeight.w700,
                      height: 0.09,
                    ),
                  ),
                 const SizedBox(
                    height: 10,
                  ),

                  Text(
                    'My name is Jessica Parker and I enjoy meeting new people and finding ways to help them have an uplifting experience. I enjoy reading..',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.699999988079071),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    maxLines: 3,
                  ),

                const  Text(
                    'Read more',
                    style: TextStyle(
                      color: Color(0xFFE94057),
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),

                 const SizedBox(
                    height: 30,
                  ),
                const  Text(
                    'Interests',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                 const SizedBox(
                    height: 10,
                  ),

                  Row(
                    children: [
                      Container(
                        width: 100,
                        height: 32,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side:
                              const  BorderSide(width: 1, color: Color(0xFFE94057)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset("assets/icons/done-all.png"),
                           const Text(
                              'Travelling',
                              style: TextStyle(
                                color: Color(0xFFE94057),
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                            )
                          ],
                        ),
                      ),
                     const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 80,
                        height: 32,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side:
                               const BorderSide(width: 1, color: Color(0xFFE94057)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset("assets/icons/done-all.png"),
                          const  Text(
                              'Books',
                              style: TextStyle(
                                color: Color(0xFFE94057),
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                            )
                          ],
                        ),
                      ),
                    const  SizedBox(
                        width: 8,
                      ),
                      Container(
                        width: 92,
                        height: 32,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side:
                                const BorderSide(width: 1, color: Color(0xFFE8E6EA)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'Music',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Sk-Modernist',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                 const SizedBox(
                    height: 10,
                  ),

                  Row(children: [
                    Container(
                      width: 100,
                      height: 32,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side:  const BorderSide(width: 1, color: Color(0xFFE8E6EA)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child:  const Center(
                        child: Text(
                          'Dancing',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 92,
                      height: 32,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side:  const BorderSide(width: 1, color: Color(0xFFE8E6EA)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          'Modeling',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Sk-Modernist',
                            fontWeight: FontWeight.w400,
                            height: 0.11,
                          ),
                        ),
                      ),
                    ),
                  ]),
                  const SizedBox(
                    height: 30,
                  ),

                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Gallery',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        'See all',
                        style: TextStyle(
                          color: Color(0xFFE94057),
                          fontSize: 14,
                          fontFamily: 'Sk-Modernist',
                          fontWeight: FontWeight.w700,
                          height: 0.11,
                        ),
                      )
                    ],
                  ),

                  const SizedBox(
                    height: 10,
                  ),

                  Row(
                    children: [
                      Container(
                        width: 142,
                        height: 190,
                        decoration: ShapeDecoration(
                          image: const DecorationImage(
                            image: AssetImage("assets/images/max1.png"),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 143,
                        height: 190,
                        decoration: ShapeDecoration(
                          image: const DecorationImage(
                            image: AssetImage("assets/images/max2.png"),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      )
                    ],
                  ),

                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 92,
                        height: 122,
                        decoration: ShapeDecoration(
                          image: const DecorationImage(
                            image: AssetImage("assets/images/max3.png"),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                      Container(
                        width: 91,
                        height: 122,
                        decoration: ShapeDecoration(
                          image:  const DecorationImage(
                            image: AssetImage("assets/images/max4.png"),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                      Container(
                        width: 92,
                        height: 122,
                        decoration: ShapeDecoration(
                          image:  const DecorationImage(
                            image: AssetImage("assets/images/max5.png"),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      )
                    ],
                  ),

                  ///////////////////////////////////////////////////////

                  const SizedBox(
                    height: 60,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
