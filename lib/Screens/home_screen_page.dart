import 'package:flutter/material.dart';
import 'package:mogab/navigator.dart';
import 'package:mogab/widgets/Recomended_Container.dart';

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({super.key});

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 12, right: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TimeOfDay.now().hour < 12
                    ? _text(
                        title: "Good Morning",
                      )
                    : TimeOfDay.now().hour < 18
                        ? _text(title: "Good Afternoon")
                        : _text(title: "Good Evening"),
                const Text(
                  "We Wish you have a good day",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          Image(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/images/mogabelt.png"),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                  backgroundColor:
                                      const Color.fromARGB(255, 68, 57, 153),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 16),
                                ),
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          title: const Text("Coming Soon"),
                                          alignment: Alignment.center,
                                          actions: [
                                            TextButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: const Text(
                                                  "Okay",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w800),
                                                ))
                                          ],
                                        );
                                      });
                                },
                                child: const Text(
                                  "Buy it Now !!",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                )),
                          )
                        ]),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          const Image(
                            width: double.infinity,
                            fit: BoxFit.cover,
                            image: AssetImage(
                              "assets/images/chatwithourbot.png",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                  backgroundColor: Colors.deepOrangeAccent,
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 16),
                                ),
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return const BottomNavBarPage();
                                  }));
                                },
                                child: const Text(
                                  "Chat With Ai",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                )),
                          )
                        ]),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/mangeBreath.png"),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Mange Your Breathing",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "Meditation 7 : 10 MIN ",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.play_circle,
                              color: Colors.white,
                              size: 50,
                            ))
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 18),
                Text(
                  "Recommended For You",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 12),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      RecomendedContainer(
                        imgUrl: 'assets/images/Focus.png',
                        title: "Foucs",
                        subTitle: "Meditation 3 : 10 MIN",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      RecomendedContainer(
                        imgUrl: "assets/images/whitenoise.png",
                        title: "White Noise",
                        subTitle: "Meditation 3 : 10 MIN",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      RecomendedContainer(
                        imgUrl: "assets/images/whitenoise.png",
                        title: "White Noise",
                        subTitle: "Meditation 3 : 10 MIN",
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

late String title;
Widget _text({required String title}) {
  return Text("$title",
      style: TextStyle(
        color: Colors.black,
        fontSize: 32,
        fontWeight: FontWeight.w500,
      ));
}
