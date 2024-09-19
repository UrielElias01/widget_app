import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: const Text('Hola mundo'),
      action: SnackBarAction(label: 'Aceptar', onPressed: () {}),
      duration: const Duration(seconds: 3),
    ));
  }

  void openDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text('¿Estás seguro?'),
              content: const Text(
                  'Eiusmod incididunt ullamco ex ut id aliqua. Incididunt cillum incididunt deserunt dolor aliqua id sint sunt aliqua deserunt. Cupidatat labore culpa dolor deserunt pariatur ea Lorem ex commodo tempor in. Nisi anim voluptate eu incididunt est nisi ea laborum. Consequat pariatur ipsum incididunt ex labore dolor eu nostrud.'),
              actions: [
                TextButton(
                    onPressed: () => context.pop(),
                    child: const Text('Cancelar')),
                FilledButton(
                    onPressed: () => context.pop(),
                    child: const Text('Aceptar'))
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBar y Diálogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              child: const Text('Licencias usadas'),
              onPressed: () {
                showAboutDialog(context: context, children: [
                  const Text(
                      'Veniam enim dolore magna tempor aute elit do veniam incididunt. Ad ex in elit minim minim ipsum Lorem non ullamco. Quis esse excepteur pariatur elit irure laborum laboris pariatur anim Lorem cupidatat. Ullamco anim voluptate est veniam.')
                ]);
              },
            ),
            FilledButton.tonal(
              child: const Text('Mostrar Diálogo'),
              onPressed: () => openDialog(context),
            )
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
