import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';


void main() {
  runApp(const ChuvaDart());
}

class ChuvaDart extends StatelessWidget {
  const ChuvaDart({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.white12),
        useMaterial3: true,
      ),
      home: const Calendar(),
    );
  }
  }

  class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
    State<Calendar> createState() => _CalendarState();
  }

  class _CalendarState extends State<Calendar> {
    DateTime _currentDate = DateTime(2023, 11, 26);


    void _changeDate(DateTime newDate) {
      setState(() {
        _currentDate = newDate;
      });
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          automaticallyImplyLeading: false,
            toolbarHeight: 198.0,
            backgroundColor: Color(0xff475c6b),
            title: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text('Chuva ❤ Flutter',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(height: 10.0),
                Text('Programação',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    )),
                ButtonBar(),
                ElevatedButton(onPressed: () {},
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                        Icon(Icons.calendar_month,
                        color: Colors.black),
                    SizedBox(width: 70),
                    Text('Exibindo todas as atividades',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black
                        )),
                  ],
                ),
                ),
                SizedBox(height: 20),
                Container(
                    padding: EdgeInsets.all(15.0),
                    color: Color(0xff3949bf),
                    margin: EdgeInsets.only(bottom: 0),
                    child: Row(
                      children: <Widget>[
                        Text('Nov',
                            style: TextStyle(color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold)),
                        SizedBox(width: 10),
                        Text('2023',
                            style: TextStyle(color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold)),
                        SizedBox(width: 30),
                       Text('26', style: TextStyle(color: Colors.white, fontSize: 15.0)),
                        SizedBox(width: 30),
                          Text('27',
                            style: TextStyle(color: Colors.white,
                                fontSize: 15.0)),
                        SizedBox(width: 30),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Day28()
                            ) );
                          },
                          child: Text('28',
                              style: TextStyle(color: Colors.white,
                                  fontSize: 15.0)),
                        ),
                        SizedBox(width: 30),
                        Text('29',
                            style: TextStyle(color: Colors.white,
                                fontSize: 15.0)),
                        SizedBox(width: 30),
                        Text('30',
                            style: TextStyle(color: Colors.white,
                                fontSize: 15.0)),
                      ],
                    )
                ),
              ],

            )
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                  ),
                  child: Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(left: 6.0),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey, // Cor da sombra
                            offset: Offset(0, 3), // Deslocamento da sombra (horizontal, vertical)
                            blurRadius: 2, // Raio de desfoque da sombra
                            spreadRadius: 0, // Espalhamento da sombra
                          ),
                        ],
                        color: Color(0xfffcf9f5), border:
                       Border.all(
                          color: Colors.grey,
                          width: 0.3,
                        ),
                      ),
                      child: GestureDetector( onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Activity()
                        )
                        );
                      },
                        child: Column(
                          children: <Widget>[
                            Text('Mesa redonda de 07:00 até 08:00'),
                            Text('A Física dos Buracos Negros Supermassivos',
                                style: TextStyle(
                                    fontSize: 20.0)),
                            Text('Stephen William Hawking'),
                          ]
                      )
                  )
                  ),
              ),
              SizedBox(height: 20),
              Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.orange,
                ),
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 6.0),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey, // Cor da sombra
                        offset: Offset(0, 3), // Deslocamento da sombra (horizontal, vertical)
                        blurRadius: 2, // Raio de desfoque da sombra
                        spreadRadius: 0, // Espalhamento da sombra
                      ),
                    ],
                    color: Color(0xfffcf9f5), border:
                  Border.all(
                    color: Colors.grey,
                    width: 0.3,
                  ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Text('Palestra de 08:00 até 09:00'),
                      Text('Métodos Avançados na Busca por',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20.0)),
                      Text('Inteligência Extraterrestre',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20.0,
                          ))
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.purple,
                ),
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 6.0),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey, // Cor da sombra
                        offset: Offset(0, 3), // Deslocamento da sombra (horizontal, vertical)
                        blurRadius: 2, // Raio de desfoque da sombra
                        spreadRadius: 0, // Espalhamento da sombra
                      ),
                    ],
                    color: Color(0xfffcf9f5), border:
                  Border.all(
                    color: Colors.grey,
                    width: 0.3,
                  ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Text('Apresentação de Pôster de 08:00 até 09:00'),
                      Text('Astrofísica Relativista: Explorando as',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20.0)),
                      Text('Previsões de Einstein',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20.0,
                          )),
                      Text('Neil deGrasse Tyson, Stephen William Hawking'),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.orange,
                ),
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 6.0),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey, // Cor da sombra
                        offset: Offset(0, 3), // Deslocamento da sombra (horizontal, vertical)
                        blurRadius: 2, // Raio de desfoque da sombra
                        spreadRadius: 0, // Espalhamento da sombra
                      ),
                    ],
                    color: Color(0xfffcf9f5), border:
                  Border.all(
                    color: Colors.grey,
                    width: 0.3,
                  ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Text('Apresentação de Pôster de 08:00 até 09:00'),
                      Text('Vida Além da Terra: Uma Perspectiva',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20.0)),
                      Text('Astrobiológica',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20.0,
                          ))
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.brown,
                ),
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 6.0),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey, // Cor da sombra
                        offset: Offset(0, 3), // Deslocamento da sombra (horizontal, vertical)
                        blurRadius: 2, // Raio de desfoque da sombra
                        spreadRadius: 0, // Espalhamento da sombra
                      ),
                    ],
                    color: Color(0xfffcf9f5), border:
                  Border.all(
                    color: Colors.grey,
                    width: 0.3,
                  ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Text('Palestra de 09:00 até 10:00'),
                      Text('Biossinais em Mundos Oceânicos: Europa e',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20.0)),
                      Text('Encélado',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20.0,
                          )),
                      Text('Fabiano SantAna'),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                ),
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 6.0),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey, // Cor da sombra
                        offset: Offset(0, 3), // Deslocamento da sombra (horizontal, vertical)
                        blurRadius: 2, // Raio de desfoque da sombra
                        spreadRadius: 0, // Espalhamento da sombra
                      ),
                    ],
                    color: Color(0xfffcf9f5), border:
                  Border.all(
                    color: Colors.grey,
                    width: 0.3,
                  ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Text('Apresentação de Pôster de 09:00 até 11:00'),
                      Text('Bioassinaturas em Rochas Espaciais',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20.0)),
                    ],
                  ),
                ),
              ),
              SizedBox(height:20),
            ],
          ),
        ),
      );
    }
  }


