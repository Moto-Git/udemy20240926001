import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<Map<String, String>> contacts = [
    {'name': '山田 太郎', 'number':'070-1234-5678', 'address': '東京都'},
    {'name': '鈴木 一郎', 'number':'080-1234-5678', 'address': '神奈川県'},
    {'name': '佐藤 花子', 'number':'090-1234-5678', 'address': '大阪府'},
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body:ListView.builder(
          itemCount: contacts.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.phone),
              title: Text(contacts[index]['name']!),
              subtitle:Text(contacts[index]['number']!),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {

              },
            );
          }
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key,required});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
