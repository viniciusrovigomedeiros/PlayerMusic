import 'package:flutter/material.dart';
import 'widgets/body_home.dart';

class ListMusicPage extends StatefulWidget {
  const ListMusicPage({Key? key}) : super(key: key);

  @override
  State<ListMusicPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<ListMusicPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Escolha uma música',
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const ListMusicPage()),
              );
            },
            icon: const Icon(
              Icons.add_circle_outline,
              size: 30,
            ),
          )
        ],
      ),
      body: const ListMusic(),
    );
  }
}
