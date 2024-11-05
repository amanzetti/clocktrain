import 'package:clocktrain/utils/enum/standard_rateo_enum.dart';
import 'package:clocktrain/utils/ext/standard_rateo_ext.dart';

extension DimensionCalculations on double {
  double heightFromWidth(StandardRateo rateo) {
    return this / rateo.aspectRatio;
  }
}
