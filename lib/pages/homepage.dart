import 'package:flutter/material.dart';
import 'package:gdg_app/models/navbar.dart';

class Homepage extends StatefulWidget {
  Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int myIndex = 0;
  int selectCat = 0;
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Welcome', style: TextStyle(fontSize: 12, color: Colors.grey)),
            Text('UserName'),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications_rounded))
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: searchController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15)),
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    prefixIcon: Icon(Icons.search_rounded),
                    hintText: 'Search Upcoming Events, Workshops',
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 6),
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                          colors: [Colors.black, Colors.grey.shade700],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter)),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.tune_rounded,
                        color: Colors.white,
                      ))),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * .25,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: selectCat == 0
                          ? LinearGradient(
                              colors: [Colors.black, Colors.grey.shade700],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter)
                          : LinearGradient(
                              colors: [
                                  Colors.grey.shade200,
                                  Colors.grey.shade200
                                ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter)),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        selectCat = 0;
                      });
                    },
                    child: Text(
                      "Hackathon",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: selectCat == 0 ? Colors.white : Colors.grey),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * .2,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: selectCat == 1
                          ? LinearGradient(
                              colors: [Colors.black, Colors.grey.shade700],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter)
                          : LinearGradient(
                              colors: [
                                  Colors.grey.shade200,
                                  Colors.grey.shade200
                                ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter)),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        selectCat = 1;
                      });
                    },
                    child: Text(
                      "Web",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: selectCat == 1 ? Colors.white : Colors.grey),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * .225,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: selectCat == 2
                          ? LinearGradient(
                              colors: [Colors.black, Colors.grey.shade700],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter)
                          : LinearGradient(
                              colors: [
                                  Colors.grey.shade200,
                                  Colors.grey.shade200
                                ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter)),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        selectCat = 2;
                      });
                    },
                    child: Text(
                      "Mobile",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: selectCat == 2 ? Colors.white : Colors.grey),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * .2,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: selectCat == 3
                          ? LinearGradient(
                              colors: [Colors.black, Colors.grey.shade700],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter)
                          : LinearGradient(
                              colors: [
                                  Colors.grey.shade200,
                                  Colors.grey.shade200
                                ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter)),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        selectCat = 3;
                      });
                    },
                    child: Text("Events",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color:
                                selectCat == 3 ? Colors.white : Colors.grey)),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "DUHacks 4.0 Updates",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "See more",
                      style: TextStyle(color: Colors.grey),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width * .75,
            child: ListView.builder(
                padding: EdgeInsets.all(8),
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                      margin: EdgeInsets.all(8),
                      width: MediaQuery.of(context).size.width * .55,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.black87, Colors.grey.shade200],
                              stops: [0, .65],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(
                              image: AssetImage("assets/bgRemoveGDG.png"),
                              fit: BoxFit.cover)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 2, horizontal: 6),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.grey[400]),
                                child: Text(
                                  "Posted On 10/05/2024",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 4.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "DU Hacks Winning Price",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.5,
                                        letterSpacing: .5),
                                  ),
                                  Text(
                                    "Discover how winning a hackathon can catapult your career and wallet.",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 8, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ));
                }),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Past Events",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "See more",
                      style: TextStyle(color: Colors.grey),
                    )),
              ],
            ),
          ),
          ListView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.all(8),
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  height: 100,
                  child: Row(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 2,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.shade100),
                          child: Image.asset(
                            "assets/bgRemoveGDG.png",
                            fit: BoxFit.fitHeight,
                          )),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "DU Hacks ${index + 1}.0",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Organized in",
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 14),
                                ),
                                Text(
                                  "${index + 2022}",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 14),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              })
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, -1),
            ),
          ],
        ),
        child: BottomNavigationBar(
            backgroundColor: Colors.white,
            elevation: 12,
            onTap: (index) {
              setState(() {
                myIndex = index;
              });
            },
            currentIndex: myIndex,
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.black,
            // fixedColor: Colors.black,
            showSelectedLabels: true,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_rounded),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today_outlined),
                label: 'Calendar',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings_rounded),
                label: 'Setting',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_rounded),
                label: 'Profile',
              )
            ]),
      ),
    );
  }
}
