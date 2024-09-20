import 'package:flutter/material.dart';
import 'Personagem.dart';

final List<Personagem> personagem = [
  Personagem(
    nome:'Aladdin',
    historia:'Aladdin , também conhecido como Príncipe Ali Ababwa , é o principal protagonista da franquia Aladdin . Um ex-rato de rua da cidade de Agrabah , Aladdin passou grande parte de sua juventude lutando por comida e se esquivando de guardas com seus companheiros macacos e papagaios, Abu e Iago. Embora otimista, a educação pobre de Aladdin o deixou com uma insegurança severa, fazendo-o se sentir inútil e indigno de amor, especificamente o da Princesa Jasmine. ',
    aparencia:'Aladdin é um jovem tradicionalmente bonito, esbelto e ligeiramente musculoso, com ombros largos, pele bronzeada, sem mamilos, cabelo preto bagunçado, sobrancelhas grossas e olhos castanhos.',
    imagem:'img/persoimg/aladdin.jpg',
  ),
  Personagem(
    nome:'Jasmine',
    historia:'Jasmine é a filha de dezesseis anos do rico sultão de Agrabah. Não querendo se casar com nenhum dos príncipes esnobes e egocêntricos que seu pai sugere, ela foge de casa, mas nunca tendo saído do palácio antes, ela inadvertidamente se mete em problemas quando dá uma maçã a um garoto sem pagar por ela. Antes que o comerciante possa puni-la amputando sua mão, um moleque de rua chamado Aladdin rapidamente intervém e a salva alegando que Jasmine é sua irmã.',
    aparencia:'Jasmine é uma jovem garota árabe e princesa de Agrabah, cuja aparência pode ser resumida em simplesmente "linda". Ela é mais conhecida por seu rosto bonito, sorriso encantador e linda voz para cantar.',
    imagem:'img/persoimg/jasmine.jpg',
  ),
  Personagem(
    nome:'Genie',
    historia:'O Gênio é o tritagonista. Eventualmente, sua lâmpada é colocada na Caverna das Maravilhas , onde é encontrada por Aladdin. Aladdin (apelidado de "Al" por Gênio) engana Gênio para libertar a si mesmo e Abu da Caverna das Maravilhas sem ter que desejar isso. Aladdin usa seu primeiro desejo para se tornar um príncipe para impressionar Jasmine , mas não antes de prometer a Gênio que o libertará da lâmpada usando seu terceiro desejo.',
    aparencia:'Genie foi visto em várias formas, incluindo algumas imitações notáveis. Sua aparência padrão, no entanto, é um homem azul, de peito largo, com três dedos e cabelo preto preso em um rabo de cavalo e uma barba com um redemoinho que se projeta no queixo.',
    imagem:'img/persoimg/genio.jpg',
  ),
  Personagem(
    nome:'Jafar',
    historia:'Jafar é apresentado como o sinistro Vizir Real do Sultão de Agrabah que deseja poder sobre Agrabah. Ele é a segunda autoridade mais poderosa em Agrabah, respondendo apenas ao Sultão. Ele está sempre acompanhado por seu papagaio de estimação sarcástico e tortuoso, Iago.',
    aparencia:'Jafar é um homem alto e esbelto, vestido com roupas extravagantes, sempre visto carregando um cajado dourado, com olhos de rubi e cabeça de cobra para complementar seus poderes mágicos. Jafar tem um cavanhaque preto e torcido e um bigode fraco, bem como delineador cinza.',
    imagem:'img/persoimg/jafar.jpg',
  ),
  Personagem(
    nome:'Iago',
    historia:'Jafar pegou Iago no bazar de Agrabah e o criou como seu cúmplice no crime, ensinando-o a falar fluentemente. ( Aladdin: O Retorno de Jafar ) Ele e Jafar permaneceram juntos desde então, com Jafar frequentemente viajando pelo mundo em busca de lendas e informações sobre Gênios , bem como encontrando conhecimento e relíquias que lhe dariam a habilidade de se tornar um feiticeiro poderoso, tudo o que Iago mantinha de olho enquanto se certificava de lembrar de cada pedaço de informação para Jafar.',
    aparencia:'Iago é um pássaro papagaio muito mesquinho e normalmente se alia a quem mais o beneficia. Ele é caracterizado pelo uso frequente de sarcasmo mordaz, bem como por uma sagacidade afiada. E ele também é conhecido como indelicado, agressivo, rabugento, desagradável, tenaz, despreocupado, erudito, generoso, idealista, malandro e descortês.',
    imagem:'img/persoimg/iago.jpg',
  ),
];

class Per extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personagens'),
        backgroundColor: const Color(0xFFF9B639),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: personagem.map((_personagem) {
              return Column(
                children: [
                  SizedBox(height: 30,),

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
                        _personagem.nome,
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 30,
                          color:Color(0xFFF1F2F2),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 30,),

                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                                return DescricaoPersonagem(personagem: _personagem);
                            },
                          ),
                        );
                      },
                      child: Image.network(
                        _personagem.imagem,
                        width: 300,
                      ),
                    ),
                  ),

                  SizedBox(height: 30,),
                ],
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}


class DescricaoPersonagem extends StatelessWidget {
  final Personagem personagem;

  DescricaoPersonagem({required this.personagem});


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Descrição do Personagem'),
        backgroundColor: const Color(0xFFF9B639),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45.0), // Adiciona padding horizontal
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              SizedBox(height: 30,),

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
                    personagem.nome,
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 30,
                      color:Color(0xFFF1F2F2),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 50,),

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
                          'HISTÓRIA',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white, // Cor do texto do título
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      personagem.historia,
                      textAlign: TextAlign.center, // Alinha o texto no centro
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFF1F2F2), // Cor do texto
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 30,),

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
                          'APARÊNCIA',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white, // Cor do texto do título
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 10,),

                    Text(
                      personagem.aparencia,
                      textAlign: TextAlign.center, // Alinha o texto no centro
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFF1F2F2), // Cor do texto
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }
}