import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    const alucard = Hero(
        tag: 'Hero',
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: CircleAvatar(
            radius: 72.0,
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage('lib/assets/leon-avatar.jpg'),
          ),
        ));

    const welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Bem vindo Leon S. Kennedy',
        style: TextStyle(
          fontSize: 16.0,
          color: Colors.white,
        ),
      ),
    );

    const loren = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Leon S. Kennedy, informações classificadas',
        style: TextStyle(
          fontSize: 16.0,
          color: Colors.white,
        ),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(28.0),
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [Colors.blue, Colors.lightBlueAccent],
      )),
      child: const Column(children: [
        alucard,
        welcome,
        loren,
      ]),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Banco de dados RE",
        ),
      ),
      body: body,
    );
  }
}
