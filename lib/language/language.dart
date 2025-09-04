

import 'package:get/get.dart';
import 'package:voiceofislam/language/bangla.dart';
import 'package:voiceofislam/language/english.dart';
import 'package:voiceofislam/language/language.dart';



class Languages extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    'en_US' : english,
    'bn_BD' : bangla
  };


}