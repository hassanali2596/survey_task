class DownloadItems {
  // static const documents = [
  //   DownloadItem(
  //     name: 'Android Programming Cookbook',
  //     url:
  //     'http://enos.itcollege.ee/~jpoial/allalaadimised/reading/Android-Programming-Cookbook.pdf',
  //   ),
  //   DownloadItem(
  //     name: 'iOS Programming Guide',
  //     url:
  //     'http://englishonlineclub.com/pdf/iOS%20Programming%20-%20The%20Big%20Nerd%20Ranch%20Guide%20(6th%20Edition)%20[EnglishOnlineClub.com].pdf',
  //   ),
  // ];
  //
  // static const images = [
  //   DownloadItem(
  //     name: 'Arches National Park',
  //     url:
  //     'https://upload.wikimedia.org/wikipedia/commons/6/60/The_Organ_at_Arches_National_Park_Utah_Corrected.jpg',
  //   ),
  //   DownloadItem(
  //     name: 'Canyonlands National Park',
  //     url:
  //     'https://upload.wikimedia.org/wikipedia/commons/7/78/Canyonlands_National_Park%E2%80%A6Needles_area_%286294480744%29.jpg',
  //   ),
  //   DownloadItem(
  //     name: 'Death Valley National Park',
  //     url:
  //     'https://upload.wikimedia.org/wikipedia/commons/b/b2/Sand_Dunes_in_Death_Valley_National_Park.jpg',
  //   ),
  //   DownloadItem(
  //     name: 'Gates of the Arctic National Park and Preserve',
  //     url:
  //     'https://upload.wikimedia.org/wikipedia/commons/e/e4/GatesofArctic.jpg',
  //   ),
  // ];

  static const videos = [
    DownloadItem(
        name: 'مناسك الحج',
        description: " تعرف على مناسك الحج خطوة بخطوة وكيفية تنفيذها",
        image: 'https://firebasestorage.googleapis.com/v0/b/hajjapp-39d18.appspot.com/o/images%2Fsonan.jpg?alt=media&token=a7b71e15-ec23-470d-a25b-784e27de5833',
        url: 'https://firebasestorage.googleapis.com/v0/b/hajjapp-39d18.appspot.com/o/%20%D8%AF%D9%84%D9%8A%D9%84%20%D8%A7%D9%84%D8%AD%D8%AC%20.mp4?alt=media&token=08c011f2-8456-4c04-9266-130a7568b05d'
    ),
    DownloadItem(
        name: 'أركان الحج وواجباته',
        description: "فيديو مبسط لكي تتعرف على أركان الحج وواجباته ",
        image: 'https://firebasestorage.googleapis.com/v0/b/hajjapp-39d18.appspot.com/o/images%2Farkan.png?alt=media&token=6cf2fc7a-9a60-491f-8271-d0f07c7555e0',

        url:
        'https://firebasestorage.googleapis.com/v0/b/hajjapp-39d18.appspot.com/o/%D8%A7%D9%94%D8%B1%D9%83%D8%A7%D9%86%20%D8%A7%D9%84%D8%AD%D8%AC%20%D9%88%D9%88%D8%A7%D8%AC%D8%A8%D8%A7%D8%AA%D9%87.mp4?alt=media&token=5be2b5b5-e3ad-4c17-9eec-5b5ab0458a97'
    ),
    DownloadItem(
        name: 'مناسك الحج للاطفال',
        description: "شرح خطوات أداء مناسك الحج للاطفال بصورة سهلة مبسطة",
      image: 'https://firebasestorage.googleapis.com/v0/b/hajjapp-39d18.appspot.com/o/images%2Fatfal.png?alt=media&token=7968ed33-c9f3-478d-bfd7-716d6d954f9f',
      url: 'https://firebasestorage.googleapis.com/v0/b/hajjapp-39d18.appspot.com/o/%D8%B4%D8%B1%D8%AD%20%D8%AE%D8%B7%D9%88%D8%A7%D8%AA%20%D8%A7%D9%94%D8%AF%D8%A7%D8%A1%20%D9%85%D9%86%D8%A7%D8%B3%D9%83%20%D8%A7%D9%84%D8%AD%D8%AC%20%D9%84%D9%84%D8%A7%D8%B7%D9%81%D8%A7%D9%84.mp4?alt=media&token=3322289a-20ae-4bec-9df0-1a80cfc83395'
    ),

  ];

  // static const apks = [
  //   DownloadItem(
  //     name: 'Spitfire',
  //
  //     url:
  //     'https://github.com/bartekpacia/spitfire/releases/download/v1.2.0/spitfire.apk',
  //   )
  // ];
}

class DownloadItem {
  const DownloadItem({required this.image,required this.name,required this.description, required this.url});

  final String name;
  final String description;
  final String url;
  final String image;
}