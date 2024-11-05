import 'package:clocktrain/utils/enum/standard_rateo_enum.dart';

extension StandardRateoDimensions on StandardRateo {
  double get aspectRatio {
    switch (this) {
      case StandardRateo.ratio_9_16:
        return 9 / 16; // Restituisce il rapporto 9:16
      case StandardRateo.ratio_4_5:
        return 4 / 5; // Restituisce il rapporto 4:5
      case StandardRateo.ratio_3_4:
        return 3 / 4; // Restituisce il rapporto 3:4
      case StandardRateo.ratio_16_9:
        return 16 / 9; // Restituisce il rapporto 16:9
      case StandardRateo.ratio_5_4:
        return 5 / 4; // Restituisce il rapporto 5:4
      case StandardRateo.ratio_4_3:
        return 4 / 3; // Restituisce il rapporto 4:3
    }
  }
}
