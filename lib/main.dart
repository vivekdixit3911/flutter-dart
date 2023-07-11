// ignore_for_file: camel_case_types

import 'dart:math';

import 'package:flutter/material.dart';

main() {
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
          title: const Text("Two dice"),
          shadowColor: Colors.orange,
        ),
        backgroundColor: const Color.fromARGB(255, 246, 242, 242),
        // ignore: prefer_const_constructors
        body: playdice(),
      ),
    );
  }
}

class playdice extends StatefulWidget {
  const playdice({super.key});

  @override
  State<playdice> createState() => _playdiceState();
}

class _playdiceState extends State<playdice> {
  int k = 0;
  int l = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: OutlinedButton(
              onPressed: () {
                setState(() {
                  l = ran();
                  k = ran();
                });
                debugPrint("left clicked $k ");
                Text(
                  "$k",
                );
              },
              child: Image.asset(
                "asset/image/$k.png",
              ),
            ),
          ),
          Expanded(
            child: OutlinedButton(
              onPressed: () {
                setState(() {
                  l = ran();
                  k = ran();
                });
                debugPrint("right clicked $l ");
              },
              child: Image.asset(
                'asset/image/$l.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

int ran() {
  return Random().nextInt(6) + 1;
}
