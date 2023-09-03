import 'package:flutter/material.dart';

const studentId = '630710848';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme
        .of(context)
        .textTheme;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 20.0,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg_colorful.jpg"),
              opacity: 0.6,
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Good Morning',
                  textAlign: TextAlign.center, style: textTheme.headlineMedium),
              Text(studentId,
                  textAlign: TextAlign.center,
                  style: textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.black87)),
              _buildAdditionalContent(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAdditionalContent() {
    return Container(
      width: 200.0,
      height: 500.0,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 16.0),
            child: Align(
              alignment: Alignment.topCenter,
              child: Text(
                'Question 30 of 30',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(30.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            width: 400.0,
            height: 80.0,
            padding: EdgeInsets.all(16.0),
            child: Center(
              child: Text(
                'What is the longest river in  the world?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            width: 400.0,
            height: 50.0,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Center(
              child: Text(
                'Amazon River',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            width: 400.0,
            height: 50.0,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Center(
              child: Text(
                'Nile River',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            width: 400.0,
            height: 50.0,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Center(
              child: Text(
                'Mississippi River',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            width: 400.0,
            height: 50.0,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Center(
              child: Text(
                'Yangtze River',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
          _buildQuizView(),
          SizedBox(height: 16.0),
          //_buildButtonPanel(),
        ],
      ),
    );
  }

  _buildQuizView() {
    // TODO: build UI
    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              side: BorderSide(color: Colors.black),
              backgroundColor: Colors.redAccent,
            ),
            child: Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 10.0, horizontal: 60.0),
              child: Text(
                '<',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              side: BorderSide(color: Colors.black),
              backgroundColor: Colors.lightGreenAccent,
            ),
            child: Padding(
              padding:
              const EdgeInsets.symmetric(vertical:10.0, horizontal: 60.0),
              child: Text(
                '>',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
