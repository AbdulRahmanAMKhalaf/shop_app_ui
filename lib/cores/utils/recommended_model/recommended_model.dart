
import 'package:equatable/equatable.dart';
import 'package:shop_app_ui/cores/utils/images/images.dart';

class RecommendedItem extends Equatable{
  final String image;
  final String type;
  final String discount;

  const RecommendedItem(this.image, this.type, this.discount,);

  @override
  // TODO: implement props
  List<Object?> get props =>[image,type,discount];
}
List<RecommendedItem>recommendedList=[
  RecommendedItem(
      AppImages.recImsge1,
      'Pull&Bear',
      '20%'),
  RecommendedItem(
      AppImages.recImage2,
      'Zara',
      '40%'),
  RecommendedItem(
      AppImages.recImage3,
      'Pull&Bear',
      '10%'),
];