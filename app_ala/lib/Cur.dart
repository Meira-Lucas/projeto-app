import 'package:flutter/material.dart';
import 'Curiosidade.dart';

final List<Curiosidade> curiosidade = [
  Curiosidade(
    titulo: 'VOZ FAMILIAR', 
    texto: 'SCOTT WEINGER, O DUBLADOR DE ALADDIN NOFILME, TAMBÉM EMPRESTOU SUA VOZ PARA OPERSONAGEM NO JOGO, TRAZENDO AUTENTICIDADE PARA A EXPERIÊNCIA DOS FÃS',
  ),
  Curiosidade(
    titulo: 'EASTER EGG', 
    texto: 'O JOGO ESTAVA REPLETO DE SEGREDOS E EASTER EGGS, COMO O FAMOSO TRUQUE DE "SELEÇÃO DE NÍVEL" QUE PERMITIA AOS JOGADORES ACESSAR QUALQUER FASE DO JOGO A QUALQUER MOMENTO.',
  ),
  Curiosidade(
    titulo: 'CENAS DO FILME', 
    texto: 'ALGUNS NÍVEIS DO JOGO FORAM PROJETADOS PARA RECRIAR CENAS ICÔNICAS DO FILME, PERMITINDO AOS JOGADORES REVIVER MOMENTOS MEMORÁVEIS DA HISTÓRIA DE ALADDIN DE UMA MANEIRA INTERATIVA',
  ),
];

class Cur extends StatelessWidget {
  const Cur({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Curiosidades'),
        backgroundColor: const Color(0xFFF9B639),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45.0), // Adiciona padding horizontal
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 35),

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
                    'CURIOSIDADES',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 30,
                      color:Color(0xFFF1F2F2),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 40),

              Column(
                children: curiosidade.map((_curiosidade){
                  return Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10), // Padding interno do container do texto
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 216, 150, 7), // Cor de fundo do container do texto
                          borderRadius: BorderRadius.circular(10), // Borda arredondada
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 194, 132, 0), // Cor de fundo do título
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  _curiosidade.titulo,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white, // Cor do texto do título
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(height: 10,),

                            Text(
                              _curiosidade.texto,
                              textAlign: TextAlign.center, // Alinha o texto no centro
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFF1F2F2), // Cor do texto
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 35),
                    ], 
                  );   
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
