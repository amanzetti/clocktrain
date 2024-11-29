import 'package:app_shared/utils/enum/standard_rateo_enum.dart';
import 'package:app_shared/utils/ext/standard_rateo_ext.dart';

extension DimensionCalculations on double {
  double heightFromWidth(StandardRateo rateo) {
    return this / rateo.aspectRatio;
  }

  double paddingForAccessibility() {
    if (this < 44) {
      return 44 - this;
    }else{
      return 0;
    }
  }
}
