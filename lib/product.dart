import 'package:electronik/detail-product.dart';
import 'package:flutter/material.dart';

class Product {
  final int id;
  final String name;
  final String image;
  final String description;
  Product(
      {required this.id,
      required this.name,
      required this.image,
      required this.description});
}

List<Product> listProduct = [
  Product(
    id: 1,
    name:
        'Lenovo ThinkPad T480s Core i7-8650U 24GB RAM 512GB NVMe SSD TC FULL HD - T480 Touchscren, 8GB/256GB SSD',
    image:
        'https://images.tokopedia.net/img/cache/900/VqbcmM/2022/7/30/e1d9fabd-58ab-407c-8d65-dc7393fa7067.jpg',
    description:
        "Ready Stock Pemirsa Laptop Ultrabook series Buiseness Class super slim dari Lenovo Thinkpad T480s Rare Item yh aganHarga dijamin termurah, Yg sudah Ga diragukan lagi Spek nya karna seri ini termasuk seri high end dan best seller",
  ),
  Product(
    id: 2,
    name:
        'IPHONE XS 256GB GARANSI 1 BULAN SIM ALL OPERATOR IMEI AMAN BERKUALITAS',
    image:
        'https://images.tokopedia.net/img/cache/900/VqbcmM/2022/1/4/0db09ceb-8b52-4858-bef6-bff18f6bc2fc.png',
    description:
        "IPHONE XS 256GB GARANSI 1 BULAN SIM ALL OPERATOR IMEI AMAN BERKUALITAS",
  ),
  Product(
    id: 3,
    name: "Logitech H111 Headset Stereo Single Jack 3.5mm",
    image:
        'https://images.tokopedia.net/img/cache/900/VqbcmM/2020/11/20/ab12d8e5-e5ee-4c82-816e-140b78b14144.jpg',
    description:
        "Headset bisnis yang sempurna untuk panggilan suara, Skype®, webinar, dan masih banyak lagi. Kabel sepanjang 235 cm ini memiliki panjang yang tepat agar kamu bebas berdiri dan meregangkan tubuh selama percakapan yang lama.",
  ),
];

class ProductTile extends StatefulWidget {
  final Product product;

  const ProductTile({
    super.key,
    required this.product,
  });

  @override
  State<ProductTile> createState() => _ProductTileState();
}

class _ProductTileState extends State<ProductTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailProduct(product: widget.product),
          ),
        )
      },
      child: Container(
        //width: MediaQuery.of(context).size.width * 0.45,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              blurRadius: 4,
              color: Color.fromARGB(218, 226, 249, 255),
              offset: Offset(0, 2),
            )
          ],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                      ),
                      child: Image.network(
                        widget.product.image,
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Flexible(
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(8, 4, 0, 0),
                        child: Text(
                          widget.product.name,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Flexible(
                      child: Container(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(8, 4, 0, 0),
                        child: Text(
                          widget.product.description,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
