import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: const [
                ImagesAndIconWidget(),
                Divider(),
                BoxDecoratorWidget(),
                Divider(),
                InputDecoratorsWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class InputDecoratorsWidget extends StatelessWidget {
  const InputDecoratorsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TextField(
        keyboardType: TextInputType.text,
        style: TextStyle(
          color: Colors.grey.shade800,
          fontSize: 16.0,
        ),
        decoration: const InputDecoration(
          labelText: 'Notes',
          labelStyle: TextStyle(color: Colors.purple),
          // border: UnderlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.purple),
          ),
          border: OutlineInputBorder(),
        ),
      ),
      const Divider(height: 50.0),
      TextFormField(
        decoration: const InputDecoration(labelText: 'Enter your notes'),
      ),
    ]);
  }
}

class BoxDecoratorWidget extends StatelessWidget {
  const BoxDecoratorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 100.0,
        width: 100.0,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          color: Colors.orange,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10.0,
              offset: Offset(0.0, 10.0),
            ),
          ],
        ),
      ),
    );
  }
}

class ImagesAndIconWidget extends StatelessWidget {
  const ImagesAndIconWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image(
          image: const AssetImage('assets/images/logo.png'),
          width: MediaQuery.of(context).size.width / 3,
          fit: BoxFit.cover,
        ),
        Image.network(
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
          width: MediaQuery.of(context).size.width / 3,
        ),
        const Icon(
          Icons.brush,
          color: Colors.lightBlue,
          size: 48.0,
        ),
      ],
    );
  }
}
