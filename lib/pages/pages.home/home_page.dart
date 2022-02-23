import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Uber Clone'),
      ),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.red, Colors.green])),
          child: Column(children: [
            ClipPath(
              clipper: DiagonalPathClipperTwo(),
              child: Container(
                color: Colors.white,
                height: MediaQuery.of(context).size.height * 0.30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/images/logo_app.png',
                        width: 150, height: 100),
                    const Text("Rapido Y Facil")
                  ],
                ),
              ),
            ),
            const SizedBox(height: 50),
            const Text("SELECCIONA TU ROL",
                style: TextStyle(color: Colors.white)),
            const SizedBox(height: 50),
            const CircleAvatar(
              backgroundImage: AssetImage('assets/images/pasajero.png'),
              radius: 50,
              backgroundColor: Colors.grey,
            ),
            const SizedBox(height: 10),
            const Text("Cliente", style: TextStyle(color: Colors.white)),
            const SizedBox(height: 30),
            //Parte Conductor
            const CircleAvatar(
              backgroundImage: AssetImage('assets/images/pasajero.png'),
              radius: 50,
              backgroundColor: Colors.grey,
            ),
            const SizedBox(height: 10),
            const Text("Conductor", style: TextStyle(color: Colors.white)),
          ]),
        ),
      ),
    ));
  }
}
