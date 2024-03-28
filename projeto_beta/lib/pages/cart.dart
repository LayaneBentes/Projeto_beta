import 'package:flutter/material.dart';

class MyProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text('Produto'),
        subtitle: Text('Descrição do Produto'),
        trailing: IconButton(
          icon: Icon(Icons.add),
          onPressed: () {
            // Adicione a lógica para adicionar o produto ao carrinho aqui
          },
        ),
      ),
    );
  }
}

class ShoppingCart extends StatefulWidget {
  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  List<String> cartItems = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: cartItems.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(cartItems[index]),
              );
            },
          ),
        ),
        ElevatedButton(
          onPressed: () {
            // Adicione a lógica para finalizar a compra aqui
          },
          child: Text('Comprar'),
        ),
      ],
    );
  }
}
