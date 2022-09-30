import 'package:flutter/material.dart';
import 'package:practical/model/jar_model.dart';

class JarSection extends StatefulWidget {
  JarSection({Key? key}) : super(key: key);

  @override
  State<JarSection> createState() => _JarSectionState();
}

class _JarSectionState extends State<JarSection> {
  List jarHead = [
    'Bucket List Goals',
    'The inevitables',
    'Small luxuries of Life'
  ];

  List jarBody = [
    bucketJarData,
    inevitablesJarData,
    luxuryJarData,
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: Column(
        children: [
          SizedBox(
            height: 38,
            child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        gradient: LinearGradient(
                          colors: selectedIndex == index
                              ? [
                                  Color(0xff0160FE),
                                  Color(0xff0147CE),
                                ]
                              : [
                                  Colors.white,
                                  Colors.white,
                                ],
                        ),
                      ),
                      width: 127,
                      height: 38,
                      child: Padding(
                        padding: const EdgeInsets.all(11),
                        child: Center(
                          child: Text(
                            jarHead[index],
                            style: TextStyle(
                                fontSize: 12,
                                color: selectedIndex == index
                                    ? Colors.white
                                    : const Color(0xff333333)),
                          ),
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    width: 15,
                  );
                },
                itemCount: jarHead.length),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 120,
            child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      CircleAvatar(
                        radius: 38,
                        backgroundImage: AssetImage(
                          jarBody[selectedIndex][index].img,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        jarBody[selectedIndex][index].txt,
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    width: 15,
                  );
                },
                itemCount: bucketJarData.length),
          ),
        ],
      ),
    );
  }
}
