import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:translator_app/model/model.item.dart';

Widget customList({required ItemModel model, required Color bgColor}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: bgColor,
      child: _bodyList(model: model),
    ),
  );
}

Widget _bodyList({
  required ItemModel model,
}) {
  return Row(
    children: [
      _buildImage(model.img),
      Column(
        children: [
          textTitle(title: model.engText),
          textTitle(title: model.jpText, isEn: false)
        ],
      ),
      const Spacer(),
      _buildPlayButton(model.audSrc),
    ],
  );
}

Widget _buildImage(String? img) {
  return Container(
    color: Colors.grey[400],
    child: img != null ? Image.asset(img, width: 100) : const SizedBox(),
  );
}

Widget _buildPlayButton(String src) {
  return Padding(
    padding: const EdgeInsets.only(right: 8),
    child: IconButton(
      onPressed: () async {
        print("Audio URL is: ${src}");
        final player = AudioPlayer();
        await player.play(AssetSource(src));
      },
      icon: const Icon(
        Icons.play_arrow,
        size: 32,
        color: Colors.black,
      ),
    ),
  );
}

Widget textTitle({required String title, bool isEn = true}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(title, style: isEn ? engTextStyle() : japTextStyle()),
  );
}

TextStyle engTextStyle() {
  return const TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.bold,
  );
}

TextStyle japTextStyle() {
  return const TextStyle(
    color: Colors.black,
    fontSize: 18,
  );
}
