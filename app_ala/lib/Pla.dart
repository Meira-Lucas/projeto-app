import 'package:flutter/material.dart';

class Pla extends StatelessWidget {
  const Pla({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plataformas'),
        backgroundColor: const Color(0xFFF9B639),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45.0), // Adiciona padding horizontal
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 25,),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Image.network(
                          'https://upload.wikimedia.org/wikipedia/pt/e/e0/Windows_logo.png',
                          width: 100, // Ajuste conforme necessário
                          height: 100,
                        ),
                        SizedBox(height: 10,),
                        Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFFF9B639), // Cor de fundo do texto
                            borderRadius: BorderRadius.circular(10), // Borda arredondada
                          ),
                          padding: const EdgeInsets.all(8.0), // Padding interno do container do texto
                          child: Text(
                            'WINDOWS',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFF1F2F2), // Cor do texto
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                    child: Column(
                      children: [
                        Image.network(
                          'https://cdn.pixabay.com/photo/2020/05/24/12/13/snes-5214011_960_720.png',
                          width: 100, // Ajuste conforme necessário
                          height: 100,
                        ),
                        SizedBox(height: 10,),
                        Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFFF9B639), // Cor de fundo do texto
                            borderRadius: BorderRadius.circular(10), // Borda arredondada
                          ),
                          padding: const EdgeInsets.all(8.0), // Padding interno do container do texto
                          child: Text(
                            'SNES',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFF1F2F2), // Cor do texto
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 35,),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Image.network(
                          'img/game_boy.png',
                          width: 100, // Ajuste conforme necessário
                          height: 100,
                        ),
                        SizedBox(height: 10,),
                        Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFFF9B639), // Cor de fundo do texto
                            borderRadius: BorderRadius.circular(10), // Borda arredondada
                          ),
                          padding: const EdgeInsets.all(8.0), // Padding interno do container do texto
                          child: Text(
                            'GAME BOY',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFF1F2F2), // Cor do texto
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                    child: Column(
                      children: [
                        Image.network(
                          'img/gba.png',
                          width: 100, // Ajuste conforme necessário
                          height: 100,
                        ),
                        SizedBox(height: 10,),
                        Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFFF9B639), // Cor de fundo do texto
                            borderRadius: BorderRadius.circular(10), // Borda arredondada
                          ),
                          padding: const EdgeInsets.all(8.0), // Padding interno do container do texto
                          child: Text(
                            'GBA',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFF1F2F2), // Cor do texto
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 35,), // Adiciona espaçamento entre as seções
              Center(
                child: Column(
                  children: [
                    Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/d/da/Boing_Ball.svg/1200px-Boing_Ball.svg.png',
                      width: 100, // Ajuste conforme necessário
                      height: 100,
                    ),
                    SizedBox(height: 10,),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFF9B639), // Cor de fundo do texto
                        borderRadius: BorderRadius.circular(10), // Borda arredondada
                      ),
                      padding: const EdgeInsets.all(8.0), // Padding interno do container do texto
                      child: Text(
                        'AMIGAOS',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFF1F2F2), // Cor do texto
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