class Day28 extends StatelessWidget {
  const Day28({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
          toolbarHeight: 198.0,
          backgroundColor: Color(0xff475c6b),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text('Chuva ❤ Flutter',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(height: 10.0),
              Text('Programação',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  )),
              ButtonBar(),
              ElevatedButton(onPressed: () {},
                child: Row(
                  children: <Widget>[
                    Icon(Icons.calendar_month,
                        color: Colors.black),
                    SizedBox(width: 70),
                    Text('Exibindo todas as atividades',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black
                        )),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                  padding: EdgeInsets.all(15.0),
                  color: Color(0xff3949bf),
                  margin: EdgeInsets.only(bottom: 0),
                  child: Row(
                    children: <Widget>[
                      Text('Nov',
                          style: TextStyle(color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold)),
                      SizedBox(width: 10),
                      Text('2023',
                          style: TextStyle(color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold)),
                      SizedBox(width: 30),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Calendar(),
                          ) );
                        },
                        child: Text('26',
                            style: TextStyle(color: Colors.white,
                                fontSize: 15.0)),
                      ),
                      SizedBox(width: 30),
                       Text('27',
                            style: TextStyle(color: Colors.white,
                                fontSize: 15.0)),
                      SizedBox(width: 30),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Day28()
                          ) );
                        },
                        child: Text('28',
                            style: TextStyle(color: Colors.white,
                                fontSize: 15.0)),
                      ),
                      SizedBox(width: 30),
                      Text('29',
                            style: TextStyle(color: Colors.white,
                                fontSize: 15.0)),
                      SizedBox(width: 30),
                      Text('30',
                            style: TextStyle(color: Colors.white,
                                fontSize: 15.0)),
                    ],
                  )
              ),
            ],

          )
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(top: 10),
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.purple,
                ),
                child: Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(left: 6.0),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey, // Cor da sombra
                          offset: Offset(0, 3), // Deslocamento da sombra (horizontal, vertical)
                          blurRadius: 2, // Raio de desfoque da sombra
                          spreadRadius: 0, // Espalhamento da sombra
                        ),
                      ],
                      color: Color(0xfffcf9f5), border:
                    Border.all(
                      color: Colors.grey,
                      width: 0.3,
                    ),
                    ),
                    child: Column(
                        children: <Widget>[
                          Text('Apresentação de Pôster de 08:00 até 09:00'),
                          Text('Analisando Estruturas Alienígenas: Uma',
                              style: TextStyle(
                                  fontSize: 20.0)),
                          Text('Visão Teórica', style: TextStyle(
                            fontSize: 20.0,
                          )),
                        ]
                    )
                )
            ),
            SizedBox(height: 20),
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.greenAccent,
              ),
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.only(left: 6.0),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey, // Cor da sombra
                      offset: Offset(0, 3), // Deslocamento da sombra (horizontal, vertical)
                      blurRadius: 2, // Raio de desfoque da sombra
                      spreadRadius: 0, // Espalhamento da sombra
                    ),
                  ],
                  color: Color(0xfffcf9f5), border:
                Border.all(
                  color: Colors.grey,
                  width: 0.3,
                ),
                ),
                child: Column(
                  children: <Widget>[
                    Text('Mesa redonda de 08:00 até 09:00'),
                    Text('Estrelas de Baixa Massa e a Longevidade',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20.0)),
                    Text('Estelar',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20.0,
                        ))
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.purple,
              ),
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.only(left: 6.0),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey, // Cor da sombra
                      offset: Offset(0, 3), // Deslocamento da sombra (horizontal, vertical)
                      blurRadius: 2, // Raio de desfoque da sombra
                      spreadRadius: 0, // Espalhamento da sombra
                    ),
                  ],
                  color: Color(0xfffcf9f5), border:
                Border.all(
                  color: Colors.grey,
                  width: 0.3,
                ),
                ),
                child: Column(
                  children: <Widget>[
                    Text('Apresentação de Pôster de 08:00 até 09:00'),
                    Text('Meteoritos: Mensageiros de Histórias',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20.0)),
                    Text('Cósmicas',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20.0,
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.orange,
              ),
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.only(left: 6.0),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey, // Cor da sombra
                      offset: Offset(0, 3), // Deslocamento da sombra (horizontal, vertical)
                      blurRadius: 2, // Raio de desfoque da sombra
                      spreadRadius: 0, // Espalhamento da sombra
                    ),
                  ],
                  color: Color(0xfffcf9f5), border:
                Border.all(
                  color: Colors.grey,
                  width: 0.3,
                ),
                ),
                child: Column(
                  children: <Widget>[
                    Text('Palestra de 09:00 até 11:00'),
                    Text('Vida em Marte: Evidências, Desafios e ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20.0)),
                    Text('Perspectivas',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20.0,
                        ))
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.orange,
              ),
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.only(left: 6.0),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey, // Cor da sombra
                      offset: Offset(0, 3), // Deslocamento da sombra (horizontal, vertical)
                      blurRadius: 2, // Raio de desfoque da sombra
                      spreadRadius: 0, // Espalhamento da sombra
                    ),
                  ],
                  color: Color(0xfffcf9f5), border:
                Border.all(
                  color: Colors.grey,
                  width: 0.3,
                ),
                ),
                child: Column(
                  children: <Widget>[
                    Text('Palestra de 09:30 até 10:00'),
                    Text('Impacto de Flares Estelares na Atmosfera',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20.0)),
                    Text('de Exoplanetas',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20.0,
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.greenAccent,
              ),
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.only(left: 6.0),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey, // Cor da sombra
                      offset: Offset(0, 3), // Deslocamento da sombra (horizontal, vertical)
                      blurRadius: 2, // Raio de desfoque da sombra
                      spreadRadius: 0, // Espalhamento da sombra
                    ),
                  ],
                  color: Color(0xfffcf9f5), border:
                Border.all(
                  color: Colors.grey,
                  width: 0.3,
                ),
                ),
                child: Column(
                  children: <Widget>[
                    Text('Mesa redonda de 09:30 até 12:00'),
                    Text('Desvendando Mistérios de Pulsares e ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20.0)),
                    Text('Magnetares',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20.0)),
                  ],
                ),
              ),
            ),
            SizedBox(height:20),
          ],
        ),
      ),
    );
  }
}


