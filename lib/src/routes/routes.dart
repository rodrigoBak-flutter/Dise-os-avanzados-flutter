import 'package:disenos_avanzados/src/pages/menu_page.dart';
import 'package:disenos_avanzados/src/pages/graficas_circulares_page.dart';
import 'package:disenos_avanzados/src/pages/headers_page.dart';
import 'package:disenos_avanzados/src/pages/pinterest_page.dart';
import 'package:disenos_avanzados/src/pages/slider_list_page.dart';
import 'package:disenos_avanzados/src/pages/slideshow_page.dart';
import 'package:disenos_avanzados/src/retos/cuadrado_animado_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final pageRoutes = <_Route>[
  _Route(FontAwesomeIcons.slideshare, 'Slideshow', SlideshowPage()),
  _Route(FontAwesomeIcons.magic, 'Menu animado', MenuPage()),
  _Route(FontAwesomeIcons.heading, 'Encabezados', HeadersPage()),
  _Route(FontAwesomeIcons.peopleCarry, 'Cuadro Animado', CuadradoAnimadoPage()),
  _Route(
      FontAwesomeIcons.circleNotch, 'Barra Progreso', GraficasCircularesPage()),
  _Route(FontAwesomeIcons.pinterest, 'Pinterest', PinterestPage()),
  _Route(FontAwesomeIcons.mobile, 'Slivers', SliverListPage()),
];

class _Route {
  final IconData icon;
  final String titulo;
  final Widget page;

  _Route(this.icon, this.titulo, this.page);
}
