import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MainScreen()));
}

class MainScreen extends StatefulWidget {
  @override
  HomeScreen createState() => HomeScreen();
}

class HomeScreen extends State {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) => setState(() => _currentIndex = index),
            items: const [
              BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
              BottomNavigationBarItem(
                  label: "Explore", icon: Icon(Icons.search_sharp)),
              BottomNavigationBarItem(
                  label: "Profile", icon: Icon(Icons.person)),
            ],
          ),
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(80),
            child: Row(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 21),
                    child: Text(
                      "Hello @rjun",
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 21),
                    child: Text("Find Your Favourite Hotel",
                        style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
              const SizedBox(
                width: 68,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: const Image(
                    height: 60,
                    width: 60,
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://cdn.packhacker.com/2022/03/f7de0d9f-aer-travel-pack-3-side.jpg?auto=compress&auto=format&w=1110&h=740&fit=crop")),
              )
            ]),
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                child: Container(
                  decoration: const BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 6,
                      offset: Offset(3, 3),
                    ),
                  ]),
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.grey[300],
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(
                                width: 0, style: BorderStyle.none)),
                        prefixIcon: const Icon(Icons.search_sharp),
                        hintText: "Search For Hotel"),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 240),
                child: Text(
                  "Popular Hotel",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 200,
                child: ListView(
                  padding: const EdgeInsets.only(left: 20),
                  scrollDirection: Axis.horizontal,
                  children: [
                    Card(
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                              width: 0, style: BorderStyle.none)),
                      elevation: 10,
                      child: SizedBox(
                          width: 150,
                          child: Column(
                            children: [
                              const Image(
                                  fit: BoxFit.cover,
                                  height: 91,
                                  width: double.infinity,
                                  image: AssetImage(
                                      "assets/hotel_images/image1.png")),
                              const SizedBox(
                                height: 5,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 50),
                                child: Text(
                                  "Crown Plazza",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Colors.black),
                                ),
                              ),
                              const Text(
                                "A Five Star Hotel in Kochi",
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: const [
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "\$180 / night",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.blueAccent),
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Text(
                                    "4.5",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.blueAccent),
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 15,
                                    color: Colors.blueAccent,
                                  )
                                ],
                              )
                            ],
                          )),
                    ),
                    Card(
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                              width: 0, style: BorderStyle.none)),
                      elevation: 10,
                      child: SizedBox(
                          width: 150,
                          child: Column(
                            children: [
                              const Image(
                                  fit: BoxFit.cover,
                                  height: 91,
                                  width: double.infinity,
                                  image: AssetImage(
                                      "assets/hotel_images/image2.png")),
                              const SizedBox(
                                height: 5,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 52),
                                child: Text(
                                  "Hotel Marriot",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Colors.black),
                                ),
                              ),
                              const Text(
                                "A Five Star Hotel in Kochi",
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: const [
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "\$180 / night",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.blueAccent),
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Text(
                                    "4.5",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.blueAccent),
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 15,
                                    color: Colors.blueAccent,
                                  )
                                ],
                              )
                            ],
                          )),
                    ),
                    Card(
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                              width: 0, style: BorderStyle.none)),
                      elevation: 10,
                      child: SizedBox(
                          width: 150,
                          child: Column(
                            children: [
                              const Image(
                                  fit: BoxFit.cover,
                                  height: 91,
                                  width: double.infinity,
                                  image: AssetImage(
                                      "assets/hotel_images/image3.png")),
                              const SizedBox(
                                height: 5,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 73),
                                child: Text(
                                  "Holiday In",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Colors.black),
                                ),
                              ),
                              const Text(
                                "A Five Star Hotel in Kochi",
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: const [
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "\$180 / night",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.blueAccent),
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Text(
                                    "4.5",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.blueAccent),
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 15,
                                    color: Colors.blueAccent,
                                  )
                                ],
                              )
                            ],
                          )),
                    ),
                    Card(
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                              width: 0, style: BorderStyle.none)),
                      elevation: 10,
                      child: SizedBox(
                          width: 150,
                          child: Column(
                            children: [
                              const Image(
                                  fit: BoxFit.cover,
                                  height: 91,
                                  width: double.infinity,
                                  image: AssetImage(
                                      "assets/hotel_images/image4.png")),
                              const SizedBox(
                                height: 5,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 90),
                                child: Text(
                                  "Marriot",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Colors.black),
                                ),
                              ),
                              const Text(
                                "A Five Star Hotel in Kochi",
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: const [
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "\$180 / night",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.blueAccent),
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Text(
                                    "4.5",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.blueAccent),
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 15,
                                    color: Colors.blueAccent,
                                  )
                                ],
                              )
                            ],
                          )),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Text(
                      "Hotel Packages",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 160),
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "view all",
                          style:
                              TextStyle(color: Colors.blueAccent, fontSize: 15),
                        )),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 05),
                child: Card(
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            width: 0, style: BorderStyle.none)),
                    elevation: 10,
                    child: SizedBox(
                      height: 150,
                      child: Row(
                        children: [
                          const Image(
                            image: AssetImage("assets/hotel_images/image1.png"),
                            height: double.infinity,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Stack(children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 35),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Crown Plazza",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    ),
                                    const Text(
                                      "A Five Star Hotel",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 15),
                                    ),
                                    const Text(
                                      "\$180 / night",
                                      style: TextStyle(
                                          color: Colors.blueAccent,
                                          fontSize: 15),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: const [
                                          Icon(
                                            Icons.car_crash,
                                            color: Colors.blueAccent,
                                          ),
                                          Icon(
                                            Icons.fastfood_outlined,
                                            color: Colors.blueAccent,
                                          ),
                                          Icon(
                                            Icons.wine_bar_outlined,
                                            color: Colors.blueAccent,
                                          ),
                                          Icon(
                                            Icons.wifi,
                                            color: Colors.blueAccent,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                left: 121,
                                top: 50,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    elevation: MaterialStateProperty.all(10),
                                    shape: MaterialStateProperty.all(
                                      const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              bottomLeft: Radius.circular(10))),
                                    ),
                                  ),
                                  child: const Text("Book"),
                                ),
                              ),
                            ]),
                          ),
                        ],
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 05),
                child: Card(
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            width: 0, style: BorderStyle.none)),
                    elevation: 10,
                    child: SizedBox(
                      height: 150,
                      child: Row(
                        children: [
                          const Image(
                            image: AssetImage("assets/hotel_images/image2.png"),
                            height: double.infinity,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Stack(children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 35),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Hotel Marriot",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    ),
                                    const Text(
                                      "A Five Star Hotel",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 15),
                                    ),
                                    const Text(
                                      "\$180 / night",
                                      style: TextStyle(
                                          color: Colors.blueAccent,
                                          fontSize: 15),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: const [
                                          Icon(
                                            Icons.car_crash,
                                            color: Colors.blueAccent,
                                          ),
                                          Icon(
                                            Icons.fastfood_outlined,
                                            color: Colors.blueAccent,
                                          ),
                                          Icon(
                                            Icons.wine_bar_outlined,
                                            color: Colors.blueAccent,
                                          ),
                                          Icon(
                                            Icons.wifi,
                                            color: Colors.blueAccent,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                left: 121,
                                top: 50,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    elevation: MaterialStateProperty.all(10),
                                    shape: MaterialStateProperty.all(
                                      const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              bottomLeft: Radius.circular(10))),
                                    ),
                                  ),
                                  child: const Text("Book"),
                                ),
                              ),
                            ]),
                          ),
                        ],
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 05),
                child: Card(
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            width: 0, style: BorderStyle.none)),
                    elevation: 10,
                    child: SizedBox(
                      height: 150,
                      child: Row(
                        children: [
                          const Image(
                            image: AssetImage("assets/hotel_images/image3.png"),
                            height: double.infinity,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Stack(children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 35),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Holiday In",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    ),
                                    const Text(
                                      "A Five Star Hotel",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 15),
                                    ),
                                    const Text(
                                      "\$180 / night",
                                      style: TextStyle(
                                          color: Colors.blueAccent,
                                          fontSize: 15),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: const [
                                          Icon(
                                            Icons.car_crash,
                                            color: Colors.blueAccent,
                                          ),
                                          Icon(
                                            Icons.fastfood_outlined,
                                            color: Colors.blueAccent,
                                          ),
                                          Icon(
                                            Icons.wine_bar_outlined,
                                            color: Colors.blueAccent,
                                          ),
                                          Icon(
                                            Icons.wifi,
                                            color: Colors.blueAccent,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                left: 121,
                                top: 50,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    elevation: MaterialStateProperty.all(10),
                                    shape: MaterialStateProperty.all(
                                      const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              bottomLeft: Radius.circular(10))),
                                    ),
                                  ),
                                  child: const Text("Book"),
                                ),
                              ),
                            ]),
                          ),
                        ],
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 05),
                child: Card(
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            width: 0, style: BorderStyle.none)),
                    elevation: 10,
                    child: SizedBox(
                      height: 150,
                      child: Row(
                        children: [
                          const Image(
                            image: AssetImage("assets/hotel_images/image4.png"),
                            height: double.infinity,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Stack(children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 35),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Marriot",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    ),
                                    const Text(
                                      "A Five Star Hotel",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 15),
                                    ),
                                    const Text(
                                      "\$180 / night",
                                      style: TextStyle(
                                          color: Colors.blueAccent,
                                          fontSize: 15),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: const [
                                          Icon(
                                            Icons.car_crash,
                                            color: Colors.blueAccent,
                                          ),
                                          Icon(
                                            Icons.fastfood_outlined,
                                            color: Colors.blueAccent,
                                          ),
                                          Icon(
                                            Icons.wine_bar_outlined,
                                            color: Colors.blueAccent,
                                          ),
                                          Icon(
                                            Icons.wifi,
                                            color: Colors.blueAccent,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                left: 121,
                                top: 50,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    elevation: MaterialStateProperty.all(10),
                                    shape: MaterialStateProperty.all(
                                      const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              bottomLeft: Radius.circular(10))),
                                    ),
                                  ),
                                  child: const Text("Book"),
                                ),
                              ),
                            ]),
                          ),
                        ],
                      ),
                    )),
              ),
            ]),
          )),
    );
  }
}
