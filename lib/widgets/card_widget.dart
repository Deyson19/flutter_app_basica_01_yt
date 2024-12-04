import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {

  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const String supermanImage = "https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fimages6.fanpop.com%2Fimage%2Fphotos%2F40500000%2FSuperman-superman-40556440-1200-1600.png&f=1&nofb=1&ipt=2a74421f2a07505cb5247e2cb04e0f9ca7152adc415e759efa8c75350e51f86f&ipo=images";
    return Card(
              color: Colors.amber,
              child: Row(
                children: [
                  SizedBox(
                    height: 130,
                    width: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        supermanImage,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const SizedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                    "Superman",
                    style: TextStyle(fontSize: 20, color: Colors.red),
                  ),
                  Text(
                    "El hombre de acero",
                    style: TextStyle(fontSize: 15, color: Colors.black54),
                  ),
                  Text(
                    "Miembro de la liga de la justicia",
                    style: TextStyle(fontSize: 15, color: Colors.black54),
                  )
                      ],
                    ),
                  )
                ],
              ),
            );
  }
}