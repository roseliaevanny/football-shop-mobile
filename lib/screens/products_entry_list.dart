import 'package:flutter/material.dart';
import 'package:football_shop/models/products_entry.dart';
import 'package:football_shop/widgets/left_drawer.dart';
import 'package:football_shop/screens/products_detail.dart';
import 'package:football_shop/widgets/products_entry_card.dart';
import 'package:provider/provider.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';

class ProductsEntryListPage extends StatefulWidget {
  final String mode;
  const ProductsEntryListPage({super.key, required this.mode});

  @override
  State<ProductsEntryListPage> createState() => _ProductsEntryListPageState();
}

class _ProductsEntryListPageState extends State<ProductsEntryListPage> {
  Future<List<ProductsEntry>> fetchProducts(CookieRequest request) async {
    // Replace the URL with your app's URL and don't forget to add a trailing slash (/)!
    // To connect Android emulator with Django on localhost, use URL http://10.0.2.2/
    // If you using chrome,  use URL http://localhost:8000

    final response = await request.get('http://localhost:8000/json/');

    // Decode response to json format
    var data = response;

    // Convert json data to ProductsEntry objects
    List<ProductsEntry> listProducts = [];
    for (var d in data) {
      if (d != null) {
        listProducts.add(ProductsEntry.fromJson(d));
      }
    }
    return listProducts;
  }

  Future<List<ProductsEntry>> fetchMyProducts(CookieRequest request) async {
    final response = await request.get('http://localhost:8000/products-user/');
    var data = response;

    List<ProductsEntry> listProducts = [];
    for (var d in data) {
      if (d != null) {
        listProducts.add(ProductsEntry.fromJson(d));
      }
    }
    return listProducts;
  }

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(title: Text(widget.mode == 'my' ? "My Products" : "Products List",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,),
      drawer: const LeftDrawer(),
      body: buildProductList(widget.mode == 'my' ? fetchMyProducts(request) : fetchProducts(request),
      widget.mode == "my" ? "You haven't added any product." : "There are no products in Football Shop yet."),
    );
  }
}

Widget buildProductList(Future<List<ProductsEntry>> future, String message) {
  return FutureBuilder<List<ProductsEntry>>(
    future: future,
    builder: (context, AsyncSnapshot snapshot) {
      if (snapshot.data == null) {
        return const Center(child: CircularProgressIndicator());
      } else {
        if (!snapshot.hasData) {
          return Column(
            children: [
              Text(
                message,
                style: TextStyle(fontSize: 20, color: Color(0xff59A5D8)),
              ),
              SizedBox(height: 8),
            ],
          );
        } else {
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (_, index) => ProductsEntryCard(
              products: snapshot.data![index],
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ProductsDetailPage(products: snapshot.data![index]),
                  ),
                );
              },
            ),
          );
        }
      }
    },
  );
}
