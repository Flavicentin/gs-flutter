// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return Column(
      children: [
        Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: size.height * .3,
                  width: size.width,
                  child: SafeArea(
                    child: Center(
                      child: Text(
                        'Seja Bem-Vindo!',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(color: Colors.green),
                ),
                Positioned(
                  bottom: -20,
                  child: Container(
                    height: 80,
                    width: size.width * .8,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(
                                      width: 2, color: Colors.grey)),
                              child: Icon(
                                Icons.android,
                                color: Colors.green,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Drones Ativos",
                                  style: TextStyle(fontWeight: FontWeight.w300),
                                ),
                                Text("5")
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(
                                      width: 2, color: Colors.grey)),
                              child: Icon(
                                Icons.camera,
                                color: Colors.green,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Registros",
                                  style: TextStyle(fontWeight: FontWeight.w300),
                                ),
                                Text("9+")
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: (size.height * .5) + 60,
              child: ListView(
                padding: EdgeInsets.all(10),
                scrollDirection: Axis.vertical,
                children: [
                  Card(
                    elevation: 0,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Icon(
                            Icons.agriculture,
                            size: 45,
                            color: Colors.green,
                          ),
                        ),
                        Text(
                          "DRONES NA AGRICULTURA",
                          style: TextStyle( 
                            color: Colors.green,
                            fontSize: 20.0,
                            letterSpacing: 3,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            "Descubra como a integração de drones na agricultura pode impulsionar a eficiência e aumentar a produtividade, fornecendo dados precisos e insights valiosos para otimizar suas operações agrícolas.",
                            style: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 16),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 0,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Icon(
                            Icons.incomplete_circle_outlined,
                            size: 45,
                            color: Colors.green,
                          ),
                        ),
                        Text(
                          "AGRICULTURA INTELIGENTE",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 20.0,
                            letterSpacing: 3,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            "Explore o futuro da agricultura inteligente e como os drones estão revolucionando o setor, oferecendo tecnologia avançada para melhorar o manejo, monitoramento e tomada de decisões na agricultura.",
                            style: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 16),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 0,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Icon(
                            Icons.emoji_emotions_outlined,
                            size: 45,
                            color: Colors.green,
                          ),
                        ),
                        Text(
                          "DRONES E SUSTENTABILIDADE",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 20.0,
                            letterSpacing: 3,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            "Conheça a inovação dos drones na agricultura e como eles estão impulsionando práticas sustentáveis, permitindo o monitoramento preciso das plantações, a detecção precoce de problemas e o uso eficiente de recursos.",
                            style: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 16),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}