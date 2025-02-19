
import 'package:flutter/material.dart';

class MenuItem {
    final String title;
    final String subTitle;
    final String link;
    final IconData icon;

 const  MenuItem({
    required this.title, 
    required this.subTitle, 
    required this.link, 
    required this.icon
    });

}

//Acá se creaan todas las pantallas de la pag principal y se rutean con app_router.dart
const appMenuItems = <MenuItem>[


    MenuItem(
      title: 'Botones', 
      subTitle: 'Varios botones en Flutter', 
      link: '/buttons', 
      icon: Icons.smart_button_outlined
      ),


       MenuItem(
      title: 'Tarjetas', 
      subTitle: 'Un contenedor estilizado', 
      link: '/cards', 
      icon: Icons.credit_card
      ),


        MenuItem(
      title: 'Progress Indicators', 
      subTitle: 'Generales y controlados', 
      link: '/progress', 
      icon: Icons.refresh_rounded
      ),


         MenuItem(
      title: 'Snackbars y diálogos', 
      subTitle: 'Indicadores y pantallas', 
      link: '/snackbars', 
      icon: Icons.info_outline
      ),


            MenuItem(
      title: 'Animated container', 
      subTitle: 'Stateful widget animado', 
      link: '/animated', 
      icon: Icons.check_box_outline_blank_rounded
      ),


            MenuItem(
      title: 'Ui Controls + Tiles', 
      subTitle: 'Una serie de controles de Flutter', 
      link: '/ui-controls', 
      icon: Icons.car_rental_outlined
      ),


           MenuItem(
      title: 'Introducción a la aplicación', 
      subTitle: 'Pequeño tutorial introductorio', 
      link: '/tutorial', 
      icon: Icons.accessible_rounded
      ),



];