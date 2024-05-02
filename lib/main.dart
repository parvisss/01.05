import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 61,
              left: 31,
              child: Row(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Find Your',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Favorite Food',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 130),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/images/notification.png'),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 160,
              left: 25,
              child: Search(),
            ),
            Positioned(
              top: 304,
              left: 31,
              child: Menu(),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Container(
                height: 60,
                width: 105,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color.fromARGB(255, 193, 241, 212),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset("assets/images/home_bar_1.png"),
                    ),
                    const Text("Home")
                  ],
                ),
              ),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: Image(image: AssetImage("assets/images/home_bar_2.png")),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: Image(image: AssetImage("assets/images/home_bar_3.png")),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: Image(
                image: AssetImage("assets/images/home_bar_4.png"),
              ),
              label: "",
            ),
          ],
        ),
      ),
    );
  }
}

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: 265,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 247, 236, 223),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/images/search.png"),
                    iconSize: 15,
                  ),
                  const SizedBox(width: 19),
                  const Text(
                    "What do you want to order?",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFDA6317)),
                  )
                ],
              ),
            ),
            const SizedBox(width: 19),
            Container(
              width: 49,
              height: 50,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 247, 236, 223),
                  borderRadius: BorderRadius.circular(15)),
              child: IconButton(
                onPressed: () {},
                icon: Image.asset(
                  "assets/images/on_off.png",
                  fit: BoxFit.contain,
                ),
                iconSize: 24,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 44,
              width: 92,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 247, 236, 223),
                  borderRadius: BorderRadius.circular(15)),
              child: Center(
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Soup X",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color(0xFFDA6317)),
                      ))),
            ),
          ],
        )
      ],
    );
  }
}

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Popular Menu",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
        ),
        const SizedBox(height: 20),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 10,
                offset: Offset(0, 3),
              )
            ],
            borderRadius: BorderRadius.circular(22),
          ),
          width: 343,
          height: 401,
          child: ListView(
            children: [
              ListTile(
                title: Container(
                  height: 87,
                  width: 343,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      )
                    ],
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 64,
                        width: 64,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage("assets/images/list_1.png"))),
                      ),
                      const SizedBox(width: 21),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Herbal Pancake",
                            style: TextStyle(
                                fontWeight: FontWeight.w800, fontSize: 15),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "Warung Herbal",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 14),
                          ),
                        ],
                      ),
                      const SizedBox(width: 58),
                      const Text(
                        "\$7",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22),
                      )
                    ],
                  ),
                ),
              ),
              ListTile(
                title: Container(
                  height: 87,
                  width: 323,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      )
                    ],
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 64,
                        width: 64,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage("assets/images/list_2.png"))),
                      ),
                      const SizedBox(width: 21),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Fruit Salad",
                            style: TextStyle(
                                fontWeight: FontWeight.w800, fontSize: 15),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "Wijie Resto",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 14),
                          ),
                        ],
                      ),
                      const SizedBox(width: 90),
                      const Text(
                        "\$5",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22),
                      )
                    ],
                  ),
                ),
              ),
              ListTile(
                title: Container(
                  height: 87,
                  width: 323,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      )
                    ],
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 64,
                        width: 64,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage("assets/images/list_3.png"))),
                      ),
                      const SizedBox(width: 21),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Green Noddle",
                            style: TextStyle(
                                fontWeight: FontWeight.w800, fontSize: 15),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "Noodle Home",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 14),
                          ),
                        ],
                      ),
                      const SizedBox(width: 60),
                      const Text(
                        "\$15",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22),
                      )
                    ],
                  ),
                ),
              ),
              ListTile(
                title: Container(
                  height: 87,
                  width: 323,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      )
                    ],
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 64,
                        width: 64,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage("assets/images/list_1.png"))),
                      ),
                      const SizedBox(width: 21),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Green Noddle",
                            style: TextStyle(
                                fontWeight: FontWeight.w800, fontSize: 15),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "Noodle Home",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 14),
                          ),
                        ],
                      ),
                      const SizedBox(width: 60),
                      const Text(
                        "\$22",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
