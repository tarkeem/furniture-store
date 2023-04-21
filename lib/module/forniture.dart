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
    'assets/firstset/sphere_3d_shape.png',
  ),
  Forniture(
      Colors.yellow,
      'https://th.bing.com/th/id/R.8cefca55648fcab21136a93d6c65e146?rik=c3%2bcFq3RwIZshA&pid=ImgRaw&r=0',
      'https://th.bing.com/th/id/R.25ca20c269ff1462440e4fdd10ef1e79?rik=kuC2Aifvb0QAPw&riu=http%3a%2f%2fwww.pngmart.com%2ffiles%2f7%2fYellow-Sofa-PNG-Image.png&ehk=zXOCcP6y8vnTbshlkiBKulHDp5cQLDs8pINqP0QPXKk%3d&risl=&pid=ImgRaw&r=0',
      'assets/firstset/sphere_3d_shape.png'),
  Forniture(
      Color.fromARGB(255, 226, 38, 38),
      'https://th.bing.com/th/id/R.29413e4406b1b7ed7f4014f6cffa2b94?rik=FpDrBs7vXsVjJA&riu=http%3a%2f%2fwww.racq8.com%2fimages%2fred_chair.png&ehk=FKYG5UMpqkdeNE56OhQS92nwyRFTlCzGXqwsXHPIfnY%3d&risl=&pid=ImgRaw&r=0',
      'https://th.bing.com/th/id/R.58ed81bfa05189bc19939614fe252ed7?rik=beH43IHfMSYAfw&riu=http%3a%2f%2ffollowthatcouch.files.wordpress.com%2f2013%2f01%2fred-couch-300dpi-copy-copy.png&ehk=X44WjDNfcNfHbLt8PpMLy83lLzbPbm4fA%2fsGysBrh%2fg%3d&risl=&pid=ImgRaw&r=0',
      'assets/firstset/sphere_3d_shape.png'),
       Forniture(
      Color.fromARGB(255, 41, 37, 37),
      'https://th.bing.com/th/id/R.b2f415dd38c96dffc361998c0c37c435?rik=7YJVAFnCv%2fMMEw&pid=ImgRaw&r=0',
      'https://th.bing.com/th/id/R.c81523046d203df996f2654662297caf?rik=7Q0oMUiy1Jf%2fQQ&riu=http%3a%2f%2fpurepng.com%2fpublic%2fuploads%2flarge%2f21502322876flginynlwb9rw5p1phpadyrkx1aijdc8tdgxrrlyaishnbd2kkborfwypnerlerielyzxniasayh7fqri7q4gwmcdxq70cpo8ycw.png&ehk=E06tBNP3urs%2fIxeAmcepv1%2bRDTlMRYXfXjqHSDXverc%3d&risl=&pid=ImgRaw&r=0',
      'assets/firstset/sphere_3d_shape.png'),
       Forniture(
      Color.fromARGB(192, 46, 0, 253),
      'https://th.bing.com/th/id/R.b2f415dd38c96dffc361998c0c37c435?rik=7YJVAFnCv%2fMMEw&pid=ImgRaw&r=0',
      'https://th.bing.com/th/id/R.c81523046d203df996f2654662297caf?rik=7Q0oMUiy1Jf%2fQQ&riu=http%3a%2f%2fpurepng.com%2fpublic%2fuploads%2flarge%2f21502322876flginynlwb9rw5p1phpadyrkx1aijdc8tdgxrrlyaishnbd2kkborfwypnerlerielyzxniasayh7fqri7q4gwmcdxq70cpo8ycw.png&ehk=E06tBNP3urs%2fIxeAmcepv1%2bRDTlMRYXfXjqHSDXverc%3d&risl=&pid=ImgRaw&r=0',
      'assets/firstset/sphere_3d_shape.png'),
       
];
