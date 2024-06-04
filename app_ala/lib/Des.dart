import 'package:flutter/material.dart';

class Des extends StatelessWidget {
  const Des({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Desenvolvimento'),
        backgroundColor: const Color(0xFFF9B639),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45.0), // Adiciona padding horizontal
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 25,),
              Image.network(
                'img/titulo_des.png',
              ),
              SizedBox(height: 15,),
              Container(
                padding: const EdgeInsets.all(10), // Padding interno do container do texto
                decoration: BoxDecoration(
                  color: Color(0xFFF9B639), // Cor de fundo do container do texto
                  borderRadius: BorderRadius.circular(10), // Borda arredondada
                ),
                child: Text(
                  'O JOGO "ALADDIN" DE 1993 FOI DESENVOLVIDO PELA VIRGIN GAMES EM COLABORAÇÃO COM A DISNEY. O DESENVOLVIMENTO FOI LIDERADO POR DAVID PERRY, CONHECIDO POR SEU TRABALHO EM OUTROS JOGOS POPULARES DA ÉPOCA. A EQUIPE ENFRENTOU DESAFIOS TÉCNICOS PARA ADAPTAR A ANIMAÇÃO DO FILME PARA OS CONSOLES DE VIDEOGAME DA ÉPOCA, ESPECIALMENTE DEVIDO ÀS LIMITAÇÕES DE HARDWARE. ELES TAMBÉM TRABALHARAM DE PERTO COM A EQUIPE DE ANIMAÇÃO DA DISNEY PARA GARANTIR QUE O JOGO CAPTURASSE A ESSÊNCIA E O ESTILO VISUAL DO FILME. O RESULTADO FOI UM JOGO ACLAMADO PELA CRÍTICA E PELOS JOGADORES, QUE SE TORNOU UM CLÁSSICO DOS JOGOS DE PLATAFORMA DA ERA 16 BITS.', // Texto do botão
                  textAlign: TextAlign.center, // Alinha o texto no centro
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFF1F2F2), // Cor do texto
                  ),
                ),
              ),
              Image.network(
                'img/macaco.png',
                width: 170,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
