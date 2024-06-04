import 'package:flutter/material.dart';

class His extends StatelessWidget {
  const His({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('História'),
        backgroundColor: const Color(0xFFF9B639),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45.0), // Adiciona padding horizontal
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 35,),
              Image.network(
                'img/titulo_historia.png',
              ),
              SizedBox(height: 15,),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  'img/game_historia.png',
                  width: 250,
                ),
              ),
              SizedBox(height: 35,),
              Container(
                padding: const EdgeInsets.all(10), // Padding interno do container do texto
                decoration: BoxDecoration(
                  color: Color(0xFFF9B639), // Cor de fundo do container do texto
                  borderRadius: BorderRadius.circular(10), // Borda arredondada
                ),
                child: Text(
                  'NO JOGO "ALADDIN" DE 1993,OS JOGADORES ASSUMEM O PAPEL DO PROTAGONISTA, ALADDIN, UM JOVEM LADRÃO QUE VIVE NAS RUAS DE AGRABAH, UMA CIDADE FICTÍCIA DO ORIENTE MÉDIO. A HISTÓRIA SEGUE DE PERTO O ENREDO DO FILME DA DISNEY, ONDE ALADDIN ENCONTRA UMA LÂMPADA MÁGICA CONTENDO UM GÊNIO QUE CONCEDE TRÊS DESEJOS. COM A AJUDA DO GÊNIO E DE SEU MACACO DE ESTIMAÇÃO, ABU,ALADDIN EMBARCA EM UMA JORNADA PARA GANHAR O CORAÇÃO DA PRINCESA JASMINE E DERROTAR O MALVADO FEITICEIRO JAFAR.', // Texto do botão
                  textAlign: TextAlign.center, // Alinha o texto no centro
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFF1F2F2), // Cor do texto
                  ),
                ),
              ),
              SizedBox(height: 35,),
              Container(
                padding: const EdgeInsets.all(10), // Padding interno do container do texto
                decoration: BoxDecoration(
                  color: Color(0xFFF9B639), // Cor de fundo do container do texto
                  borderRadius: BorderRadius.circular(10), // Borda arredondada
                ),
                child: Text(
                  'NO JOGO, OS JOGADORES ENFRENTAM VÁRIOS DESAFIOSE INIMIGOS ENQUANTO PERCORREM DIFERENTES NÍVEIS INSPIRADOS NO FILME.ELES PRECISAM CORRER,PULAR E LUTAR CONTRA GUARDAS DO PALÁCIO,CRIATURAS MÍSTICAS E OUTROS OBSTÁCULOS PARA AVANÇAR NA HISTÓRIA. ALÉM DISSO, O JOGO APRESENTA MINI-JOGOS E QUEBRACABEÇAS QUE COMPLEMENTAM A JOGABILIDADE PRINCIPAL.', // Texto do botão
                  textAlign: TextAlign.center, // Alinha o texto no centro
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
      ),
    );
  }
}
