import 'package:flutter/material.dart';
import 'package:glassy/glassy.dart';
import 'package:glassy/glassy_button.dart';
import 'package:glassy/glassy_card.dart';
import 'package:glassy/glassy_config.dart';
import 'package:glassy/glassy_dialog.dart';

void main() {
  Glassy().setConfig(GlassyConfig(
      radius: 15,
      backgroundColor: Colors.grey,
      backgroundOpacity: 0.2,
      borderOpacity: 0.5));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Glassy Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DemoPage(),
    );
  }
}

class DemoPage extends StatelessWidget {
  const DemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("assets/images/test.jpg", fit: BoxFit.cover),
          SizedBox(
            child: Column(children: [
              GlassyCard(
                  child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Colors.white,
                      )),
                  const Expanded(
                      child: Text(
                    "This is a GlassyCard",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ))
                ],
              )),
              const SizedBox(
                width: 300,
                height: 400,
                child: GlassyCard(
                    child: Center(
                  child: Text("This is another Glassy Card",
                      style: TextStyle(color: Colors.white)),
                )),
              ),
              Expanded(
                  child: Center(
                child: GlassyButton(
                    child: const Text("This is Glassy Button"),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: ((context) {
                            return const GlassyDialog(
                                title: "This is Glassy Dialog Title",
                                child: Center(
                                  child: Text(
                                    "This is Glassy Dialog Content Text Widget",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ));
                          }));
                    }),
              ))
            ]),
          )
        ],
      ),
    );
  }
}
