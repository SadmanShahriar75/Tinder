import 'package:flutter/material.dart';

class CustomMessageListTile extends StatelessWidget {
  const CustomMessageListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 70,
        width: 350,
        decoration: const BoxDecoration(),
        child: ListTile(
          leading: Padding(
            padding: const EdgeInsets.only(
              right: 5,
            ),
            child: Container(
              height: 60,
              width: 60,
              decoration:  BoxDecoration(
                border: Border.all(width: 3, color: const Color.fromARGB(110, 255, 109, 64)),
                  shape: BoxShape.circle,
                  image: const  DecorationImage(
                      image: AssetImage("assets/images/cuty.webp"),
                      fit: BoxFit.fill)),
            ),
          ),
          title: const Text(
            'Emelie',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
          subtitle: const Text(
            'Sticker 😍',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          trailing: const Text(
            '23 min',
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Color(0xFFADAFBB),
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
