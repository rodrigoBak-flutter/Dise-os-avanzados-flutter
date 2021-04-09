import 'package:disenos_avanzados/src/widgets/boton_gordo.dart';
import 'package:disenos_avanzados/src/widgets/headers.dart';
import 'package:flutter/material.dart';

import 'package:animate_do/animate_do.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ItemBoton {
  final IconData icon;
  final String texto;
  final Color color1;
  final Color color2;

  ItemBoton(this.icon, this.texto, this.color1, this.color2);
}

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final items = <ItemBoton>[
      new ItemBoton(FontAwesomeIcons.facebook, 'Facebook', Color(0xff6989F5),
          Color(0xff906EF5)),
      new ItemBoton(FontAwesomeIcons.twitch, 'twitch', Color(0xff66A9F2),
          Color(0xff536CF6)),
      new ItemBoton(FontAwesomeIcons.twitter, 'twitter', Color(0xffF2D572),
          Color(0xffE06AA3)),
      new ItemBoton(FontAwesomeIcons.podcast, 'podcast', Color(0xff317183),
          Color(0xff46997D)),
      new ItemBoton(FontAwesomeIcons.facebook, 'Facebook', Color(0xff6989F5),
          Color(0xff906EF5)),
      new ItemBoton(FontAwesomeIcons.twitch, 'twitch', Color(0xff66A9F2),
          Color(0xff536CF6)),
      new ItemBoton(FontAwesomeIcons.twitter, 'twitter', Color(0xffF2D572),
          Color(0xffE06AA3)),
      new ItemBoton(FontAwesomeIcons.podcast, 'podcast', Color(0xff317183),
          Color(0xff46997D)),
      new ItemBoton(FontAwesomeIcons.twitch, 'twitch', Color(0xff66A9F2),
          Color(0xff536CF6)),
      new ItemBoton(FontAwesomeIcons.twitter, 'twitter', Color(0xffF2D572),
          Color(0xffE06AA3)),
      new ItemBoton(FontAwesomeIcons.podcast, 'podcast', Color(0xff317183),
          Color(0xff46997D)),
      new ItemBoton(FontAwesomeIcons.facebook, 'Facebook', Color(0xff6989F5),
          Color(0xff906EF5)),
    ];

    List<Widget> itemMap = items
        .map((item) => FadeInLeft(
              duration: Duration(milliseconds: 250),
              child: BotonGordo(
                icon: item.icon,
                texto: item.texto,
                color1: item.color1,
                color2: item.color2,
                onPress: () {
                  print('hola');
                },
              ),
            ))
        .toList();

    return Scaffold(
        // backgroundColor: Colors.red,
        body: Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 200),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: <Widget>[
              SizedBox(
                height: 80,
              ),
              ...itemMap
            ],
          ),
        ),
        _Encabezado()
      ],
    ));
  }
}

class _Encabezado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        IconHeader(
          icon: FontAwesomeIcons.plus,
          titulo: 'Menu animado',
          subtitulo: 'Mi menu animado',
          color1: Color(0xff536CF6),
          color2: Color(0xff66A9F2),
        ),
        Positioned(
            right: 0,
            top: 45,
            child: RawMaterialButton(
                onPressed: () {},
                shape: CircleBorder(),
                padding: EdgeInsets.all(15.0),
                child: FaIcon(FontAwesomeIcons.ellipsisV, color: Colors.white)))
      ],
    );
  }
}
/*
class BotonGordoTemp extends StatelessWidget {
  const BotonGordoTemp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BotonGordo(
      icon: FontAwesomeIcons.facebook,
      texto: 'Facebook',
      color1: Color(0xff6989F5),
      color2: Color(0xff906EF5),
      onPress: () {
        print('Click!');
      },
    );
  }
}

class PageHeader extends StatelessWidget {
  const PageHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconHeader(
      icon: FontAwesomeIcons.plus,
      subtitulo: 'Mi menu animado',
      titulo: 'Menu animado',
      color1: Color(0xff526BF6),
      color2: Color(0xff67ACF2),
    );
   
  }
  
}
 */
