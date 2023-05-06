import 'package:flutter/material.dart';
import 'package:electronik/product.dart';

class DetailProduct extends StatefulWidget {
  final Product product;
  const DetailProduct({
    super.key,
    required this.product,
  });

  @override
  State<DetailProduct> createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Product"),
        centerTitle: true,
      ),
      body: Card(
        margin: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Image.network(
              widget.product.image,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                widget.product.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(widget.product.description),
            )
          ],
        ),
      ),
    );
  }
}
