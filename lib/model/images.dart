import 'package:flutter/material.dart';

class ImageDetails {
  String id;
  String imageUrl;
  String localizacao;
  String latitude;
  String longitude;
  String tipoPlantacao;
  String? temDoenca;

  ImageDetails({
    required this.id,
    required this.imageUrl,
    required this.localizacao,
    required this.latitude,
    required this.longitude,
    required this.tipoPlantacao,
    this.temDoenca
  });
}