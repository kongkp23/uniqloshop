import 'package:flutter/material.dart';
import 'package:uniqloshop/model/outfit.dart';

class OutfitDetail extends StatefulWidget {
  final Outfit outfit;
  OutfitDetail({super.key, required this.outfit});

  @override
  State<StatefulWidget> createState() {
    return _OutfitDetailState();
  }
}

class _OutfitDetailState extends State<OutfitDetail> {
  int _quantity = 1;

  
  int _pricePerUnit() {
    return widget.outfit.pricePerItem; 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 35, 35),
        title: const Text(
          'Outfit Detail',
          style: TextStyle(
            color: Colors.white,
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      
      body: SingleChildScrollView( 
        child: Column(
          children: [
            
            Image(
              image: AssetImage(widget.outfit.OutfitUrl),
              
            ),
            const SizedBox(height: 14.0),
            Text(
              widget.outfit.OutfitLabel,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.outfit.OutfitDescrioption,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16),
              ),
            ),
            
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  IconButton(
                    icon: const Icon(Icons.remove, size: 30),
                    onPressed: () {
                      setState(() {
                        if (_quantity > 1) _quantity--;
                      });
                    },
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text(
                      '$_quantity',
                      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  
                  IconButton(
                    icon: const Icon(Icons.add, size: 30),
                    onPressed: () {
                      setState(() {
                        _quantity++;
                      });
                    },
                  ),
                  const Spacer(),
                  
                  Text(
                    'Total: \$${_quantity * _pricePerUnit()}',
                    style: const TextStyle(
                      fontSize: 22, 
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0)
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}