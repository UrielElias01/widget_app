import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Botones'),
      ),
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_outlined),
        onPressed: () => context.pop(),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: Text('Elevated button')),
            const ElevatedButton(
                onPressed: null, child: Text('Elevated disable')),
            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.ac_unit_rounded),
                label: const Text('Elevated Icon')),
            FilledButton(onPressed: () {}, child: Text('Filled button')),
            FilledButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.ac_unit_rounded),
                label: const Text('Elevated Icon')),
            OutlinedButton(onPressed: () {}, child: Text('Filled button')),
            OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.ac_unit_rounded),
                label: const Text('Elevated Icon')),
            TextButton(onPressed: () {}, child: Text('Filled button')),
            TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.ac_unit_rounded),
                label: const Text('Elevated Icon')),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.accessibility),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.ac_unit_rounded),
              style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.red),
                  iconColor: WidgetStatePropertyAll(Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