class Activity extends StatefulWidget {
  const Activity({super.key});

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  bool _favorited = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
      child: Column(
        children: <Widget> [
          Container(
            color: Colors.purple,
            width: double.infinity,
            height: 20,
            child: Text('Astrofísica e Cosmologia',
            style: TextStyle(
              color: Colors.white
            )),
          ),
          SizedBox(height: 30),
          Text('A Física dos Buracos Negros',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          )),
          Text('Supermassivos',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold)),
          SizedBox(height: 30),
          Column(
            children: <Widget> [
              Container(
                margin: EdgeInsets.only(left: 10),
                  child: Row(
                    children: <Widget> [
                      Icon(Icons.access_time,
                          color: Colors.blue,
                          size: 20),
                      SizedBox(width: 5),
                      Text('Domingo 07:00h - 08:00h',
                      style: TextStyle(
                        fontSize: 15,
                      ))
                    ]
                  ),
              ),
              SizedBox(height: 10),
              Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Row(
                      children: <Widget> [
                        Icon(Icons.location_on,
                            color: Colors.blue,
                            size: 20),
                        SizedBox(width: 5),
                        Text('Maputo',
                            style: TextStyle(
                              fontSize: 15,
                            ))
                      ]
                  )
              ),
              SizedBox(height: 30),
              Container(
                width: double.infinity,
                child: ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    _favorited = !_favorited;
                  });
                },
                icon: _favorited ? const Icon(Icons.star, color: Colors.white) : const Icon(Icons.star_outline, color: Colors.white),
                label: Text(_favorited ? 'Remover da sua agenda' : 'Adicionar à sua agenda',
                style: TextStyle(color: Colors.white)),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Color(0xff00008B)),
                    elevation: MaterialStateProperty.all<double>(4.0),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0), // Define o raio como 0
                      ),
              ),
              ),
                )
              ),
              SizedBox(height: 40),
              Container(
                child: Text('A física dos buracos negros supermassivos explora\n fenômenos intensos e enigmáticos no universo. Esses\n objetos astronômicos, com milhões a bilhões de vezes\n a massa do Sol, influenciam fortemente sua vizinhança\n cósmica, afetando a evolução das galáxias, e\n desafiando nosso entendimento sobre gravidade e a\n natureza do espaço-tempo.')
              ),
              SizedBox(height: 50),
              Container(
                  margin: EdgeInsets.only(left: 20),
                child: Row(
                  children: <Widget> [
                    Text('Palestrante',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
                  ],
                )
              ),
             SizedBox(height: 20),
             Container(
               margin: EdgeInsets.only(left: 20),
              child: Row(
              children: <Widget> [ CircleAvatar (
                radius: 30,
                backgroundImage: CachedNetworkImageProvider('https://static.galoa.com.br/file/Eventmanager-Private/styles/large/s3/eventmanager_person/Screenshot%202023-10-10%20at%2013.06.35.png?VersionId=4_z9e083e414507696175f50716_f10473fd681469d07_d20231010_m160744_c003_v0312007_t0020_u01696954064581&itok=XSqu4FiW'),
             ),
                SizedBox(width: 10),
                Text('Stephen William Hawking',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                )),
             ]
          ),
      ),
              Container(
                margin: EdgeInsets.only(left: 90),
                child: Row(
                  children: <Widget> [
                    Text('Universidade de Cambridge')
                  ]
                )
              )
            ]
            )
        ],
      ),
      )
    );
  }
}