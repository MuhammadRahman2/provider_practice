import 'package:flutter/material.dart';
import 'package:tech_lift_working/model/prodduct.dart';

class ProductProvider extends ChangeNotifier {
  final List<Product> _manShoes = [
    Product(
      id: "0",
      name: "UltraBoost Shoes",
      category: "Men's Running",
      imageUrl: [
        "https://d326fntlu7tb1e.cloudfront.net/uploads/710d020f-2da8-4e9e-8cff-0c8f24581488-GV6674.webp",
        "https://d326fntlu7tb1e.cloudfront.net/uploads/710d020f-2da8-4e9e-8cff-0c8f24581488-GV6674.webp"
      ],
      oldPrice: "1899.00",
      sizes: [
        {"size": "6.0", "isSelected": false},
        {"size": "6.5", "isSelected": false},
        {"size": "7.0", "isSelected": false},
        {"size": "7.5", "isSelected": false},
        {"size": "8.0", "isSelected": false},
        {"size": "8.5", "isSelected": false},
        {"size": "9.0", "isSelected": false}
      ],
      price: "79.00",
      description:
          "Put some pep in your step with the adidas Originals NMD R1.V2. The modern silhouette teams up with retro details to create a truly stand-out look. Your new favorite sneakers are right here. Regular fit shows off a streamlined silhouette Classic lace closure lets you adjust for your ideal fit.Textile upper provides a snug comfortable feel. Responsive Boost midsole includes plugs for throwback style",
      title: "Adidas Running Shoes With Cooling Ventilations",
    ),
    Product(
      id: "1",
      name: "UltraBoost Shoes",
      category: "Men's Running",
      oldPrice: "99.00",
      imageUrl: [
        "https://d326fntlu7tb1e.cloudfront.net/uploads/d60aca33-909b-4df7-9ad7-b75039438e29-GX1398_a1.webp",
        "https://d326fntlu7tb1e.cloudfront.net/uploads/d60aca33-909b-4df7-9ad7-b75039438e29-GX1398_a1.webp"
      ],
      sizes: [
        {"size": "6.0", "isSelected": false},
        {"size": "6.5", "isSelected": false},
        {"size": "7.0", "isSelected": false},
        {"size": "7.5", "isSelected": false},
        {"size": "8.0", "isSelected": false},
        {"size": "8.5", "isSelected": false},
        {"size": "9.0", "isSelected": false}
      ],
      price: "79.00",
      description:
          "Put some pep in your step with the adidas Originals NMD R1.V2. The modern silhouette teams up with retro details to create a truly stand-out look. Your new favorite sneakers are right here. Regular fit shows off a streamlined silhouette Classic lace closure lets you adjust for your ideal fit.Textile upper provides a snug comfortable feel. Responsive Boost midsole includes plugs for throwback style",
      title: "Adidas Running Shoes With Cooling Ventilations",
    ),
    Product(
      id: "2",
      name: "UltraBoost Shoes",
      category: "Men's Running",
      imageUrl: [
        "https://d326fntlu7tb1e.cloudfront.net/uploads/51ee25c7-46b6-4fd4-bfe0-7dca9a9fd8a9-GX6326_a1.webp",
        "https://d326fntlu7tb1e.cloudfront.net/uploads/51ee25c7-46b6-4fd4-bfe0-7dca9a9fd8a9-GX6326_a1.webp"
      ],
      sizes: [
        {"size": "6.0", "isSelected": false},
        {"size": "6.5", "isSelected": false},
        {"size": "7.0", "isSelected": false},
        {"size": "7.5", "isSelected": false},
        {"size": "8.0", "isSelected": false},
        {"size": "8.5", "isSelected": false},
        {"size": "9.0", "isSelected": false}
      ],
      oldPrice: "1349.00",
      price: "94.00",
      description:
          "Put some pep in your step with the adidas Originals NMD R1.V2. The modern silhouette teams up with retro details to create a truly stand-out look. Your new favorite sneakers are right here. Regular fit shows off a streamlined silhouette Classic lace closure lets you adjust for your ideal fit.Textile upper provides a snug comfortable feel. Responsive Boost midsole includes plugs for throwback style",
      title: "Adidas Running Shoes With Cooling Ventilations",
    ),
    Product(
      id: "10",
      name: "Originals NMD R1",
      category: "Men's Running",
      imageUrl: [
        "https://d326fntlu7tb1e.cloudfront.net/uploads/3d2b87c6-6450-4751-be73-7b13b2f7e284-GV9439_a1.webp",
        "https://d326fntlu7tb1e.cloudfront.net/uploads/e32f065b-358a-4d26-a91e-5dcb35bb040f-HP9662_a1.webp"
      ],
      oldPrice: "1899.00",
      sizes: [
        {"size": "6.0", "isSelected": false},
        {"size": "6.5", "isSelected": false},
        {"size": "7.0", "isSelected": false},
        {"size": "7.5", "isSelected": false},
        {"size": "8.0", "isSelected": false},
        {"size": "8.5", "isSelected": false},
        {"size": "9.0", "isSelected": false}
      ],
      price: "799.00",
      description:
          "Put some pep in your step with the adidas Originals NMD R1.V2. The modern silhouette teams up with retro details to create a truly stand-out look. Your new favorite sneakers are right here. Regular fit shows off a streamlined silhouette Classic lace closure lets you adjust for your ideal fit.Textile upper provides a snug comfortable feel. Responsive Boost midsole includes plugs for throwback style",
      title: "Adidas Running Shoes With Cooling Ventilations",
    ),
  ];

