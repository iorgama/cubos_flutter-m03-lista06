import 'package:aula_widget/src/Exercicio02/theme.dart';
import 'package:flutter/material.dart';

class MenuComponent extends StatelessWidget {
  const MenuComponent({super.key});

  static const appTitle = 'Menu Drawer';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercicio 02',
      theme: MenuDrawerTheme.light,
      darkTheme: MenuDrawerTheme.dark,
      home: const MenuDrawer(title: appTitle),
    );
  }
}

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              title,
              style: TextStyle(color: theme.primaryColor, fontSize: 34),
            ),
          ],
        ),
        backgroundColor: Colors.pink,
      ),
      endDrawer: Drawer(
        backgroundColor: Colors.pink.shade50,
        child: ListView(
          children: const [
            SubDrawerComponent(
              subDrawerTitle: 'Flutter',
              subDrawerSubTitle: 'Tudo são widgets',
              subDrawerIcon: Icons.flash_on,
              subDrawerColor: Colors.blue,
            ),
            SubDrawerComponent(
              subDrawerTitle: 'Dart',
              subDrawerSubTitle: 'É muito forte',
              subDrawerIcon: Icons.mood,
              subDrawerColor: Colors.red,
            ),
            SubDrawerComponent(
              subDrawerTitle: 'Cafessíneo',
              subDrawerSubTitle: 'Quero cafééé',
              subDrawerIcon: Icons.coffee,
              subDrawerColor: Colors.brown,
            ),
          ],
        ),
      ),
    );
  }
}

class SubDrawerComponent extends StatelessWidget {
  const SubDrawerComponent({
    Key? key,
    required this.subDrawerTitle,
    required this.subDrawerSubTitle,
    required this.subDrawerIcon,
    required this.subDrawerColor,
  }) : super(key: key);

  final String subDrawerTitle;
  final String subDrawerSubTitle;
  final IconData subDrawerIcon;
  final Color subDrawerColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        subDrawerIcon,
        size: 34,
        color: subDrawerColor,
      ),
      title: Text(subDrawerTitle, style: const TextStyle(fontSize: 16)),
      subtitle: Text(subDrawerSubTitle, style: const TextStyle(fontSize: 15)),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        size: 15,
      ),
    );
  }
}
