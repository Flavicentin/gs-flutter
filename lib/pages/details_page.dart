// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:globalsolution/model/images.dart';

import '../repository/images_list.dart';

class DetailPage extends StatefulWidget {
  final ImageDetails details;
  const DetailPage({super.key, required this.details});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.details.tipoPlantacao),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Image.network(widget.details.imageUrl),
          Text('ID: ${widget.details.id}'),
          Text('Localização: ${widget.details.localizacao}'),
          Text('latitude: ${widget.details.latitude}'),
          Text('Longitude: ${widget.details.longitude}'),
          Text('Tipo da Plantação: ${widget.details.tipoPlantacao}'),
          Text('Tem doenças Presente?: ${widget.details.temDoenca}')
        ],
      ),
    );
  }
}