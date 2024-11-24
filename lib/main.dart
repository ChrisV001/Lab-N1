import 'package:flutter/material.dart';
import 'package:labs_app/product_page.dart';

void main() {
  runApp(const indeks201204());
}

class indeks201204 extends StatelessWidget {

  const indeks201204({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Product> products = [
    const Product(
      name: "Nike Air Force 1",
      price: "100 eur.",
      urlImage: "https://static.nike.com/a/images/t_PDP_936_v1/f_auto,q_auto:eco/b7d9211c-26e7-431a-ac24-b0540fb3c00f/AIR+FORCE+1+%2707.png"
    ),
    const Product(
      name: "Addidas Yeezys",
      price: "300 eur",
      urlImage: "https://images.stockx.com/images/adidas-Yeezy-Boost-350-V2-Zebra-Product.jpg?fit=fill&bg=FFFFFF&w=700&h=500&fm=webp&auto=compress&q=90&dpr=2&trim=color&updated_at=1703165200"
    ),
    const Product(
      name: "New Balance 2002r",
      price: "300 eur",
      urlImage: "https://nb.scene7.com/is/image/NB/m2002rst_nb_02_i?\$dw_detail_main_lg\$&bgc=f1f1f1&layer=1&bgcolor=f1f1f1&blendMode=mult&scale=10&wid=1600&hei=1600"
    ),
  ];
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text("Clothes Navigation"),
      centerTitle: true,
    ),
    body: ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];

        return Card(
          child: ListTile(
            leading: CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage(product.urlImage),
            ),
            title: Text(product.name),
            subtitle: Text(product.price),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ProductPage(product: product),
              ));
            },
          ),
        );
      },
    ));
}

class Product {
  final String name;
  final String price;
  final String urlImage;

  const Product({
    required this.name,
    required this.price,
    required this.urlImage
  });
}