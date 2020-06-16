import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      builder: (_, child) {
        return Scaffold(
          body: child,
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ReorderableListView(
          children: [
            ListTile(
              key: Key("unique"),
              title: Text("Item"),
              trailing: Icon(Icons.menu),
            )
          ],
          onReorder: (old, newIndex) {
            final snackbar = SnackBar(
              content: Text("onReorder from $old to $newIndex"),
            );
            Scaffold.of(context).showSnackBar(snackbar);
          },
        ));
  }
}