  List<Product> femanShoes = [
    Product(
      id: "0",
      name: "UltraBoost Shoes",
      category: "Men's Running",
      imageUrl: [
        "https://d326fntlu7tb1e.cloudfront.net/uploads/710d020f-2da8-4e9e-8cff-0c8f24581488-GV6674.webp",
        "https://d326fntlu7tb1e.cloudfront.net/uploads/710d020f-2da8-4e9e-8cff-0c8f24581488-GV6674.webp"
      ],
      oldPrice: "1899.00",
      sizes: [
        {"size": "6.0", "isSelected": false},
        {"size": "6.5", "isSelected": false},
        {"size": "7.0", "isSelected": false},
        {"size": "7.5", "isSelected": false},
        {"size": "8.0", "isSelected": false},
        {"size": "8.5", "isSelected": false},
        {"size": "9.0", "isSelected": false}
      ],
      price: "79.00",
      description:
          "Put some pep in your step with the adidas Originals NMD R1.V2. The modern silhouette teams up with retro details to create a truly stand-out look. Your new favorite sneakers are right here. Regular fit shows off a streamlined silhouette Classic lace closure lets you adjust for your ideal fit.Textile upper provides a snug comfortable feel. Responsive Boost midsole includes plugs for throwback style",
      title: "Adidas Running Shoes With Cooling Ventilations",
    ),
    Product(
      id: "1",
      name: "UltraBoost Shoes",
      category: "Men's Running",
      oldPrice: "99.00",
      imageUrl: [
        "https://d326fntlu7tb1e.cloudfront.net/uploads/d60aca33-909b-4df7-9ad7-b75039438e29-GX1398_a1.webp",
        "https://d326fntlu7tb1e.cloudfront.net/uploads/d60aca33-909b-4df7-9ad7-b75039438e29-GX1398_a1.webp"
      ],
      sizes: [
        {"size": "6.0", "isSelected": false},
        {"size": "6.5", "isSelected": false},
        {"size": "7.0", "isSelected": false},
        {"size": "7.5", "isSelected": false},
        {"size": "8.0", "isSelected": false},
        {"size": "8.5", "isSelected": false},
        {"size": "9.0", "isSelected": false}
      ],
      price: "79.00",
      description:
          "Put some pep in your step with the adidas Originals NMD R1.V2. The modern silhouette teams up with retro details to create a truly stand-out look. Your new favorite sneakers are right here. Regular fit shows off a streamlined silhouette Classic lace closure lets you adjust for your ideal fit.Textile upper provides a snug comfortable feel. Responsive Boost midsole includes plugs for throwback style",
      title: "Adidas Running Shoes With Cooling Ventilations",
    ),
    Product(
        id: "2",
        name: "UltraBoost Shoes",
        category: "Men's Running",
        imageUrl: [
          "https://d326fntlu7tb1e.cloudfront.net/uploads/51ee25c7-46b6-4fd4-bfe0-7dca9a9fd8a9-GX6326_a1.webp",
          "https://d326fntlu7tb1e.cloudfront.net/uploads/51ee25c7-46b6-4fd4-bfe0-7dca9a9fd8a9-GX6326_a1.webp"
        ],
        sizes: [
          {"size": "6.0", "isSelected": false},
          {"size": "6.5", "isSelected": false},
          {"size": "7.0", "isSelected": false},
          {"size": "7.5", "isSelected": false},
          {"size": "8.0", "isSelected": false},
          {"size": "8.5", "isSelected": false},
          {"size": "9.0", "isSelected": false}
        ],
        oldPrice: "1349.00",
        price: "94.00",
        description:
            "Put some pep in your step with the adidas Originals NMD R1.V2. The modern silhouette teams up with retro details to create a truly stand-out look. Your new favorite sneakers are right here. Regular fit shows off a streamlined silhouette Classic lace closure lets you adjust for your ideal fit.Textile upper provides a snug comfortable feel. Responsive Boost midsole includes plugs for throwback style",
        title: "Adidas Running Shoes With Cooling Ventilations")
  ];

