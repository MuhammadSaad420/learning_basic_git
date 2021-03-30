import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(),
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                leading: const Icon(Icons.email),
                title: const Text("My e-mail"),
                onTap: () => {},
              ),
              const Divider(
                height: 1,
                color: Colors.grey,
              ),
              const DrawerTitle("App management"),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text("Settings"),
                onTap: () => {},
              ),
              ListTile(
                leading: const Icon(Icons.info),
                title: const Text("Info"),
                onTap: () => {},
              ),
              const Divider(
                height: 1,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DrawerTitle extends StatelessWidget {
  final String text;
  const DrawerTitle(this.text);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 15, 0, 5),
      child: const Text(
        "App management",
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
      ),
    );
  }
}
