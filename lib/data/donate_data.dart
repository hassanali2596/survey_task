

import 'package:HSB/constants/imagesPaths.dart';

const List<DonateData> listDonate=[
  DonateData(url: "https://ehsan.sa/referral/06272BAC85",
      nameAr: "رحلات العمرة للمحتاجين",
      descriptionAr: "سعى المشروع لإعانة المحتاجين والمسلمين الجدد لزيارة الحرم المكي الشريف وأداء العمرة، تبرع لهم وكن يداً محسنة تذلل صعابهم، قال الله تعالى: \"إِنَّ اللَّهَ مَعَ الَّذِينَ اتَّقَوا وَّالَّذِينَ هُم مُّحْسِنُونَ\".",
      nameEn: 'Umrah trips for the needy',
      descriptionEn: 'The project sought to help the needy and new Muslims to visit the Grand Mosque in Mecca and perform Umrah, donate to them and be a benevolent hand to overcome their difficulties, God Almighty said: "God is with those who are pious and those who are benevolent."',
      image: OMRA),
  DonateData(url: "https://ehsan.sa/referral/121C4DF258",
      nameAr: "إعانة أسر السجناء",
      descriptionAr: "مجموعة من أسر السجناء، تعاني من قلة الدخل، مما صعّب عليها عيشَ الحياة وزاد من مشقتها وعنائها، بتبرعك لها تفرج كربتها وتضيء أملاً في حياتها",
      nameEn: 'Prisoners\' Families Subsidy',
      descriptionEn: 'A group of prisoners\' families, suffering from lack of income, which made it difficult for them to live life and increased their hardship and trouble, by donating to them you release their anguish and light up hope in their lives',
      image: PRESON),
  DonateData(url: "https://ehsan.sa/referral/58D4F28D07",
      nameAr: "رعاية مرضى الفشل الكلوي",
      descriptionAr: "مرضى يعانون من الفشل الكلوي، وليس لديهم ما يكفيهم لعمل غسيل الكلى الذي يحتاجونه بشكل دوري، ما قد يؤدي إلى ازدياد تعبهم وتدهور حالتهم الصحية، بتبرعك لهم تفرج كربة وتحيي أملاً لهم في الحياة المستقرة",
      nameEn: 'Kidney failure care',
      descriptionEn: 'Patients suffering from kidney failure, and they do not have enough to do the dialysis they need periodically, which may lead to an increase in their fatigue and deterioration of their health condition, by donating to them you release anguish and revive their hope for a stable life',
      image: FASHAL_KALAY),
  DonateData(url: "https://ehsan.sa/referral/06272BAC85",
      nameAr: "رحلات العمرة للمحتاجين",
      descriptionAr: "سعى المشروع لإعانة المحتاجين والمسلمين الجدد لزيارة الحرم المكي الشريف وأداء العمرة، تبرع لهم وكن يداً محسنة تذلل صعابهم، قال الله تعالى: \"إِنَّ اللَّهَ مَعَ الَّذِينَ اتَّقَوا وَّالَّذِينَ هُم مُّحْسِنُونَ\".",
      nameEn: 'Umrah trips for the needy',
      descriptionEn: 'The project sought to help the needy and new Muslims to visit the Grand Mosque in Mecca and perform Umrah, donate to them and be a benevolent hand to overcome their difficulties, God Almighty said: "God is with those who are pious and those who are benevolent."',
      image: OMRA),
];

class DonateData{
  final String url,nameAr,nameEn,descriptionAr,descriptionEn,image;
  const DonateData({required this.url, required this.nameAr,required this.nameEn,required this.descriptionEn, required this.descriptionAr, required this.image});
}