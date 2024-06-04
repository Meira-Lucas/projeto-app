import 'package:flutter/material.dart';

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
              SizedBox(height: 15,),
              Image.network(
                'img/titulo_cur.png',
              ),
              SizedBox(height: 15,),
              Container(
                padding: const EdgeInsets.all(10), // Padding interno do container do texto
                decoration: BoxDecoration(
                  color: Color(0xFFF9B639), // Cor de fundo do container do texto
                  borderRadius: BorderRadius.circular(10), // Borda arredondada
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Color(0xFFF28917), // Cor de fundo do título
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'VOZ FAMILIAR',
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
                      'SCOTT WEINGER, O DUBLADOR DE ALADDIN NOFILME, TAMBÉM EMPRESTOU SUA VOZ PARA OPERSONAGEM NO JOGO, TRAZENDO AUTENTICIDADE PARA A EXPERIÊNCIA DOS FÃS',
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
              SizedBox(height: 25,),
              Container(
                padding: const EdgeInsets.all(10), // Padding interno do container do texto
                decoration: BoxDecoration(
                  color: Color(0xFFF9B639), // Cor de fundo do container do texto
                  borderRadius: BorderRadius.circular(10), // Borda arredondada
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Color(0xFFF28917), // Cor de fundo do título
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'EASTER EGG',
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
                      'O JOGO ESTAVA REPLETO DE SEGREDOS E EASTER EGGS, COMO O FAMOSO TRUQUE DE "SELEÇÃO DE NÍVEL" QUE PERMITIA AOS JOGADORES ACESSAR QUALQUER FASE DO JOGO A QUALQUER MOMENTO. ',
                      textAlign: TextAlign.center, // Alinha o texto no centro
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFF1F2F2), // Cor do texto
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25,),
              Container(
                padding: const EdgeInsets.all(10), // Padding interno do container do texto
                decoration: BoxDecoration(
                  color: Color(0xFFF9B639), // Cor de fundo do container do texto
                  borderRadius: BorderRadius.circular(10), // Borda arredondada
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Color(0xFFF28917), // Cor de fundo do título
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'CENAS DO FILME',
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
                      'ALGUNS NÍVEIS DO JOGO FORAM PROJETADOS PARA RECRIAR CENAS ICÔNICAS DO FILME, PERMITINDO AOS JOGADORES REVIVER MOMENTOS MEMORÁVEIS DA HISTÓRIA DE ALADDIN DE UMA MANEIRA INTERATIVA',
                      textAlign: TextAlign.center, // Alinha o texto no centro
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFF1F2F2), // Cor do texto
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
