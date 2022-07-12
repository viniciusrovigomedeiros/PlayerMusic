import 'package:flutter/material.dart';
import 'package:music_player/presenter/home/list_music_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 150,
              height: 100,
              child: Image.asset(
                'assets/images/fotoPerfil.jpg',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 30,
              width: double.maxFinite,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  hintText: "Coloque seu email",
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(
              height: 30,
              width: double.maxFinite,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                controller: passwordController,
                decoration: const InputDecoration(
                  hintText: "Coloque sua senha",
                  border: InputBorder.none,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextButton(
                onPressed: () {
                  // print(emailController.text);
                  // print(passwordController.text);
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ListMusicPage(),
                    ),
                  );
                },
                child: const Text(
                  'Entrar',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
