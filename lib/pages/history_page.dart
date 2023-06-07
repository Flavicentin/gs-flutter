// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:globalsolution/model/images.dart';

import '../repository/images_list.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  bool isButton1Clicked = false;
  bool isButton2Clicked = false;
  List<ImageDetails> imageList = ImagesRepository.imageList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Histórico'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isButton1Clicked = !isButton1Clicked;
                      isButton2Clicked = false;

                      if (isButton1Clicked) {
                        imageList =
                            ImagesRepository().filterImage(temDoenca: 'Sim');
                      } else {
                        imageList = ImagesRepository.imageList;
                      }
                    });
                  },
                  child: Container(
                    color: isButton1Clicked ? Colors.green : Colors.grey,
                    height: 50,
                    alignment: Alignment.center,
                    child: const Text('Plantações Com Doenças'),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isButton2Clicked = !isButton2Clicked;
                      isButton1Clicked = false;

                      if (isButton2Clicked) {
                        imageList =
                            ImagesRepository().filterImage(temDoenca: 'Não');
                      } else {
                        imageList = ImagesRepository.imageList;
                      }
                    });
                  },
                  child: Container(
                    color: isButton2Clicked ? Colors.green : Colors.grey,
                    height: 50,
                    alignment: Alignment.center,
                    child: const Text('Plantações Sem Doenças'),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: imageList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.greenAccent,
                    child:
                        Text((imageList[index].tipoPlantacao).substring(0, 1)),
                  ),
                  title: Text(imageList[index].tipoPlantacao),
                  subtitle: Text('${imageList[index].localizacao}'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
