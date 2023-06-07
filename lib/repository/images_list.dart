import 'package:globalsolution/model/images.dart';

class ImagesRepository {
  static List<ImageDetails> imageList = [
    ImageDetails(
      id: '8901267890',
      imageUrl:
          'https://midias.agazeta.com.br/2022/06/03/drones-tem-contribuido-para-reduzir-problemas-de-mao-de-obra-na-zona-rural-do-es-774416-article.jpg',
      localizacao: 'Porto Alegre',
      latitude: '89.012',
      longitude: '67.890',
      tipoPlantacao: 'Soja',
      temDoenca: "Sim",
    ),
    ImageDetails(
      id: '1203456789',
      imageUrl:
          'https://f.i.uol.com.br/folha/mercado/images/17145221.jpeg',
      localizacao: 'Curitiba',
      latitude: '12.345',
      longitude: '67.890',
      tipoPlantacao: 'Milho',
      temDoenca: "Não",
    ),
    ImageDetails(
      id: '3456789012',
      imageUrl:
          'https://f.i.uol.com.br/folha/mercado/images/17145221.jpeg',
      localizacao: 'Florianópolis',
      latitude: '34.567',
      longitude: '89.012',
      tipoPlantacao: 'Trigo',
      temDoenca: "Sim",
    ),
    ImageDetails(
      id: '5678901234',
      imageUrl:
          'https://f.i.uol.com.br/folha/mercado/images/17145221.jpeg',
      localizacao: 'Brasília',
      latitude: '56.789',
      longitude: '23.456',
      tipoPlantacao: 'Arroz',
      temDoenca: "Não",
    ),
    ImageDetails(
      id: '7890123456',
      imageUrl:
          'https://f.i.uol.com.br/folha/mercado/images/17145221.jpeg',
      localizacao: 'Recife',
      latitude: '78.901',
      longitude: '12.345',
      tipoPlantacao: 'Feijão',
      temDoenca: "Sim",
    ),
    ImageDetails(
      id: '9012345678',
      imageUrl:
          'https://f.i.uol.com.br/folha/mercado/images/17145221.jpeg',
      localizacao: 'Salvador',
      latitude: '90.123',
      longitude: '56.789',
      tipoPlantacao: 'Batata',
      temDoenca: "Não",
    ),
    ImageDetails(
      id: '2345678901',
      imageUrl:
          'https://f.i.uol.com.br/folha/mercado/images/17145221.jpeg',
      localizacao: 'Goiânia',
      latitude: '23.456',
      longitude: '90.123',
      tipoPlantacao: 'Café',
      temDoenca: "Sim",
    ),
    ImageDetails(
      id: '4567890123',
      imageUrl:
          'https://f.i.uol.com.br/folha/mercado/images/17145221.jpeg',
      localizacao: 'São Paulo',
      latitude: '45.678',
      longitude: '34.567',
      tipoPlantacao: 'Abacaxi',
      temDoenca: "Não",
    ),
    ImageDetails(
      id: '6789012345',
      imageUrl:
          'https://f.i.uol.com.br/folha/mercado/images/17145221.jpeg',
      localizacao: 'Rio de Janeiro',
      latitude: '67.890',
      longitude: '78.901',
      tipoPlantacao: 'Laranja',
      temDoenca: "Sim",
    ),
    ImageDetails(
      id: '9012345678',
      imageUrl:
          'https://f.i.uol.com.br/folha/mercado/images/17145221.jpeg',
      localizacao: 'Belém',
      latitude: '90.123',
      longitude: '56.789',
      tipoPlantacao: 'Melancia',
      temDoenca: "Não",
    ),
  ];


  List<ImageDetails> filterImage({required String temDoenca}){
    List<ImageDetails> images = ImagesRepository.imageList;
    List<ImageDetails> imageFilter = [];

    for (int i = 0; i < images.length; i++) {
      if (images[i].temDoenca == temDoenca) {
        imageFilter.add(images[i]);
      }
    }
    return imageFilter;
  }

}
