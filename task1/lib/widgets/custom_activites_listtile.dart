import 'package:flutter/material.dart';

class CustomActivitiesListTile extends StatelessWidget {
  const CustomActivitiesListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(left: 17, top: 10),
        child: Column(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                border: Border.all(width: 3, color: const Color.fromARGB(83, 223, 64, 251)),
                  shape: BoxShape.circle,
                  image:  const DecorationImage(
                      image: AssetImage("assets/images/women.png"),
                      fit: BoxFit.fill)),
            ),
           const  SizedBox(
              height: 5,
            ),
           const  Text(
              'Ava',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
