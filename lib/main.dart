import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uygulama Çerçevesi',
      home: Iskele(),
    );
  }
}

class Iskele extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Boş Uygulama Çerçevesi'),
      ),
      body: AnaEkran(),
    );
  }
}

//satetuful yapısı ekran her yuklemede yenıden derlenır.Ama Statelessde uygulama sonlanana kadar bırkez derlenıp okunur.

class AnaEkran extends StatefulWidget {
  @override
  _AnaEkranState createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  String blogYazisi = 'Hoş Geldin Bro';

  martGoster() {
    // blogYazisi = 'Temsili yeni bir yazı';
    setState(() {
      blogYazisi = 'Temsili yeni bir yazı';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(blogYazisi),
            RaisedButton(
              onPressed: martGoster,
              child: Text('Mart Yazısı'),
            ),
            RaisedButton(
              onPressed: martGoster,
              child: Text('Nisan Yazısı'),
            ),
            RaisedButton(
              onPressed: martGoster,
              child: Text('Mayıs Yazısı'),
            ),
            RaisedButton(
              onPressed: martGoster,
              child: Text('Haziran Yazısı'),
            ),
            RaisedButton(
              onPressed: martGoster,
              child: Text('Temmuz Yazısı'),
            ),
          ],
        ),
      ),
    );
  }
}
