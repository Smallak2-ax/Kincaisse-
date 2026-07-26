import 'package:flutter/material.dart';

void main() { runApp(KinCaisseApp()); }

class KinCaisseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KinCaisse',
      theme: ThemeData(primarySwatch: Colors.green, useMaterial3: true),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [VentePage(), ProduitsPage(), RapportsPage()];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('KinCaisse'), centerTitle: true),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        selectedItemColor: Colors.green,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Vente'),
          BottomNavigationBarItem(icon: Icon(Icons.inventory), label: 'Produits'),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'Rapports'),
        ],
      ),
    );
  }
}

class VentePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Icon(Icons.shopping_cart, size: 80, color: Colors.green),
      SizedBox(height: 20),
      Text('Page Vente', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
      Text('Ajouter produits et encaisser'),
    ]));
  }
}

class ProduitsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Icon(Icons.inventory, size: 80, color: Colors.green),
      SizedBox(height: 20),
      Text('Page Produits', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
      Text('Gestion stock'),
    ]));
  }
}

class RapportsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Icon(Icons.bar_chart, size: 80, color: Colors.green),
      SizedBox(height: 20),
      Text('Page Rapports', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
      Text('Chiffre du jour'),
    ]));
  }
}
