import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {

  static const name = 'snackbar_screen';


  const SnackbarScreen({super.key});


  void showCustomSnackbar( BuildContext context ) {

    ScaffoldMessenger.of(context).clearSnackBars();

    final snakback = SnackBar(
      content: const Text('Hola!'), 
      action: SnackBarAction(label: 'Ok!', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar( snakback );

  }

  void openDialog( BuildContext context ) {//BuildContext basicamente es la información en la aplicación

    showDialog(
      context: context, 
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('¿Estás seguro?'),
        content: const Text('Ex officia cupidatat velit amet cupidatat. Dolor fugiat amet anim non aliquip nulla in est sunt in ad anim. Aliqua consequat Lorem ex tempor. Deserunt ut ut aute consectetur elit. Amet eu qui quis esse ea laborum reprehenderit cillum deserunt occaecat. Anim veniam ea proident eu sit laboris excepteur.'),
        actions: [
          TextButton(onPressed: ()=> context.pop(), child: const Text('Cancelar')),

          FilledButton(onPressed: ()=> context.pop(), child: const Text('Aceptar')),
        ],
      ),
      
      );
    }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snackbars y Diálogos"),
      ),

      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            FilledButton.tonal(
            onPressed: (){
              showAboutDialog(
                context: context,
                children:  [
                  const Text('Haciendo click verás todas las licencias de la aplicación.')
                ]
              );//Solo con esto se muestran todas las licencias de Flutter

            }, child: const Text('Licencias usadas')),

            FilledButton.tonal(
            onPressed: () => openDialog(context), 
            child: const Text('Mostrar diálogo'))

          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context),
        ),
     );
  }
}