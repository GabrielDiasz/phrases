import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:math';

void main(){
  runApp(MaterialApp(
    home:Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
    "Para sentir o amor, devemos antes comunicar o amor em atos, palavras e ações.",
    "A vida é sobre criar impacto, não uma renda.",
    "Para ter o que nunca teve, faça o que nunca fez.",
    "Pessoas limitadas perguntam se vão conseguir, pessoas vencedoras perguntam o que vão fazer para conseguir. E super-humanos perguntam quem vão se tornar ao conseguir.",
    "Duas estradas divergiam em uma bifurcação, e eu peguei a menos percorrida. E isso fez toda a diferença.",
    "A vida não é sobre ter, é sobre dar e ser.",
    "As pessoas bem sucedidas e mal sucedidas não variam muito em suas habilidades. Eles variam em seu desejo de alcançar o seu potencial.",
    "Daqui a 20 anos você estará mais decepcionado pelas coisas que você não fez, do que pelas que fez. Então, jogue fora suas amarras, navegue para longe do porto seguro, pegue os ventos em suas velas. Explore, sonha, descubra.",
    "Eu aprendi que as pessoas vão esquecer o que você disse, as pessoas vão esquecer o que você fez, mas as pessoas nunca esquecerão como você as fez sentir.",
    "As três maiores características de uma pessoa com crença de não merecimento são: perder, não terminar o que começou, e depois de tudo isso recomeçar.",
    "A simplicidade é o último grau de sofisticação.",
  ];
  var _frases_geradas = 'Clique abaixo para gerar uma nova frase!';

  void _gerarFrases(){
    var numeroSorteado = Random().nextInt(_frases.length);
    setState(() {
      _frases_geradas = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Frases do Dia'),
        backgroundColor: Colors.green,

      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          //width: double.infinity,
          /*decoration: BoxDecoration(
            border: Border.all(width: 3, color: Colors.amber),
          ),*/
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('images/logo.png'),
              Text(
                _frases_geradas,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 17,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                ),
              ),
              RaisedButton(
                child: Text(
                  'Nova Frase',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                color: Colors.green,
                onPressed: _gerarFrases,
              )
            ],
          ),
        ),
      ),
    );
  }
}




