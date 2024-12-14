extension DurationExtensions on Duration? {
  int inSecondsOrZero() {
    return this?.inSeconds ?? 0;
  }
}
