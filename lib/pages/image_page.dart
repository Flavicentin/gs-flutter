// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:globalsolution/pages/details_page.dart';
import 'package:globalsolution/repository/images_list.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({super.key});

  @override
  Widget build(BuildContext context) {

    final imageList = ImagesRepository.imageList;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Imagens'),
        backgroundColor: Colors.green,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 1,
          mainAxisSpacing: 1
        ),
        itemCount: imageList.length,
        itemBuilder: (context, index){
          return GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(details: imageList[index]),
                  fullscreenDialog: true
                )
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: SizedBox(
                child: Image.network(
                  imageList[index].imageUrl
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
