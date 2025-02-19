import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class ButtonsScreen extends StatelessWidget {

  static const name = 'buttons_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text ('Buttons Screen') 
      ),
        body: const _ButtonsView(),
        floatingActionButton: FloatingActionButton(
          child: const Icon (Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            context.pop();
          },
        ),
    );  
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [

              //TIPOS DE BOTONES
            ElevatedButton(onPressed: () {}, child: const Text('Elevated')),
            const ElevatedButton(onPressed: null, child: Text('Elevated Disable')),
            
            //TIPOS DE BOTONES
            ElevatedButton.icon(
              onPressed: (){}, 
              icon: const Icon(Icons.access_alarm_rounded), 
              label: const Text('Elevated Icon')
              ),


              //TIPOS DE BOTONES
            FilledButton(onPressed: (){}, child: const Text('Filled')),


            //TIPOS DE BOTONES
            FilledButton.icon(onPressed: (){}, 
            icon: const Icon (Icons.accessibility_new),
            label: const Text('Filled icon'),
            ),


            //TIPOS DE BOTONES

            OutlinedButton(onPressed: (){}, child: const Text('Outline')),
            OutlinedButton.icon(
              onPressed: (){}, 
              icon: const Icon(Icons.terminal),
              label: const Text('Outline Icon')
            ),



            //TIPOS DE BOTONES

            TextButton(onPressed: (){}, child: const Text('Text')),
            TextButton.icon(
              onPressed: (){}, 
              icon: const Icon( Icons.account_circle),
              label: const Text('Text Icon'),
            ),


           const CustomButton(),



            IconButton(onPressed: (){}, icon: const Icon(Icons.app_registration_rounded)),
            IconButton(
              onPressed: (){}, 
              icon: const Icon(Icons.app_registration_rounded),
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(colors.primary),
                  iconColor: const MaterialStatePropertyAll(Colors.white),
                ),
              
              ),


          ],
        ),
      ),
    );
  }
}




//BUTOON CUSTOM listo pero para seguir customizando

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;


    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: (){},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Text('Hola!', style: TextStyle(color: Colors.white),)
            
            ),
        ),
      ),
    );
  }
}