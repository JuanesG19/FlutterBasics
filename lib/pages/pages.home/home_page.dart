import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: const Text('Uber Clone'),
      ),
      body: SafeArea(
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/images/logo_app.png',
                  width: 150, height: 100),
              const Text("Rapido Y Facil")
            ],
          ),
          const SizedBox(height: 50),
          const Text("SELECCIONA TU ROL"),
          const SizedBox(height: 50),
          const CircleAvatar(
            backgroundImage: AssetImage('assets/images/pasajero.png'),
            radius: 50,
            backgroundColor: Colors.black,
          ),
          const SizedBox(height: 10),
          const Text("Cliente"),
          const SizedBox(height: 20),
          //Parte Conductor
          const CircleAvatar(
            backgroundImage: AssetImage('assets/images/pasajero.png'),
            radius: 50,
            backgroundColor: Colors.black,
          ),
          const SizedBox(height: 10),
          const Text("Cliente"),
        ]),
      ),
    ));
  }
}
