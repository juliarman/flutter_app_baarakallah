class ModelTasbih {

  String arab;
  String latin;
  String translate;
  int count = 0;

  ModelTasbih({this.arab, this.latin, this.translate, this.count});
}

var dataTasbih = [

  ModelTasbih(
    arab: 'سُبْحَانَ اللهِ',
    latin: 'Subhaanallah',
    translate: '"Maha Suci Allah."',
    count: 0,
  ),


  ModelTasbih(
    arab: 'الحمد لله',
    latin: 'Alhamdulillah',
    translate: '"Segala puji bagi Allah',
    count: 0,
  ),


  ModelTasbih(
    arab: 'اَللهُ اَكْبَرُ',
    latin: 'Allahu akbar',
    translate: '"Maha suci Allah"',
    count: 0,
  ),


];


