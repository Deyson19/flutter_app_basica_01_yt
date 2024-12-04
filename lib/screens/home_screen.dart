import 'package:flutter/material.dart';

import '../widgets/card_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int totalClicks = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Mi Primera App en Flutter",
            style: TextStyle(fontSize: 20, color: Colors.yellow[500]),
          ),
          centerTitle: true,
          backgroundColor: Colors.cyan),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              onPressed: () {
                setState(() {
                  totalClicks += 1;
                });
              },
              elevation: 20,
              shape: const StadiumBorder(),
              child: const Icon(
                Icons.plus_one,
                color: Colors.red,
              )),
          const SizedBox(width: 15),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                if (totalClicks == 0) {
                  _showSnackbar(context);
                  return;
                } else {
                  totalClicks -= 1;
                }
              });
            },
            elevation: 20,
            shape: const StadiumBorder(),
            child: const Icon(
              Icons.exposure_minus_1,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const CardWidget(),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Contador de Clicks:",
            style: TextStyle(fontSize: 22, color: Colors.orange),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Total: $totalClicks",
            style: const TextStyle(fontSize: 50, color: Colors.blue),
          )
        ],
      ),
    );
  }

  void _showSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: const Text("No hay clicks para sumar"),
      duration: const Duration(seconds: 2),
      action: SnackBarAction(label: "Ok", onPressed: ()=>{}),
    ));
  }
}