  List<Product> kidShoes = [
    Product(
      id: "0",
      name: "UltraBoost Shoes",
      category: "Men's Running",
      imageUrl: [
        "https://d326fntlu7tb1e.cloudfront.net/uploads/710d020f-2da8-4e9e-8cff-0c8f24581488-GV6674.webp",
        "https://d326fntlu7tb1e.cloudfront.net/uploads/710d020f-2da8-4e9e-8cff-0c8f24581488-GV6674.webp"
      ],
      oldPrice: "1899.00",
      sizes: [
        {"size": "6.0", "isSelected": false},
        {"size": "6.5", "isSelected": false},
        {"size": "7.0", "isSelected": false},
        {"size": "7.5", "isSelected": false},
        {"size": "8.0", "isSelected": false},
        {"size": "8.5", "isSelected": false},
        {"size": "9.0", "isSelected": false}
      ],
      price: "79.00",
      description:
          "Put some pep in your step with the adidas Originals NMD R1.V2. The modern silhouette teams up with retro details to create a truly stand-out look. Your new favorite sneakers are right here. Regular fit shows off a streamlined silhouette Classic lace closure lets you adjust for your ideal fit.Textile upper provides a snug comfortable feel. Responsive Boost midsole includes plugs for throwback style",
      title: "Adidas Running Shoes With Cooling Ventilations",
    ),
    Product(
      id: "1",
      name: "UltraBoost Shoes",
      category: "Men's Running",
      oldPrice: "99.00",
      imageUrl: [
        "https://d326fntlu7tb1e.cloudfront.net/uploads/d60aca33-909b-4df7-9ad7-b75039438e29-GX1398_a1.webp",
        "https://d326fntlu7tb1e.cloudfront.net/uploads/d60aca33-909b-4df7-9ad7-b75039438e29-GX1398_a1.webp"
      ],
      sizes: [
        {"size": "6.0", "isSelected": false},
        {"size": "6.5", "isSelected": false},
        {"size": "7.0", "isSelected": false},
        {"size": "7.5", "isSelected": false},
        {"size": "8.0", "isSelected": false},
        {"size": "8.5", "isSelected": false},
        {"size": "9.0", "isSelected": false}
      ],
      price: "79.00",
      description:
          "Put some pep in your step with the adidas Originals NMD R1.V2. The modern silhouette teams up with retro details to create a truly stand-out look. Your new favorite sneakers are right here. Regular fit shows off a streamlined silhouette Classic lace closure lets you adjust for your ideal fit.Textile upper provides a snug comfortable feel. Responsive Boost midsole includes plugs for throwback style",
      title: "Adidas Running Shoes With Cooling Ventilations",
    ),
    Product(
        id: "2",
        name: "UltraBoost Shoes",
        category: "Men's Running",
        imageUrl: [
          "https://d326fntlu7tb1e.cloudfront.net/uploads/51ee25c7-46b6-4fd4-bfe0-7dca9a9fd8a9-GX6326_a1.webp",
          "https://d326fntlu7tb1e.cloudfront.net/uploads/51ee25c7-46b6-4fd4-bfe0-7dca9a9fd8a9-GX6326_a1.webp"
        ],
        sizes: [
          {"size": "6.0", "isSelected": false},
          {"size": "6.5", "isSelected": false},
          {"size": "7.0", "isSelected": false},
          {"size": "7.5", "isSelected": false},
          {"size": "8.0", "isSelected": false},
          {"size": "8.5", "isSelected": false},
          {"size": "9.0", "isSelected": false}
        ],
        oldPrice: "1349.00",
        price: "94.00",
        description:
            "Put some pep in your step with the adidas Originals NMD R1.V2. The modern silhouette teams up with retro details to create a truly stand-out look. Your new favorite sneakers are right here. Regular fit shows off a streamlined silhouette Classic lace closure lets you adjust for your ideal fit.Textile upper provides a snug comfortable feel. Responsive Boost midsole includes plugs for throwback style",
        title: "Adidas Running Shoes With Cooling Ventilations")
  ];

  List<Product> get manShoes => _manShoes;
  update() {
    notifyListeners();
  }
}
