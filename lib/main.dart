import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
        ),
        body: Column(
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
                      "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg",
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
                      "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg",
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
            fourDot()
          ],
        ),
      ),
    );
  }

  Widget fourDot() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            margin: EdgeInsets.only(right: 4),
            decoration: BoxDecoration(
                border: Border.all(),
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: SizedBox(
              height: 20,
              width: 20,
            )),
        Container(
            margin: EdgeInsets.only(right: 4),
            decoration: BoxDecoration(
                border: Border.all(),
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: SizedBox(
              height: 20,
              width: 20,
            )),
        Container(
            margin: EdgeInsets.only(right: 4),
            decoration: BoxDecoration(
                border: Border.all(),
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: SizedBox(
              height: 20,
              width: 20,
            )),
        Container(
            margin: EdgeInsets.only(right: 4),
            decoration: BoxDecoration(
                border: Border.all(),
                color: Colors.yellow,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: SizedBox(
              height: 20,
              width: 20,
            )),
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
