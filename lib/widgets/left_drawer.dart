import 'package:flutter/material.dart';
import 'package:football_shop/screens/menu.dart';
// Impor halaman ProductFormPage jika sudah dibuat
import 'package:football_shop/screens/productslist_form.dart';
import 'package:football_shop/screens/products_entry_list.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            // Bagian drawer header
            decoration: BoxDecoration(color: Color(0xFF3b82f6)),
            child: Column(
              children: [
                Text(
                  'Football Shop',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  "Football products available here!",
                  // Tambahkan gaya teks dengan center alignment, font ukuran 15, warna putih, dan weight biasa
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          // Bagian routing
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Home'),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.add),
            title: const Text('Add Products'),
            // Bagian redirection ke ProductFormPage
            onTap: () {
              /*
              Buatlah routing ke ProductFormPage di sini,
              setelah halaman ProductFormPage sudah dibuat.
              */
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProductsFormPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.add_reaction_rounded),
            title: const Text('Products List'),
            onTap: () {
                // Route to products list page
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ProductsEntryListPage(mode: 'all')),
                );
            },
          ),
          ListTile(
            leading: const Icon(Icons.add_reaction_rounded),
            title: const Text('My Products'),
            onTap: () {
                // Route to products list page
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ProductsEntryListPage(mode: 'my')),
                );
            },
          ),
        ],
      ),
    );
  }
}
