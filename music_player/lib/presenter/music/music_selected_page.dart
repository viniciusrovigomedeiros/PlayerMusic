import 'package:flutter/material.dart';

class MusicSelected extends StatefulWidget {
  const MusicSelected({Key? key}) : super(key: key);

  @override
  State<MusicSelected> createState() => _MusicSelectedState();
}

class _MusicSelectedState extends State<MusicSelected> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      backgroundColor: const Color.fromARGB(244, 0, 0, 0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 150,
              width: 150,
              child: Image.asset(
                'assets/images/ret.jpg',
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Melhor Agora',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Felipe Ret, Dallass, Honaiser',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
