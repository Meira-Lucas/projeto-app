import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'Sobre.dart';

final List<Sobre> sobre =[
  Sobre(
    titulo:'História',
    texto:'NO JOGO "ALADDIN" DE 1993,OS JOGADORES ASSUMEM O PAPEL DO PROTAGONISTA, ALADDIN, UM JOVEM LADRÃO QUE VIVE NAS RUAS DE AGRABAH, UMA CIDADE FICTÍCIA DO ORIENTE MÉDIO. A HISTÓRIA SEGUE DE PERTO O ENREDO DO FILME DA DISNEY, ONDE ALADDIN ENCONTRA UMA LÂMPADA MÁGICA CONTENDO UM GÊNIO QUE CONCEDE TRÊS DESEJOS. COM A AJUDA DO GÊNIO E DE SEU MACACO DE ESTIMAÇÃO, ABU,ALADDIN EMBARCA EM UMA JORNADA PARA GANHAR O CORAÇÃO DA PRINCESA JASMINE E DERROTAR O MALVADO FEITICEIRO JAFAR. OS JOGADORES ENFRENTAM VÁRIOS DESAFIOSE INIMIGOS ENQUANTO PERCORREM DIFERENTES NÍVEIS INSPIRADOS NO FILME.ELES PRECISAM CORRER,PULAR E LUTAR CONTRA GUARDAS DO PALÁCIO,CRIATURAS MÍSTICAS E OUTROS OBSTÁCULOS PARA AVANÇAR NA HISTÓRIA. ALÉM DISSO, O JOGO APRESENTA MINI-JOGOS E QUEBRACABEÇAS QUE COMPLEMENTAM A JOGABILIDADE PRINCIPAL.',
    imagem:'img/historiaimg.jpg',
  ),
  Sobre(
    titulo:'Desenvolvimento',
    texto:'O JOGO "ALADDIN" DE 1993 FOI DESENVOLVIDO PELA VIRGIN GAMES EM COLABORAÇÃO COM A DISNEY. O DESENVOLVIMENTO FOI LIDERADO POR DAVID PERRY, CONHECIDO POR SEU TRABALHO EM OUTROS JOGOS POPULARES DA ÉPOCA. A EQUIPE ENFRENTOU DESAFIOS TÉCNICOS PARA ADAPTAR A ANIMAÇÃO DO FILME PARA OS CONSOLES DE VIDEOGAME DA ÉPOCA, ESPECIALMENTE DEVIDO ÀS LIMITAÇÕES DE HARDWARE. ELES TAMBÉM TRABALHARAM DE PERTO COM A EQUIPE DE ANIMAÇÃO DA DISNEY PARA GARANTIR QUE O JOGO CAPTURASSE A ESSÊNCIA E O ESTILO VISUAL DO FILME. O RESULTADO FOI UM JOGO ACLAMADO PELA CRÍTICA E PELOS JOGADORES, QUE SE TORNOU UM CLÁSSICO DOS JOGOS DE PLATAFORMA DA ERA 16 BITS.',
    imagem:'img/game_historia.png',
  ),

];

class Sob extends StatelessWidget {
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
            children: sobre.map((_sobre) {
              return Column(
                children: [
                  SizedBox(height: 35,),
                  Container(
                    width:800,
                    height:70,
                      padding: const EdgeInsets.fromLTRB(10,0,10,10),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage('img/fundoTitulos.png'),
                          fit:BoxFit.fill,
                        ),
                      ),
                    child: Center(
                      child: Text(
                        _sobre.titulo,
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 30,
                          color:Color(0xFFF1F2F2),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 35),

                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      _sobre.imagem,
                      width: 250,
                    ),
                  ),

                  SizedBox(height: 35,),

                  Container(
                    padding: const EdgeInsets.all(10), // Padding interno do container do texto
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 216, 150, 7), // Cor de fundo do container do texto
                      borderRadius: BorderRadius.circular(10), // Borda arredondada
                    ),
                    child: Text(
                      _sobre.texto, // Texto do botão
                      textAlign: TextAlign.center, // Alinha o texto no centro
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFF1F2F2), // Cor do texto
                      ),
                    ),
                  ),

                  SizedBox(height: 10,),
                ],
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}