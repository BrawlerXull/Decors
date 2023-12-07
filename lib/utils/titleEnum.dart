enum TitleType {
  stageAndDecors,
  lightsAndSound,
  stationaryAndPrinting,
  giftingAndMomentos,
  eventGoodies,
  services
}

extension TitleTypeExtension on TitleType {
  String get title {
    switch (this) {
      case TitleType.stageAndDecors:
        return "Stage and Decors";
      case TitleType.lightsAndSound:
        return "Lights and Sound";
      case TitleType.stationaryAndPrinting:
        return "Stationary and Printing";
      case TitleType.giftingAndMomentos:
        return "Gifting and Momentos";
      case TitleType.eventGoodies:
        return "Event Goodies";
      case TitleType.services:
        return "Services";
      default:
        return "Unknown";
    }
  }
}
