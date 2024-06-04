import 'package:flutter/material.dart';
import 'His.dart';
import 'Des.dart';
import 'Pla.dart';
import 'Cur.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 126, 32, 116), // Define a cor de fundo como transparente
      ),
      home: const TelaMenu(),
    );
  }
}

class TelaMenu extends StatelessWidget {
  const TelaMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Adiciona o conteúdo acima da imagem de fundo
          Center(
            child: Column(
              children: [
                // Adiciona a linha com as imagens e o título
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'img/genio.png',
                      width: 50, 
                    ),
                    const SizedBox(width: 10), // Espaçamento entre a imagem e o texto
                    const SizedBox(width: 10), // Espaçamento entre o texto e a imagem
                    Image.network(
                      'img/titulo.png',
                      width: 300, 
                      
                    ),
                    const SizedBox(width: 10), // Espaçamento entre o texto e a imagem
                    Image.network(
                      'img/genio.png',
                      width: 50, 
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => His(),
                      ),
                    );
                  },
                    child: Text("H I S T Ó R I A"),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Color(0xFFF9B639)), 
                      foregroundColor: MaterialStateProperty.all(Color(0xFFF1F2F2)),  
                      padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 25)), 
                      minimumSize: MaterialStateProperty.all(Size(320, 0)), 
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), 
                      )),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Des(),
                      ),
                    );
                  },
                    child: Text("D E S E N V O L V I M E N T O"),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Color(0xFFF9B639)), 
                      foregroundColor: MaterialStateProperty.all(Color(0xFFF1F2F2)),  
                      padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 25)), 
                      minimumSize: MaterialStateProperty.all(Size(320, 0)), 
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), 
                      )),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Pla(),
                      ),
                    );
                  },
                    child: Text("P L A T A F O R M A S"),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Color(0xFFF9B639)), 
                      foregroundColor: MaterialStateProperty.all(Color(0xFFF1F2F2)),  
                      padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 25)), 
                      minimumSize: MaterialStateProperty.all(Size(320, 0)), 
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), 
                      )),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Cur(),
                      ),
                    );
                  },
                    child: Text('C U R I O S I D A D E S'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Color(0xFFF9B639)), 
                      foregroundColor: MaterialStateProperty.all(Color(0xFFF1F2F2)), 
                      padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 25)), 
                      minimumSize: MaterialStateProperty.all(Size(320, 0)), 
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), 
                      )),
                  ),
                ),
                const SizedBox(height: 30),
                Image.network(
                  'img/lampada1.png',
                  width: 250,
                )
              ], 
            ),
          ),
        ],
      ),
    );
  }
}

