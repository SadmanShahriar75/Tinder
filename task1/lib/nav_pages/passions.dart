import 'package:flutter/material.dart';
import 'package:task1/widgets/custom_container.dart';

class Passions extends StatelessWidget {
  const Passions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 44, left: 40, right: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 52,
                  width: 52,
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 1, color: Color(0xFFE8E6EA)),
                          borderRadius: BorderRadius.circular(15))),
                  child: const Padding(
                    padding:  EdgeInsets.only(left: 8),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Color(0xFFE94057),
                    ),
                  ),
                ),
                const Text(
                  'Skip',
                  style: TextStyle(
                    color: Color(0xFFE94057),
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          ///////////////////        appbar done         //////////////////////
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Your interests',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 34,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                    'Select a few of your interests and let everyone know what you’re passionate about.',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.699999988079071),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ))
              ],
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          //////////////////////////       text done             ///////////////////////////////////

        
        
        
        
        
        
        
        
        
        
        const  CustomConatiner(),










        ],
      ),
    );
  }
}
