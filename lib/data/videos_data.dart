import '../constants/imagesPaths.dart';

class VideosItems {
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


  static List<VideoItem> videos = [

    VideoItem(
        nameAr: 'مواقيت مكانية مهمة',
        descriptionAr: "للحج والعمرة خمس مواقيت مكانية لا يجوز تجاوزها.",
        nameEn: 'Important spatial times',
        descriptionEn: 'Hajj and Umrah have five spatial times that may not be exceeded.',
        image:ImageMwaket_makanea,
        url: Mwaket_makanea
    ),
    VideoItem(
        nameAr: 'ما هي كيفية الإحرام؟',
        descriptionAr: "يقوم نسك الإحرام على عدّة خطوات جسمانية ونفسية، فهو ليس فقط مجرّد ارتداء ملابس الإحرام، ولكنّه نسكٌ متكامل.\nيبدأ هذا النسك بالاغتسال والتطيّب، كما جاء السنّة النبوية، سواء للنساء أو الرجال.",
        nameEn: 'What is the method of ihram?',
        descriptionEn: 'The ritual of ihram is based on several physical and psychological steps, as it is not just wearing the ihram clothes, but it is an integrated ritual.',
        image:ImageKayfyat_alehram,
        url: Kayfyat_alehram
    ),
    VideoItem(
        nameAr: 'النية',
        descriptionAr: "من حج قارنا قال عند إحرامه ” لبيك عمرة وحجاً لبيك عمرة وحجاً” ،وقد ثبت في الصحيحين أن النبي صلى الله عليه وآله وسلم حج قارنا وقال عند إحرامه: ” لبيك عمرة وحجاً لبيك عمرة وحجاً ” . (2)  وإن كان متمتعاً قال: “لبيك عمرة متمتعا بها إلى الحج”، وفي يوم التروية يقول :” لبيك اللهم حجاً “. (3)  أما المفرد فيقول عند إحرامه” لبيك اللهم حجاً” . (4) أما المعتمر فقط فيقول” لبيك اللهم عمرة”.",
        nameEn: 'Intention',
        descriptionEn: 'Whoever performs Hajj Qarna said at the time of his Ihram "Labbayk \'Umrah and Hajj Labbayk \'Umrah and Hajj", and it has been proven in the two Sahihs that the Prophet (peace and blessings of Allaah be upon him) made Hajj Qarna and said when he was Ihram: \"Labbayk \'Umrah and Hajj Labbayk \'Umrah and Hajj.\" (2) If he enjoyed, he said: \"Labbayk \'Umrah enjoying it to Hajj,\" and on the day of Tarwiyyah he says: \"Labbayk Allah Hajj.\" (3) As for the singular, it says when it is ihram, \"Labbayk Allah is a pilgrimage.\" (4) As for the pilgrim only, he says, \"Labbaik Allah \'Umrah.',
        image:ImageAlnea,
        url: Alnea
    ),
    VideoItem(
        nameAr: 'ما هي محظورات الإحرام؟',
        descriptionAr: "محظورات الإحرام هي الممنوعات التي يمنع منها الإنسان بسبب الإحرام، ومنها حلق شعر الرأس واستعمال الطيب بعد عقد الإحرام والجماع والمباشرة لشهوة وقتل الصيد. ومن المحظورات الخاصة بالرجال لبس القميص والبرانس والسراويل والعمائم والخفاف. ومن محظورات الإحرام الخاصة بالنساء النقاب. ومن فعل هذه المحظورات ناسياً أو جاهلاً أو مكرهاً، فلا شيء عليه.",
        nameEn: 'What are the prohibitions of Ihram?',
        descriptionEn: 'The prohibitions of Ihram are the prohibitions that a person is prohibited from because of Ihram, including shaving the hair of the head, using perfume after holding Ihram and sexual intercourse, and direct lust and killing hunting. It is forbidden for men to wear shirts, robes, trousers, turbans and slippers. One of the prohibitions of ihram for women is the niqab. Whoever does these prohibitions forgetfully, ignorantly or unwillingly, there is nothing against him.',
        image:ImageMahzorat_alehram,
        url: Mahzorat_alehram
    ),
    VideoItem(
        nameAr: 'ما هي كيفية الطواف وأحكامه؟',
        descriptionAr: "(1) يبتدئ الحاج أو المعتمر الطواف من الحجر الأسود، ويكون البيت الحرام عن يساره، ويطوف سبعة أشواط ، ويرمل في جميع الثلاثة الأول من طواف القدوم سواء كان في الحج أو العمرة ويمشي مشية عادية في الأربعة الباقية، و يبتدئ كل شوط بالحجر الأسود ويختم به ، والرمل هو الإسراع في المشي مع مقاربة الخطى . (2) من السنة تقبيلُ الحجر الأسود عند التمكن، ومن لا يستطيع أشار إليه بيده على بُعدٍ قائلًا: بسم الله، الله أكبر، اللهم إيمانًا بك وتصديقًا بكتابك ووفاءً بعهدك واتباعًا لسنة نبيك محمد صلى الله عليه وسلم. (3) يستحب للحاج أو المعتمر أن يضطبع خاصة في طواف القدوم ، والاضطباع أن يجعل وسط الرداء تحت منكبه الأيمن وطرفيه على عاتقه الأيسر . (4) حجر إسماعيل جزء من الكعبة لا يصح الطواف داخله بل يجب أن يكون الطواف خارج حجر إسماعيل. (5) يشترط لصحة الطوافِ الطهارةُ من الحدث والنجس وسترُ العورة؛ فالطواف كالصلاة إلا أنه أُبِيحَ لنا الكلام فيه. (6) إذا شك الحاج أو المعتمر في عدد الأشواط بنَى على اليقين وهو الأقل. (7) إذا أقيمت الصلاة المكتوبة تَوقَّفَ الحاج أو المعتمر عن الطواف وصلَّى وعقب الصلاة يطوف مستكملًا الأشواطَ الباقيةَ له ويَبني على ما سبق. (8) عقب الانتهاء من الأشواط السبعة يؤدي الحاج ركعتين، يقرأ في الأولى بعد الفاتحة سورة الكافرون وفي الثانية سورة الإخلاص، ويكون ذلك خلف مقام إبراهيم إن تَيسَّرَ، وإلا ففي أيّ موضع خالٍ بالمسجد، قال الله تعالى: (وإذ جعلنا البيتَ مَثَابةً للناس وأمنًا واتَّخِذوا من مقام إبراهيم مُصَلًّى وعَهِدنَا إلى إبراهيمَ وإسماعيلَ أن طَهِّرَا بيتيَ للطائفين والعاكفين والرُّكَّع السجود) (البقرة: 125).",
        nameEn: 'What is the method of circumambulation and its provisions?',
        descriptionEn: '(1) The pilgrim or Umrah pilgrim starts the circumambulation of the Black Stone, and the Sacred House is on its left, and circumambulates seven rounds, and sands in all the first three of the Tawaf of arrival, whether it is in Hajj or Umrah, and walks a normal walk in the remaining four, and each half begins with the Black Stone and concludes with it, and the sand is to speed up the walk with the approach of the footsteps. (2) It is Sunnah to kiss the Black Stone when possible, and whoever cannot point to it with his hand at a distance, saying: In the name of Allah, Allah is the Greatest, O Allah, out of faith in You, believing in Your Book, fulfilling Your Covenant, and following the Sunnah of Your Prophet Muhammad (peace and blessings of Allaah be upon him).(3) It is mustahabb for the pilgrim or the pilgrim to wear a bath, especially in the tawaf of arrival, and to put the middle of the robe under his right shoulder and the two ends of it on his left shoulder. (4) The stone of Ismail is part of the Kaaba and it is not valid to circumambulate inside it, but the circumambulation must be outside the stone of Ismail. (5) The validity of tawaaf requires purity from the event and the najis and covering the \'awrah, for tawaaf is like prayer, but it is permissible for us to speak about it. (6) If the pilgrim or the pilgrim doubts the number of runs, he builds on certainty, which is the least.  (7) If the written prayer is performed, the pilgrim or the pilgrim stops circumambulating and prays, and after the prayer he circumambulates completing the remaining rounds for him and builds on the above. (8) After the completion of the seven rounds, the pilgrim performs two rak\'ahs, in the first after Al-Fatihah he recites Surat Al-Kafirun and in the second Surat Al-Ikhlas, and this is behind the place of Ibrahim if possible, otherwise in any empty place in the mosque, God Almighty said: (And we made the house as a place for people and our mother, and they took the place of Abraham as a prayer room, and we entrusted to Ibrahim and Ismail to purify my house for the sectarians and those who worship, kneel and prostrate (al-Baqarah: 125). ',
        image:ImageAltwaf,
        url: Altwaf
    ),
    VideoItem(
        nameAr: 'ما كيفية السعي بين الصفا والمروة؟',
        descriptionAr: "السعي يعد من أركان الحج والعمرة ويكون من خلال 7 أشواط، وهي أول نقطة يجب تأكيدها في السعي، حيث إنّ هناك الكثير من الأخطاء يقع فيها الحجاج والمعتمرون في حساب الـ7 أشواط. في البداية يتم احتساب الشوط بداية من الصفا حتى ينتهي إلى المروة، وعند العودة من المروة إلى الصفا يتم احتسابها شوطًا أخر، وليس احتساب الذهاب من الصفا إلى المروة والرجوع مرة أخرى شوط، كما يشترط في السعي، أنّ يكون بعد طواف سواء كان ركنًا أو واجبًا أو نفلًا. ويتم احتساب الأشواط بداية من الصفا، وليس العكس، حيث تبدأ الأشواط من الصفا ومع نهاية الشوط السابع يكون الساعي في المروة، وبدأت السيدة هاجر عليها السلام، أول سعيها من الصفا إلى المروة. وفي كل شوط من أشواط السعي كلما وصل الحاج أو المعتمر إلى جبل الصفا هلل وكبر، ويصلي على النبي محمد، صلى الله عليه وآله وسلم، و يتوجه بالدعاء إلى الله سبحانه وتعالى بما يريد ويرغب، وعند بلوغ المروة، يقف الحاج أو المعتمر لبعض الوقت ويفعل مثل ما فعله عند الصفا، داعيًا الله تعالى بما تشاء، ويكون ذلك هو انتهاء الشوط ومن ثم بدء العد في الشوط الأخر حتى إتمام الـ 7 أشواط.",
        nameEn: 'How to seek between Safa and Marwa?',
        descriptionEn: 'The quest is one of the pillars of Hajj and Umrah and it is through 7 rounds, which is the first point that must be confirmed in the quest, as there are many mistakes that pilgrims and Umrah performers make in calculating the 7 runs. In the beginning, the half is calculated starting from Al-Safa until it ends to Al-Marwa, and when returning from Al-Marwa to Al-Safa, it is counted as another half, and not counting going from Al-Safa to Al-Marwah and returning again is a half, as required in the quest, to be after Tawaf, whether it is a corner, duty or Nafla. The runs are calculated starting from Safa, and not vice versa, as the runs start from Safa and at the end of the seventh half, the courier is in Marwa, and Mrs. Hajar, peace be upon her, began her first quest from Safa to Marwa. In each half of the quest whenever the pilgrim or Umrah pilgrim reaches Jabal Al-Safa, he cheers and grows, and prays for the Prophet Muhammad, may God\'s prayers and peace be upon him, and addresses supplications to God Almighty with what he wants and desires, and when reaching Al-Marwa, the pilgrim or Umrah pilgrim stands for some time and does as he did at Al-Safa, calling on God Almighty what you want, and that is the end of the half and then start counting in the other half until the completion of the 7 rounds.',
        image:ImageAlsaye_between_safa_and_marwa,
        url: Alsaye_between_safa_and_marwa
    ),
    VideoItem(
        nameAr: 'ما كيفية وحكم قص الشعر للرجل والمرأة؟',
        descriptionAr: "بعد الطواف والسعي في العمرة  على الرجل أن يقصر أو يحلق ، والمرأة تقصر من شعرها من أطراف شعرها، الرجل يحلق وهو أفضل، وإن قصر كفى وهو أخذ أطراف الشعر، عموم الشعر، والمرأة ليس في حقها إلا التقصير، ليس لها أن تحلق، تقصر من أطراف شعرها في العمرة، وهكذا في الحج إذا رمت الجمرة قصرت من رأسها، والرجل يحلق أو يقصر، والحلق أفضل في الحج، وفي العمرة الحلق أفضل، والمرأة ليس لها إلا التقصير في الحج والعمرة، لكن في العمرة يكون التقصير بعد الطواف والسعي في العمرة.أما في الحج فالأفضل يكون بعد الرمي، إذا رمت الجمرة قصرت، ورمى الرجل قصر، ولو قدم التقصير على الرمي أجزأه ولا حرج، لكن الأفضل يرمي ثم يقصر، ثم يطوف طواف الحج، ويسعى سعي الحج، وينحر بعد الرمي إن كان عنده نحر، إن كان عنده ذبيحة، إن كان متمتع أو قارن يذبح، نعم.",
        nameEn: 'How and ruling on haircut for men and women?',
        descriptionEn: 'After circumambulation and seeking in Umrah, the man must shorten or shave, and the woman shortens her hair from the ends of her hair, the man shaves and it is better, and if it is short, it is enough to take the ends of the hair, the whole hair, and the woman has no right except to shorten, she cannot shave, she shortens the ends of her hair in Umrah, and so on in Hajj if she throws the ember shortened from her head, and the man shaves or shortens, and the throat is better in Hajj, and in Umrah the throat is better, and the woman has nothing but shortening in Hajj and Umrah, but in Umrah the shortening is after Tawaf and Sa\'i in Umrah. As for Hajj, it is better to do so after throwing, if the ember is thrown, it is shortened, and the man throws a palace, and if the shortening is made on throwing, its parts are not wrong, but it is better to throw and then shorten, then circumambulate the Tawaf of Hajj, and seek the pursuit of Hajj, and commit suicide after throwing if he has sacrifice, if he has a sacrifice, if he enjoys or compares slaughters, yes.',
        image:ImageHair_cut,
        url: Hair_cut
    ),
    VideoItem(
        nameAr: 'يوم التروية',
        descriptionAr: "يوم الثامن من ذي الحجة، يوم التروية والمبيت بمنى ، فيبدأ بالإحرام للحج إذا كان متمتعاً بالعمرة إلى الحج، أو جاء في هذا اليوم محرماً بالحج، فيتوجه إلى منى في يوم التروية، ويصلي هناك الظهر والعصر والمغرب والعشاء، ويبيت تلك الليلة وهي ليلة عرفة فيصلي الفجر بمنى، ثم يخرج من منى إلى عرفات.",
        nameEn: 'Perfusion Day',
        descriptionEn: 'The eighth day of Dhul-Hijjah, the day of hydration and overnight stay in Mina, begins with ihram for Hajj if he enjoys Umrah to Hajj, or came on this day forbidden by Hajj, so he goes to Mina on the day of recitation, and prays there Dhuhr, Asr, Maghrib and Isha, and stays that night, which is the night of Arafat, and prays Fajr in Mina, and then goes out from Mina to Arafat.',
        image:ImageAltarwaya,
        url: Altarwaya
    ),
    VideoItem(
        nameAr: 'الوقوف بعرفة',
        descriptionAr: "عرفة كلها موقف، لقول النبي صلّى الله عليه وسلم : «قد وقفت ههنا، وعرفة كلها موقف» (رواه أبو داود وابن ماجه) فمن وقف بعرفة في أي مكان، والأفضل عند جبل الرحمة، فقد تم حجه مطلقاً من غير تعيين موضع دون موضع. إلا أنه ينبغي ألا يقف في بطن عرنة؛ لأن النبي صلّى الله عليه وسلم نهى عن ذلك، وأخبر أنه وادي الشيطان، قال النبي: «كل عرفة موقف وارفعوا عن بطن عرنة» (رواه ابن ماجه.) فليس وادي عُرَنة من الموقف، ولا يجزئ الوقوف قبل عرفة كنمرة مثلاً، قال ابن عبد البر: أجمع العلماء عل أن من وقف به لا يجزئه. وحد عرفة من الجبل المشرف على عرنة إلى الجبال المقابلة له إلى ما يلي حوائط بني عامر. وهي الآن معروفة بحدود معينة، وليس منها عرنة ولا نَمِرة ومسجد إبراهيم عليه السلام، فإن آخره منها وصدره عن عرنة. والمستحب أن يقف عند الصخرات الكبار المفترشة في أسفل جبل الرحمة، ويستقبل القبلة، لما جاء في حديث جابر المتقدم: «أن النبي صلّى الله عليه وسلم جعل بطن ناقته القصواء إلى الصخرات، وجعل منها جبل المشاة بين يديه، واستقبل القبلة» .",
        nameEn: 'Standing in Arafa',
        descriptionEn: 'The Prophet (peace and blessings of Allaah be upon him) said: "I have stood here, and all of \'Arafah is a stand" (Narrated by Abu Dawood and Ibn Majah). However, he should not stand in the belly of Arnah, because the Prophet (peace and blessings of Allaah be upon him) forbade that, and told that it is the valley of Satan, the Prophet said: \"Every Arafah is a position and lift up from the belly of Arnah\" (Narrated by Ibn Majah). and The border of Arafa from the mountain overseeing Arna to the mountains opposite it to the following walls of Bani Amer. It is now known by certain limits, and none of them are Arnah or Nimra and the Mosque of Ibrahim, peace be upon him, the last of which is and his chest is about Arna. It is mustahabb to stand at the big rocks scattered at the bottom of the Mount of Mercy, and receive the qiblah, because it says in the hadith of Jabir al-Muqaddam: "The Prophet (peace and blessings of Allaah be upon him) made the belly of his camel to the rocks, and made it a mountain of pedestrians in his hands, and received the qiblah."',
        image:ImageArafa,
        url: Arafa
    ),
    VideoItem(
        nameAr: 'الإفاضة إلى مزدلفة',
        descriptionAr: "تبدأ شعائر الإفاضة إلى المزدلفة بعد غروب شمس يوم عرفة، حيث يغادر حجاج بيت الله الحرام جبل عرفات نحو المزدلفة ذاكرين الله في طريقهم ومستبشرين بفضله عليهم ونعمته. وبعد النزول بها يُصَلُّون المغرب والعشاء جمعا بأذان واحد، ثم يجمعون سبعين حصاة استعدادا لرمي الجمرات. ويُحْيون الليل بالذكر والدعاء و تلاوة القرآن إلى أن يُسفر الصبح بشكل جيد، فينطلقون قبل شروق الشمس مُفيضِينَ إلى مِنى.",
        nameEn: 'Ifada to Muzdalifah',
        descriptionEn: 'The rituals of Ifadah to Muzdalifah begin after sunset on the day of Arafat, when pilgrims leave Mount Arafat towards Muzdalifah, remembering God on their way and promising His grace and grace. After going down, they pray Maghrib and Isha together with one call to prayer, then they collect seventy pebbles in preparation for throwing the Jamarat. They observe the night with remembrance, supplication and recitation of the Qur\'an until the morning is well produced, so they set out before sunrise and overflow to Mina.',
        image:ImageAlefada_to_mozdalafa,
        url: Alefada_to_mozdalafa
    ),
    VideoItem(
        nameAr: 'ذبح الهدي',
        descriptionAr: "لهدي واجب من واجبات الحج إذا كان الحاج متمتعا أو قارنا (جمع بين الحج والعمرة)، وهو ما يهدى من الأنعام إلى الحَرَم تقرباً إلى الله.ويجب على القارن والمتمتع، ولا يجب على المفرد إلا بفعل محظور أو تَرْكِ واجب، وللهدي أحكام وشروط تتعلق به، فهو كأضحية العيد؛ حيث يجب ذبح شاة مجزئة في الأضحية، أو سُبُع بقرة أو سُبُع بَدَنة يشترط فيها أن لا يكون بها عيبٌ، أو مرضٌ، أو عورٌ وعرجٌ بيِّن، ولا يشترط أن يذبح الحاجّ هديه بنفسه، بل يجوز له أن يوكّل من يذبح عنه.",
        nameEn: 'Slaughter of guidance',
        descriptionEn: 'Guidance is one of the duties of Hajj if the pilgrim enjoys or compares (combining Hajj and Umrah), which is what is guided from cattle to the Haram in order to get closer to God. The pilgrim must slaughter his gift himself, but it is permissible for him to entrust someone to slaughter on his behalf.',
        image:ImageZabh_alhady,
        url: Zabh_alhady
    ),
    VideoItem(
        nameAr: 'ما كيفية طواف الإفاضة؟',
        descriptionAr: "طواف الإفاضة وهو الركن الثالث من أركان الحج الأربعة في الإسلام، أولهم الإحرام وهو نية الدخول في النسك وثانيهم الوقوف بعرفة وثالثهم طواف الإفاضة ورابعهم السعي بين الصفا والمروة ، وطواف الإفاضة هو من أركان الحج لقوله سبحانه :((ثم ليقضوا تفثهم وليوفوا نذورهم وليطوفوا بالبيت العتيق )) {سورة الحج، الآية 29} ولأن النبي - - قال - حين أُخبِرَ بأن صفية حاضت - ( أحابستنا هي ؟، فقالوا : يا رسول الله إنها قد أفاضت وطافت بالبيت ثم حاضت بعد الإفاضة، قال : فلتنفر إذاً ) متفق عليه، مما يدل على أن هذا الطواف لا بد منه، وأنه حابس لمن لم يأت به، ووقته بعد الوقوف بعرفة ومزدلفة ولا آخر لوقته عند الجمهور بل يبقى عليه ما دام حياً، وإنما وقع الخلاف في وجوب الدم على من أخّره عن أيام التشريق أو شهر ذي الحجة . وليجتهد به حتى لا يتعدى نهاية ذي الحجة الا لعذر.",
        nameEn: 'How to Tawaf al-Ifadah?',
        descriptionEn: 'Tawaf Al-Ifadah, which is the third pillar of the four pillars of Hajj in Islam, the first of which is Ihram, which is the intention to enter into the ritual, the second is to stand in Arafah, the third is Tawaf Al-Ifadah, and the fourth of them is the quest between Safa and Marwa, and Tawaf Al-Ifadah is one of the pillars of Hajj for saying Almighty :( (Then to spend their vows and fulfill their vows and to circumambulate the old house)) {Surat Al-Hajj, verse 29} And because the Prophet - - said - when he was told that Safiya had menstruated - (Ahabstna is she?, they said: O Messenger of Allah that she has overflowed and circumambulated the house and then menstruated after the elaboration, he said: Let her be repelled then) Agreed, which indicates that this circumambulation is a must, and that it is locked up for those who did not bring it, and his time after standing in Arafa and Muzdalifah and no other for his time with the public, but he remains on it as long as he lives, but the dispute occurred in the obligation of blood on those who delayed it from the days of al-Tashreeq or the month of Dhu The argument . And let him strive with it so that it does not exceed the end of Dhul-Hijjah except for an excuse.',
        image:ImageTwaf_alefada,
        url: Twaf_alefada
    ),
    VideoItem(
        nameAr: 'رمي الجمرات',
        descriptionAr: " يقوم الحجاج المسلمون برمي الحصى على ثلاثة جدران (الأعمدة سابقًا)، تسمى الجمرات في مدينة منى شرق مكة المكرمة. وهي واحدة من سلسلة أعمال الحج التي يجب القيام بها في الحج، وهو تجديد رمزي لحج إبراهيم، حيث تُرجم ثلاثة أعمدة تمثل إغراء بعصيان الله والحفاظ على النبي إسماعيل عليه السلام.في عيد الأضحى (اليوم العاشر من شهر ذي الحجة)، يجب على الحجاج ضرب واحدة من ثلاث جمرات (جمرة العقبة أو الجمرة الكبرى) بسبعة حصى. بعد الانتهاء من الرجم في يوم العيد، يجب على كل حاج أن يقص شعره أو يحلقه. في كل يوم من اليومين التاليين، يجب على الحاج أن يضرِبَ كل جدار من الجدران الثلاثة بسبعة حصى، متجهة من الشرق إلى الغرب. وبالتالي هُناك حاجة إلى ما لا يقل عن 49 حصاة للرمي، وأكثر إذا فقدت بعض الرميات. يظل بعض الحجاج في منى لمدة يوم إضافي، وفي هذه الحالة يجب عليهم ضرب كل حجر سبع مرات. عادة ما يتم تجميع الحصى المُستخدمة في الرجم في المزدلفة، وهو سهل جنوب شرق منى، في الليلة التي سبقت الرمية الأولى، ولكن يمكن جمعها أيضًا في منى.",
        nameEn: 'Throwing embers',
        descriptionEn: 'Muslim pilgrims throw pebbles at three walls (formerly columns), called Jamarat, in the city of Mina, east of Mecca. It is one of a series of pilgrimage acts to be performed in the Hajj, a symbolic renewal of Ibrahim\'s pilgrimage, where three columns representing a temptation to disobey God and preserve the Prophet Ismail (peace be upon him) are translated.On Eid al-Adha (the tenth day of the month of Dhu al-Hijjah), pilgrims must strike one of three Jamarats (Jamrat al-Aqaba or Jamrah al-Kubra) with seven pebbles. After completing the stoning on the day of Eid, each pilgrim must cut or shave his hair.  On each of the following two days, the pilgrim must strike each of the three walls with seven pebbles, heading from east to west. Thus at least 49 pebbles are needed to throw, and more if some throws are lost. Some pilgrims stay in Mina for an extra day, in which case they must hit each stone seven times. The gravel used for stoning is usually collected in Muzdalifah, a plain southeast of Mina, the night before the first throw, but can also be collected in Mina.',
        image:ImageRamy_aljamarat,
        url: Ramy_aljamarat
    ),
    VideoItem(
        nameAr: 'طواف الوداع',
        descriptionAr: "طواف الوداع هو آخر نُسكٍ في الحج، حيث يطوف الحاج سبعة أشواط حول الكعبة،[١] وسُمّي طواف الوداع بهذا الاسم؛ لأنّه يكون لتوديع البيت الحرام",
        nameEn: 'Tawaf al-wadaa',
        descriptionEn: 'The farewell tawaf is the last ritual in the Hajj, where the pilgrim circumambulates seven rounds around the Kaaba,[1] and the farewell tawaf was called by this name, because it is to bid farewell to the Sacred House',
        image:ImageTwaf_alwadaa,
        url: Twaf_alwadaa
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

class VideoItem {
   VideoItem({required this.image,required this.nameAr,required this.descriptionAr, required this.url,required this.nameEn,required this.descriptionEn});

  final String nameAr;
  final String descriptionAr;
   final String nameEn;
   final String descriptionEn;
  final String url;
  late final String image;
}