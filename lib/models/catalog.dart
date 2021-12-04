import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:firebase_storage/firebase_storage.dart';



class CatalogueModel{

  Item getById(int id)=> items.firstWhere((element) => element.id==id); // get item by id

  Item getByPosition(int pos) => items[pos];  //get by position
   static final items= [
     Item(
          1,
         "Engineering Mathematics 1",
         "Mathematics Textbook",
         229,
         "#33505a",
         "https://firebasestorage.googleapis.com/v0/b/book-buddy-94ae8.appspot.com/o/catalogue_images%2Feng_mat.jpg?alt=media&token=86c448e6-6b29-4791-87cc-54595725ec45"
     ),
     Item(
         2,
         "Engineering Physics",
         "Physics Textbook",
         599,
         "#33505a",
         "https://firebasestorage.googleapis.com/v0/b/book-buddy-94ae8.appspot.com/o/catalogue_images%2Feng_phy.jpg?alt=media&token=be4eb5ed-acfa-4ba0-9cf4-3627aefdab67"
     ),
     Item(
         3,
         "Engineering Chemistry",
         "Chemistry Textbook",
         399 ,
         "#33505a",
         "https://firebasestorage.googleapis.com/v0/b/book-buddy-94ae8.appspot.com/o/catalogue_images%2Feng_chem.jpg?alt=media&token=c42a773c-6411-480b-8e12-b22f13a70770"
     ),
     Item(
         4,
         "Engineering Graphics",
         "Drawing Textbook",
         295 ,
         "#33505a",
         "https://firebasestorage.googleapis.com/v0/b/book-buddy-94ae8.appspot.com/o/catalogue_images%2Feng_graph.jpg?alt=media&token=c43bf1cd-2f65-4b2b-a443-b535b7acb708"
     ),
     Item(
         5,
         "Let Us C",
         "C Programming",
         160 ,
         "#33505a",
         "https://firebasestorage.googleapis.com/v0/b/book-buddy-94ae8.appspot.com/o/catalogue_images%2Fc.jpg?alt=media&token=97196c14-111b-42af-8087-640dae16d3ed"
     ),
     Item(
         6,
         "Computer Graphics",
         "Graphics",
         320,
         "#33505a",
         "https://firebasestorage.googleapis.com/v0/b/book-buddy-94ae8.appspot.com/o/catalogue_images%2Fcg.jpg?alt=media&token=9901816e-0e2b-4df0-8175-aa026f5ee03b"
     ),
     Item(
         7,
         "Java Complete Reference",
         "Java",
         899 ,
         "#33505a",
         "https://firebasestorage.googleapis.com/v0/b/book-buddy-94ae8.appspot.com/o/catalogue_images%2Fjava.png?alt=media&token=df3da2c0-8f41-4551-9dbc-dbda4a0e1791"
     ),
     Item(
         8,
         "Data Logic and Computer Architecture",
         "DLCOA",
         799 ,
         "#33505a",
         "https://firebasestorage.googleapis.com/v0/b/book-buddy-94ae8.appspot.com/o/catalogue_images%2Fdlcoa.jpg?alt=media&token=0c213b70-2d65-44ac-87a3-9abddf098094"
     ),
   ];
}

class Item{
  late final int id;
  late final String name;
  late final String desc;
  late final int price;
  late final String color;
  late final String image;

  Item(this.id, this.name, this.desc, this.price, this.color, this.image,);

}
// ₹

// Future<Widget> _getImage(BuildContext context, String image) async{
//   Image m;
//   await FireSto.loadImage(context, image).then({downloadUrl})
// }


