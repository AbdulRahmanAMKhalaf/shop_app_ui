import 'package:equatable/equatable.dart';
import 'package:shop_app_ui/cores/utils/images/images.dart';

class OnBourdingItem extends Equatable{
  final String image;
  final String headTitle;
  final String bodyText;

  const OnBourdingItem({required this.image,required this.headTitle,required this.bodyText});

  @override
  // TODO: implement props
  List<Object?> get props => [headTitle,bodyText,image];
  
}
List<OnBourdingItem>onBourdingList=[
  OnBourdingItem(
    image:AppImages.clothesImage,
    bodyText:'We are here to meet your needs',
    headTitle: 'Every thing at one place',
  ),
  OnBourdingItem(
      image: AppImages.safeOperationImage,
      headTitle:'Security transaction',
      bodyText: 'safe operation when pay on-line by credit card'),
  OnBourdingItem(
      image: AppImages.salesImage,
      headTitle: 'Big sales!!!!!',
      bodyText: 'the best price is here with best sales'),
];