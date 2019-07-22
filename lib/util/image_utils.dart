import 'package:flutter/widgets.dart';
import 'package:imooc/util/utils.dart';

Widget loadAssetImage(String name, {double width, double height, BoxFit fit}){
  return Image.asset(
    Utils.getImgPath(name),
    height: height,
    width: width,
    fit: fit,
  );
}

