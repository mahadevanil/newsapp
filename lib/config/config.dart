import '../constants/dimension.dart';
import '../constants/functional.constants.dart';
import '../constants/ui.constants.dart';

class Config {
  static const String apiKey = 'c9ea91122bcb432790ed9d8b53487d03';
  static const String locationKey = 'bdc_c5718d5a7926469f87b3719dc6aa53a4';
  static const String weatherKey = '14741ddb6b884c9db7033620241410';
  static const String newsBaseUrl = 'https://newsapi.org/v2';
  static const String weatherBaseUrl = 'https://api.weatherapi.com/v1';
  static const String locationApiBaseUrl = 'https://api-bdc.net';
}

//*---------------------------------------------------- (Constant function object)
FunctionalConstants fCon = FunctionalConstants();
//*---------------------------------------------------- (Constant UI object)
UiConstants uiCon = UiConstants();
//*---------------------------------------------------- (dimensions)
KDimension kDim = KDimension();

double width = 0;
double height = 0;
