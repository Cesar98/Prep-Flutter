import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const styleMsg = TextStyle(fontSize: 30);
    int counter = 0;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('App.'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Taps counter:', style: styleMsg),
            Text(
              '$counter',
              style: styleMsg,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.trending_up_outlined, color: Colors.white),
        backgroundColor: Colors.blueGrey,
        onPressed: () {},
      ),
    );
  }
}
