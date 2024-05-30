import 'package:equatable/equatable.dart';
import 'package:shop_app_ui/cores/utils/images/images.dart';

class CategoryItem extends Equatable{
  final String image;
  final String text;

  const CategoryItem(this.image, this.text);

  @override
  // TODO: implement props
  List<Object?> get props =>[image,text];
}
List<CategoryItem>categoryList=[
  CategoryItem(
      AppImages.buildingImage,
      'Clothes Shop'),
  CategoryItem(
      AppImages.cartImage,
      'Supermarket'),
  CategoryItem(
      AppImages.paintImage,
      'Art'),
];