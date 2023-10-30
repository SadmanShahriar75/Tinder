import 'package:flutter/material.dart';
import 'package:task1/friends.dart';
import 'package:task1/widgets/custom_activites_listtile.dart';

import 'package:task1/widgets/custom_messages_listtile.dart';

class Messages extends StatelessWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Padding(
            padding:  EdgeInsets.only(left: 20),
            child: Text(
              'Messages',
              style: TextStyle(
                color: Colors.black,
                fontSize: 27,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Container(
                width: 52,
                height: 52,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFFE8E6EA)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Image.asset("assets/images/setting.png"),
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (contex) => const Friends()));
                  },
                  child: Container(
                    width: 295,
                    height: 48,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.asset("assets/icons/search.png"),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            'Search',
                            style: TextStyle(
                              color: Color.fromARGB(255, 68, 66, 66),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              //search done//

              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Activities',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),

              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 18,
                  itemBuilder: (BuildContext context, int index) {
                    return const CustomActivitiesListTile();
                  },
                ),
              ),

              const Padding(
                padding:  EdgeInsets.only(left: 20),
                child: Text(
                  'Messages',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              /////////////////////////////

              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 20,
                  itemBuilder: (_, index) {
                    return const CustomMessageListTile();
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
