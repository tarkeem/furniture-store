import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class Forniture {
  String img1, img2, img3;
  Color col;
  Forniture(this.col, this.img1, this.img2, this.img3);
}

List<Forniture> items = [
  Forniture(
    Colors.purple,
    'https://th.bing.com/th/id/R.2ade637e3dcc15c66f65ef4e3cc4f570?rik=fbdQBvEUU7g9Rw&riu=http%3a%2f%2fclipart-library.com%2fimage_gallery2%2fArmchair-PNG-Picture.png&ehk=xyztZP5tn7RPcM%2fwDtuSNUYd1UkstI%2b7w4tt5%2fsVaiA%3d&risl=&pid=ImgRaw&r=0',
    'https://th.bing.com/th/id/R.931efc636975a8b408ba83e7e5611429?rik=GEopRHl6sZPLeA&riu=http%3a%2f%2fofficialpsds.com%2fimageview%2fr0%2f6q%2fr06qnk_large.png%3f1529340644&ehk=%2burc144W%2bpRrbFB%2f03TarqU9mJNurDzdBskQincZb8E%3d&risl=&pid=ImgRaw&r=0',
    'https://clipground.com/images/sphere-clip-art-2.png',
  ),
  Forniture(
      Colors.yellow,
      'https://th.bing.com/th/id/R.8cefca55648fcab21136a93d6c65e146?rik=c3%2bcFq3RwIZshA&pid=ImgRaw&r=0',
      'https://th.bing.com/th/id/R.25ca20c269ff1462440e4fdd10ef1e79?rik=kuC2Aifvb0QAPw&riu=http%3a%2f%2fwww.pngmart.com%2ffiles%2f7%2fYellow-Sofa-PNG-Image.png&ehk=zXOCcP6y8vnTbshlkiBKulHDp5cQLDs8pINqP0QPXKk%3d&risl=&pid=ImgRaw&r=0',
      'https://th.bing.com/th/id/R.436ac000a3dbfbef286cbde191a48bf2?rik=y2W1yffH42TT9Q&pid=ImgRaw&r=0&sres=1&sresct=1'),
  Forniture(
      Colors.white,
      'https://th.bing.com/th/id/OIP.CKJHqBvx03X_DlOQlHAOqwHaG9?pid=ImgDet&rs=1',
      'https://th.bing.com/th/id/R.079be7d60c8216be470feac7de8d79d0?rik=2GF4Z4WRCfYGGQ&pid=ImgRaw&r=0',
      'https://th.bing.com/th/id/R.436ac000a3dbfbef286cbde191a48bf2?rik=y2W1yffH42TT9Q&pid=ImgRaw&r=0&sres=1&sresct=1'),
        Forniture(
      Colors.yellow,
      'https://th.bing.com/th/id/R.8cefca55648fcab21136a93d6c65e146?rik=c3%2bcFq3RwIZshA&pid=ImgRaw&r=0',
      'https://th.bing.com/th/id/R.25ca20c269ff1462440e4fdd10ef1e79?rik=kuC2Aifvb0QAPw&riu=http%3a%2f%2fwww.pngmart.com%2ffiles%2f7%2fYellow-Sofa-PNG-Image.png&ehk=zXOCcP6y8vnTbshlkiBKulHDp5cQLDs8pINqP0QPXKk%3d&risl=&pid=ImgRaw&r=0',
      'https://th.bing.com/th/id/R.436ac000a3dbfbef286cbde191a48bf2?rik=y2W1yffH42TT9Q&pid=ImgRaw&r=0&sres=1&sresct=1'),
        Forniture(
      Color.fromARGB(255, 105, 225, 24),
      'https://th.bing.com/th/id/R.8cefca55648fcab21136a93d6c65e146?rik=c3%2bcFq3RwIZshA&pid=ImgRaw&r=0',
      'https://th.bing.com/th/id/R.25ca20c269ff1462440e4fdd10ef1e79?rik=kuC2Aifvb0QAPw&riu=http%3a%2f%2fwww.pngmart.com%2ffiles%2f7%2fYellow-Sofa-PNG-Image.png&ehk=zXOCcP6y8vnTbshlkiBKulHDp5cQLDs8pINqP0QPXKk%3d&risl=&pid=ImgRaw&r=0',
      'https://th.bing.com/th/id/R.436ac000a3dbfbef286cbde191a48bf2?rik=y2W1yffH42TT9Q&pid=ImgRaw&r=0&sres=1&sresct=1'),
        Forniture(
      Color.fromARGB(255, 138, 15, 85),
      'https://th.bing.com/th/id/R.8cefca55648fcab21136a93d6c65e146?rik=c3%2bcFq3RwIZshA&pid=ImgRaw&r=0',
      'https://th.bing.com/th/id/R.25ca20c269ff1462440e4fdd10ef1e79?rik=kuC2Aifvb0QAPw&riu=http%3a%2f%2fwww.pngmart.com%2ffiles%2f7%2fYellow-Sofa-PNG-Image.png&ehk=zXOCcP6y8vnTbshlkiBKulHDp5cQLDs8pINqP0QPXKk%3d&risl=&pid=ImgRaw&r=0',
      'https://th.bing.com/th/id/R.436ac000a3dbfbef286cbde191a48bf2?rik=y2W1yffH42TT9Q&pid=ImgRaw&r=0&sres=1&sresct=1'),
        Forniture(
      Color.fromARGB(255, 9, 206, 170),
      'https://th.bing.com/th/id/R.8cefca55648fcab21136a93d6c65e146?rik=c3%2bcFq3RwIZshA&pid=ImgRaw&r=0',
      'https://th.bing.com/th/id/R.25ca20c269ff1462440e4fdd10ef1e79?rik=kuC2Aifvb0QAPw&riu=http%3a%2f%2fwww.pngmart.com%2ffiles%2f7%2fYellow-Sofa-PNG-Image.png&ehk=zXOCcP6y8vnTbshlkiBKulHDp5cQLDs8pINqP0QPXKk%3d&risl=&pid=ImgRaw&r=0',
      'https://th.bing.com/th/id/R.436ac000a3dbfbef286cbde191a48bf2?rik=y2W1yffH42TT9Q&pid=ImgRaw&r=0&sres=1&sresct=1'),
];
