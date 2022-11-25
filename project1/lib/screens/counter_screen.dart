import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  void increase() => setState(() => counter++);
  void decrease() => setState(() => counter--);
  void setCero() => setState(() => counter = 0);

  @override
  Widget build(BuildContext context) {
    const styleMsg = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('App.'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Tap counter:', style: styleMsg),
            Text(
              '$counter',
              style: styleMsg,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: CustomFloatingButtons(
          increaseFn: increase, decreaseFn: decrease, setCeroFn: setCero),
    );
  }
}

class CustomFloatingButtons extends StatelessWidget {
  final Function increaseFn;
  final Function decreaseFn;
  final Function setCeroFn;

  const CustomFloatingButtons(
      {Key? key,
      required this.increaseFn,
      required this.decreaseFn,
      required this.setCeroFn})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          child: const Icon(Icons.trending_down_outlined, color: Colors.white),
          backgroundColor: Colors.blueGrey,
          onPressed: () => decreaseFn(),
        ),
        FloatingActionButton(
          child:
              const Icon(Icons.arrow_circle_down_outlined, color: Colors.white),
          backgroundColor: Colors.blueGrey,
          onPressed: () => setCeroFn(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.trending_up_outlined, color: Colors.white),
          backgroundColor: Colors.blueGrey,
          onPressed: () => increaseFn(),
        ),
      ],
    );
  }
}
