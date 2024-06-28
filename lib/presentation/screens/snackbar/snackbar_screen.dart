import 'package:flutter/material.dart';

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
              onPressed: () {},
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
