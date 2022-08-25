// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(MyApp());

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {

  final List<String> imageList = ['assets/img/flutter_logo.svg','assets/img/skillbox.svg'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          // ignore: prefer_const_constructors
          title: Text("Image from assets"),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
                //SvgPicture.asset('assets/img/flutter_logo.svg'),
                //SvgPicture.network('https://fastly.jsdelivr.net/gh/dnfield/flutter_svg@7d374d7107561cbd906d7c0ca26fef02cc01e7c8/example/assets/flutter_logo.svg')
                CarouselSlider(
                                options: CarouselOptions(height: 400.0),
                                items: imageList.map((i) {
                                  return Builder(
                                    builder: (BuildContext context) {
                                      return Container(
                                        width: MediaQuery.of(context).size.width,
                                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                                        child: SvgPicture.asset(i)
                                      );
                                    },
                                  );
                                }).toList(),
                              )
            ],
          ),
        ),
      ),
    );
  }
}
