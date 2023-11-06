class Model
{

  String? image;


  Model(this.image,);

}

List lis = modelData.map((e) => Model(e["image"],)).toList();



var modelData = [

  {"image":"assets/img/list1.jpg",},
  {"image":"assets/img/list2.jpg",},
  {"image":"assets/img/list3.jpg",},
  {"image":"assets/img/list4.jpg",},
  {"image":"assets/img/list5.jpg",},
  {"image":"assets/img/list6.jpg",},
];