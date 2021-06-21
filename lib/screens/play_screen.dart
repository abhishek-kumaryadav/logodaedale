import 'package:flutter/material.dart';
import 'package:logodaedale/models/word.dart';
import 'package:logodaedale/services/word_client.dart';
import 'package:http/http.dart' as http;

class PlayPage extends StatefulWidget {
  const PlayPage({Key? key}) : super(key: key);

  @override
  State<PlayPage> createState() => _PlayPageState();
}

class _PlayPageState extends State<PlayPage> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // child: GestureDetector(onTap: () {}, child: const TextField()),
        child: Column(
          children: [
            TextField(
              controller: _controller,
            ),
            ElevatedButton(
              onPressed: () async {},
              child: Text('TOUCH'),
            ),
          ],
        ),
      ),
    );
  }
}
