import 'package:flutter/material.dart';

import '../../music/music_selected_page.dart';

class SoundCont extends StatefulWidget {
  final String photoMusic;
  final String musicName;
  final String singer;

  const SoundCont({
    Key? key,
    required this.photoMusic,
    required this.musicName,
    required this.singer,
  }) : super(key: key);

  @override
  State<SoundCont> createState() => _SoundContState();
}

class _SoundContState extends State<SoundCont> {
  bool favorite = false;

  void isFavorite() {
    setState(() {
      favorite = !favorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const MusicSelected()),
        );
      },
      child: Container(
        height: 50,
        width: double.maxFinite,
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 0, 0, 0),
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 0, 0, 0),
              blurRadius: 0,
              spreadRadius: 0,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(widget.photoMusic),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.musicName,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  widget.singer,
                  style: const TextStyle(
                    fontSize: 11,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            InkWell(
              child: Icon(
                  favorite == false ? Icons.favorite_border : Icons.favorite,
                  color: favorite == false ? Colors.white : Colors.red),
              onTap: () {
                isFavorite();
              },
            ),
          ],
        ),
      ),
    );
  }
}
