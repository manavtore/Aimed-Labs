import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Responsive Cards'),
        ),
        body: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        child: const Column(
          children: [
            Expanded(
              child: Card1(),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(child: Card2()),
          ],
        ),
      ),
    );
  }
}

class Card1 extends StatelessWidget {
  const Card1({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 15),
          child: Container(
            height: 80,
            color: const Color.fromRGBO(209, 133, 133, 1),
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: double.maxFinite,
                    child: FractionallySizedBox(
                      alignment: Alignment.topLeft,
                      widthFactor: 0.4,
                      child: Container(
                        height: 20,
                        color: const Color(0xFFC4C4C4),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Container(
                    height: 20,
                    color: const Color(0xFFA8D8AD),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class Card2 extends StatelessWidget {
  const Card2({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 20),
          child: Container(
            height: 100,
            child: Stack(children: [
              Positioned(
                  top: 20,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    height: 80,
                    color: const Color(0xFFD18585),
                    child: Stack(
                      children: [
                        Positioned(
                            top: 40,
                            bottom: 10,
                            child: Container(
                              height: 20,
                              color: const Color(0xFFA8D8AD),
                            ))
                      ],
                    ),
                  )),
              Positioned(
                bottom: 0,
                top: -10,
                left: 0,
                right: 0,
                child: Container(
                  height: 20,
                  width: double.maxFinite,
                  child: FractionallySizedBox(
                    alignment: Alignment.topCenter,
                    widthFactor: 0.4,
                    child: Stack(
                      children: [
                        Container(
                          height: 40,
                          color: const Color(0xFFC4C4C4),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: 50,
                  bottom: 20,
                  left: 10,
                  right: 10,
                  child: Container(
                    height: 20,
                    color: const Color(0xFFA8D8AD),
                  ))
            ]),
          ),
        );
      },
    );
  }
}
