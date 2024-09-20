import 'package:flutter/material.dart';
import 'Plataformas.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<Plataformas> plataforma = [
  Plataformas(
    nome: 'WINDOWS', 
    imagem: 'https://upload.wikimedia.org/wikipedia/pt/e/e0/Windows_logo.png',
  ),
  Plataformas(
    nome: 'SNES', 
    imagem: 'https://cdn.pixabay.com/photo/2020/05/24/12/13/snes-5214011_960_720.png',
  ),
  Plataformas(
    nome: 'GAME BOY', 
    imagem: 'img/game_boy.png',
  ),
  Plataformas(
    nome: 'GBA', 
    imagem: 'img/gba.png',
  ),
  Plataformas(
    nome: 'AMIGAOS', 
    imagem: 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/da/Boing_Ball.svg/1200px-Boing_Ball.svg.png',
  ),
];

class Pla extends StatelessWidget {
  const Pla({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plataformas'),
        backgroundColor: const Color(0xFFF9B639),
      ),
      body: Column(
        children: [
          SizedBox(height: 20), // Espaço acima do carrossel
          CarouselSlider.builder(
            itemCount: plataforma.length,
            itemBuilder: (context, index, realIndex) {
              final _plataforma = plataforma[index];
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    _plataforma.imagem,
                    width: 250,
                    height: 250,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(height: 40),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFF9B639), // Cor de fundo do nome da plataforma
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      _plataforma.nome,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white, // Cor do texto
                      ),
                    ),
                  ),
                ],
              );
            },
            options: CarouselOptions(
              height: 500,
              enlargeCenterPage: true,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              enableInfiniteScroll: true,
              viewportFraction: 0.7,
            ),
          ),
        ],
      ),
    );
  }
}