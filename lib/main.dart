import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color pageColor = Colors.white;

  // String image1 = "https://images.unsplash.com/photo-1598559069352-3d8437b0d42c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fG5vcnRoJTIwY2Fyb2xpbmF8ZW58MHx8MHx8&w=1000&q=80";
  // String image2 = "https://media.istockphoto.com/photos/mountain-landscape-picture-id517188688?k=20&m=517188688&s=612x612&w=0&h=i38qBm2P-6V4vZVEaMy_TaTEaoCMkYhvLCysE7yJQ5Q=";
  String image1 =
      "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg";
  String image2 =
      "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: pageColor,
        appBar: AppBar(
          backgroundColor: pageColor,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 100),
                    child: Text("Option 1"),
                  ),
                  Row(
                    children: [
                      Image.network(
                        "$image1",
                        width: 200,
                        height: 100,
                      ),
                      theButtonsColumn(),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 100),
                    child: Text("Option 2"),
                  ),
                  Row(
                    children: [
                      theButtonsColumn(),
                      Image.network(
                        "$image2",
                        width: 200,
                        height: 100,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 100),
                    child: Text("Option 3"),
                  ),
                  SizedBox(
                    width: 1,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          theButtonsRow(),
                          Image.network(
                            "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg",
                            width: 200,
                            height: 100,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 100),
                    child: Text("Option 4"),
                  ),
                  SizedBox(
                    width: 1,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Image.network(
                            "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg",
                            width: 200,
                            height: 100,
                          ),
                          theButtonsRow(),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              fourDot(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                      onPressed: () {
                        setState(() {
                          image1 =
                              "https://images.unsplash.com/photo-1528722828814-77b9b83aafb2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8&w=1000&q=80";
                        });
                      },
                      icon: Icon(Icons.image),
                      label: Text("first imag")),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton.icon(
                      onPressed: () {
                        setState(() {
                          image2 =
                              "https://images.unsplash.com/photo-1574079630059-3b6cc5834483?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bm9ydGglMjBjYXJvbGluYXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60";
                        });
                      },
                      icon: Icon(Icons.image),
                      label: Text("second imag")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget fourDot() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          child: Container(
              margin: EdgeInsets.only(right: 4),
              decoration: BoxDecoration(
                  border: Border.all(),
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: SizedBox(
                height: 20,
                width: 20,
              )),
          onTap: () {
            setState(() {
              pageColor = Colors.red;
            });
          },
        ),
        GestureDetector(
          child: Container(
              margin: EdgeInsets.only(right: 4),
              decoration: BoxDecoration(
                  border: Border.all(),
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: SizedBox(
                height: 20,
                width: 20,
              )),
          onTap: () {
            setState(() {
              pageColor = Colors.green;
            });
          },
        ),
        GestureDetector(
          child: Container(
              margin: EdgeInsets.only(right: 4),
              decoration: BoxDecoration(
                  border: Border.all(),
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: SizedBox(
                height: 20,
                width: 20,
              )),
          onTap: () {
            setState(() {
              pageColor = Colors.blue;
            });
          },
        ),
        GestureDetector(
          child: Container(
              margin: EdgeInsets.only(right: 4),
              decoration: BoxDecoration(
                  border: Border.all(),
                  color: Colors.yellow,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: SizedBox(
                height: 20,
                width: 20,
              )),
          onTap: () {
            setState(() {
              pageColor = Colors.yellow;
            });
          },
        ),
      ],
    );
  }

  Widget theButtonsColumn() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(bottom: 4),
          width: 30,
          height: 30,
          child: ElevatedButton(
            onPressed: () {},
            child: Icon(
              Icons.thumb_up,
              size: 10,
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
              padding: EdgeInsets.only(right: 1),
              shape: CircleBorder(),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 4),
          width: 30,
          height: 30,
          child: ElevatedButton(
            onPressed: () {},
            child: Icon(
              Icons.check,
              size: 10,
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
              padding: EdgeInsets.only(right: 1),
              shape: CircleBorder(),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 4),
          width: 30,
          height: 30,
          child: ElevatedButton(
            onPressed: () {},
            child: Icon(
              Icons.clear,
              size: 10,
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
              padding: EdgeInsets.only(right: 1),
              shape: CircleBorder(),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 4),
          width: 30,
          height: 30,
          child: ElevatedButton(
            onPressed: () {},
            child: Icon(
              Icons.star,
              size: 10,
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.yellow,
              padding: EdgeInsets.only(right: 1),
              shape: CircleBorder(),
            ),
          ),
        ),
      ],
    );
  }

  Widget theButtonsRow() {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.only(bottom: 4),
          width: 30,
          height: 30,
          child: ElevatedButton(
            onPressed: () {},
            child: Icon(
              Icons.thumb_up,
              size: 10,
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
              padding: EdgeInsets.only(right: 1),
              shape: CircleBorder(),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 4),
          width: 30,
          height: 30,
          child: ElevatedButton(
            onPressed: () {},
            child: Icon(
              Icons.check,
              size: 10,
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
              padding: EdgeInsets.only(right: 1),
              shape: CircleBorder(),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 4),
          width: 30,
          height: 30,
          child: ElevatedButton(
            onPressed: () {},
            child: Icon(
              Icons.clear,
              size: 10,
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
              padding: EdgeInsets.only(right: 1),
              shape: CircleBorder(),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 4),
          width: 30,
          height: 30,
          child: ElevatedButton(
            onPressed: () {},
            child: Icon(
              Icons.star,
              size: 10,
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.yellow,
              padding: EdgeInsets.only(right: 1),
              shape: CircleBorder(),
            ),
          ),
        ),
      ],
    );
  }
}
