import 'package:flutter/material.dart';

class Friends extends StatelessWidget {
  const Friends({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: AppBar(
           
            actions: const [
              Padding(
                padding:  EdgeInsets.only(right: 40),
                child: Text(
                  'Skip',
                  style: TextStyle(
                    color: Color(0xFFE94057),
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              )
            ],
          )),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 80,
        ),
        child: Column(
          children: [
            Center(child: Image.asset("assets/images/People.png")),
           const  SizedBox(
              height: 60,
            ),
          const   Text(
              'Search friend’s',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40,right: 40),
              child: Text(
                'You can find friends from your contact lists\nto connected',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.699999988079071),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
           const  SizedBox(
              height: 130,
            ),
            Container(
              width: 295,
              height: 56,
              decoration: ShapeDecoration(
                color:const Color(0xFFE94057),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: const  Align(
                alignment: Alignment.center,
                child: Text(
                  'Access to a contact list',
               
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                   
                    fontWeight: FontWeight.w700,
                  
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
