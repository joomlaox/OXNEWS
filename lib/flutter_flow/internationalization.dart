import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'ar', 'fr', 'es', 'de'];

  String get languageCode => locale.languageCode;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.languageCode] ?? '';

  String getVariableText({
    String? enText = '',
    String? arText = '',
    String? frText = '',
    String? esText = '',
    String? deText = '',
  }) =>
      [enText, arText, frText, esText, deText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      FFLocalizations.languages().contains(locale.languageCode);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // SplashScreen
  {
    '7up2sywl': {
      'en': 'World news here',
      'ar': 'أخبار العالم هنا',
      'de': 'Weltnachrichten hier',
      'es': 'Noticias del mundo aquí',
      'fr': 'L&#39;actualité mondiale ici',
    },
    'emc0ip39': {
      'en': 'Home',
      'ar': 'مسكن',
      'de': 'Heim',
      'es': 'Hogar',
      'fr': 'Maison',
    },
  },
  // Login
  {
    'qm7cy5aa': {
      'en': 'OX NEWS',
      'ar': 'أخبار OX',
      'de': 'OX-NACHRICHTEN',
      'es': 'NOTICIAS DE BUEY',
      'fr': 'NOUVELLES DU BŒUF',
    },
    '1iax8rni': {
      'en': 'Sign In',
      'ar': 'تسجيل الدخول',
      'de': 'Einloggen',
      'es': 'Registrarse',
      'fr': 'S&#39;identifier',
    },
    '608gpi3m': {
      'en': 'Email Address',
      'ar': 'عنوان البريد الالكترونى',
      'de': 'E-Mail-Addresse',
      'es': 'Dirección de correo electrónico',
      'fr': 'Adresse e-mail',
    },
    'bwqmj20u': {
      'en': 'Password',
      'ar': 'كلمة المرور',
      'de': 'Passwort',
      'es': 'Clave',
      'fr': 'Mot de passe',
    },
    'v2u36j6g': {
      'en': 'Sign In',
      'ar': 'تسجيل الدخول',
      'de': 'Einloggen',
      'es': 'Registrarse',
      'fr': 'S&#39;identifier',
    },
    'm51plg09': {
      'en': 'Forgot Password?',
      'ar': 'هل نسيت كلمة السر؟',
      'de': 'Passwort vergessen?',
      'es': '¿Has olvidado tu contraseña?',
      'fr': 'Mot de passe oublié?',
    },
    '1e89709l': {
      'en': 'I don\'t want to subscribe',
      'ar': 'لا اريد الاشتراك',
      'de': 'Ich möchte nicht abonnieren',
      'es': 'no quiero suscribirme',
      'fr': 'je ne veux pas m&#39;abonner',
    },
    'ik72kw4e': {
      'en': 'Sign Up',
      'ar': 'اشتراك',
      'de': 'Anmeldung',
      'es': 'Inscribirse',
      'fr': 'S&#39;inscrire',
    },
    '6kmgnlnn': {
      'en': 'Email Address',
      'ar': 'عنوان البريد الالكترونى',
      'de': 'E-Mail-Addresse',
      'es': 'Dirección de correo electrónico',
      'fr': 'Adresse e-mail',
    },
    'pamyd2cz': {
      'en': 'Password',
      'ar': 'كلمة المرور',
      'de': 'Passwort',
      'es': 'Clave',
      'fr': 'Mot de passe',
    },
    '2uytpzop': {
      'en': 'Create Account',
      'ar': 'إصنع حساب',
      'de': 'Konto anlegen',
      'es': 'Crear una cuenta',
      'fr': 'Créer un compte',
    },
    'hkxvdr32': {
      'en': 'Home',
      'ar': 'مسكن',
      'de': 'Heim',
      'es': 'Hogar',
      'fr': 'Maison',
    },
  },
  // ForgotPassword
  {
    'p0sp835q': {
      'en':
          'We will send you an email with a link to reset your password, please enter the email associated with your account below.',
      'ar':
          'سنرسل لك بريدًا إلكترونيًا يحتوي على رابط لإعادة تعيين كلمة المرور الخاصة بك ، يرجى إدخال البريد الإلكتروني المرتبط بحسابك أدناه.',
      'de':
          'Wir senden Ihnen eine E-Mail mit einem Link zum Zurücksetzen Ihres Passworts. Bitte geben Sie unten die mit Ihrem Konto verknüpfte E-Mail-Adresse ein.',
      'es':
          'Le enviaremos un correo electrónico con un enlace para restablecer su contraseña, ingrese el correo electrónico asociado con su cuenta a continuación.',
      'fr':
          'Nous vous enverrons un e-mail avec un lien pour réinitialiser votre mot de passe, veuillez entrer l&#39;e-mail associé à votre compte ci-dessous.',
    },
    'x9hb5qbs': {
      'en': 'Enter your email...',
      'ar': 'أدخل بريدك الإلكتروني ...',
      'de': 'Geben sie ihre E-Mail Adresse ein...',
      'es': 'Introduce tu correo electrónico...',
      'fr': 'Entrer votre Email...',
    },
    '6clmmwxj': {
      'en': 'Send Link',
      'ar': 'أرسل الرابط',
      'de': 'Link senden',
      'es': 'Enviar enlace',
      'fr': 'Envoyer un lien',
    },
    'kb468yax': {
      'en': 'Back',
      'ar': 'خلف',
      'de': 'Der Rücken',
      'es': 'atrás',
      'fr': 'Retour',
    },
    'z2ivp8ae': {
      'en': 'Forgot Password',
      'ar': 'هل نسيت كلمة السر',
      'de': 'Passwort vergessen',
      'es': 'Has olvidado tu contraseña',
      'fr': 'Mot de passe oublié',
    },
    'p6ytlb3b': {
      'en': 'Home',
      'ar': 'مسكن',
      'de': 'Heim',
      'es': 'Hogar',
      'fr': 'Maison',
    },
  },
  // Home
  {
    'medzmhb2': {
      'en': 'Top Stories',
      'ar': 'أهم الأخبار',
      'de': 'Top-Geschichten',
      'es': 'Historias destacadas',
      'fr': 'Meilleures histoires',
    },
    'ucsol7ac': {
      'en': 'Politics News',
      'ar': 'أخبار السياسة',
      'de': 'Nachrichten aus der Politik',
      'es': 'Noticias de política',
      'fr': 'Actualité politique',
    },
    '1sbahtcv': {
      'en':
          'Ukraine war: Russian Foreign Minister Sergei Lavrov seeks allies with ...',
      'ar':
          'حرب أوكرانيا: وزير الخارجية الروسي سيرجي لافروف يبحث عن حلفاء مع ...',
      'de':
          'Ukraine-Krieg: Russlands Außenminister Sergej Lawrow sucht Verbündete mit ...',
      'es':
          'Guerra de Ucrania: el ministro de Relaciones Exteriores de Rusia, Sergei Lavrov, busca aliados con ...',
      'fr':
          'Guerre d&#39;Ukraine : le ministre russe des Affaires étrangères Sergueï Lavrov cherche des alliés avec...',
    },
    'aaz55bwq': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    '80qrb0ej': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    '71t4wn9f': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'lvsd8by3': {
      'en':
          'Ukraine war: Kyiv\'s forces moving towards occupied Kherson - Zelensky',
      'ar': 'حرب أوكرانيا: قوات كييف تتجه نحو خيرسون - زيلينسكي المحتلة',
      'de':
          'Ukraine-Krieg: Kiews Streitkräfte bewegen sich auf das besetzte Cherson zu - Selenskyj',
      'es':
          'Guerra de Ucrania: las fuerzas de Kyiv avanzan hacia el Kherson ocupado - Zelensky',
      'fr':
          'Guerre d&#39;Ukraine : les forces de Kyiv se dirigent vers Kherson occupée - Zelensky',
    },
    'z76k4mm7': {
      'en': '2 hour ago',
      'ar': 'منذ ساعتين',
      'de': 'Vor 2 Std',
      'es': 'hace 2 horas',
      'fr': 'il y a 2 heures',
    },
    '0wku6znc': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'rvtgmqla': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'bna21a0h': {
      'en': 'Ex-army major rows to Isle of Wight in DIY boat for Ukraine',
      'ar': 'الصفوف الرئيسية للجيش السابق إلى جزيرة وايت في قارب DIY لأوكرانيا',
      'de':
          'Ex-Armee-Majors rudert mit DIY-Boot für die Ukraine zur Isle of Wight',
      'es':
          'Ex comandante del ejército rema hacia la Isla de Wight en barco de bricolaje para Ucrania',
      'fr':
          'Un ancien commandant de l&#39;armée se dirige vers l&#39;île de Wight dans un bateau de bricolage pour l&#39;Ukraine',
    },
    'd7xlzeo2': {
      'en': '4 hour ago',
      'ar': 'قبل 4 ساعات',
      'de': 'Vor 4 Std',
      'es': 'hace 4 horas',
      'fr': 'il y a 4 heures',
    },
    'jcumomu7': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'ciqwbhm2': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'dkoier67': {
      'en':
          'Ukraine war: Russian Foreign Minister Sergei Lavrov seeks allies with ...',
      'ar':
          'حرب أوكرانيا: وزير الخارجية الروسي سيرجي لافروف يبحث عن حلفاء مع ...',
      'de':
          'Ukraine-Krieg: Russlands Außenminister Sergej Lawrow sucht Verbündete mit ...',
      'es':
          'Guerra de Ucrania: el ministro de Relaciones Exteriores de Rusia, Sergei Lavrov, busca aliados con ...',
      'fr':
          'Guerre d&#39;Ukraine : le ministre russe des Affaires étrangères Sergueï Lavrov cherche des alliés avec...',
    },
    'wrr3e2ce': {
      'en': '6 hour ago',
      'ar': 'منذ 6 ساعات',
      'de': 'Vor 6 Std',
      'es': 'hace 6 horas',
      'fr': 'il y a 6 heures',
    },
    'vu2nmd7v': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'mh1dm45m': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'tn91n2a5': {
      'en':
          'Ukraine war: Russian Foreign Minister Sergei Lavrov seeks allies with ...',
      'ar':
          'حرب أوكرانيا: وزير الخارجية الروسي سيرجي لافروف يبحث عن حلفاء مع ...',
      'de':
          'Ukraine-Krieg: Russlands Außenminister Sergej Lawrow sucht Verbündete mit ...',
      'es':
          'Guerra de Ucrania: el ministro de Relaciones Exteriores de Rusia, Sergei Lavrov, busca aliados con ...',
      'fr':
          'Guerre d&#39;Ukraine : le ministre russe des Affaires étrangères Sergueï Lavrov cherche des alliés avec...',
    },
    'igpx10h2': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'wv93l0jm': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    '96br5q93': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'g71jbx6w': {
      'en': 'Sports News',
      'ar': 'الأخبار الرياضية',
      'de': 'Sport Nachrichten',
      'es': 'Noticias deportivas',
      'fr': 'Nouvelles sportives',
    },
    'k9o38rlu': {
      'en': 'Mohamed Salah is the best player in the world',
      'ar': 'محمد صلاح أفضل لاعب في العالم',
      'de': 'Mohamed Salah ist der beste Spieler der Welt',
      'es': 'Mohamed Salah es el mejor jugador del mundo',
      'fr': 'Mohamed Salah est le meilleur joueur du monde',
    },
    's9ec9181': {
      'en': '3 hour ago',
      'ar': 'منذ 3 ساعات',
      'de': 'Vor 3 Std',
      'es': 'hace 3 horas',
      'fr': 'il y a 3 heures',
    },
    'nrww8b3a': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'c4b8855s': {
      'en': 'Sports',
      'ar': 'رياضات',
      'de': 'Sport',
      'es': 'Deportes',
      'fr': 'Des sports',
    },
    'ps4wti5b': {
      'en':
          'Manchester United: Five takeaways from pre-season tour of Thailand ...',
      'ar': 'مانشستر يونايتد: خمس نصائح من جولة ما قبل الموسم في تايلاند ...',
      'de':
          'Manchester United: Fünf Imbissbuden von der Vorsaison-Tour durch Thailand ...',
      'es':
          'Manchester United: cinco conclusiones de la gira de pretemporada por Tailandia...',
      'fr':
          'Manchester United: Cinq points à retenir de la tournée de pré-saison en Thaïlande...',
    },
    'aabd377n': {
      'en': '4hour ago',
      'ar': 'قبل 4 ساعات',
      'de': 'Vor 4 Stunden',
      'es': 'hace 4 horas',
      'fr': 'il y a 4 heures',
    },
    'vn9y2s22': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    '38s619o6': {
      'en': 'Sports',
      'ar': 'رياضات',
      'de': 'Sport',
      'es': 'Deportes',
      'fr': 'Des sports',
    },
    'zgd4b9vw': {
      'en': 'Ex-army major rows to Isle of Wight in DIY boat for Ukraine',
      'ar': 'الصفوف الرئيسية للجيش السابق إلى جزيرة وايت في قارب DIY لأوكرانيا',
      'de':
          'Ex-Armee-Majors rudert mit DIY-Boot für die Ukraine zur Isle of Wight',
      'es':
          'Ex comandante del ejército rema hacia la Isla de Wight en barco de bricolaje para Ucrania',
      'fr':
          'Un ancien commandant de l&#39;armée se dirige vers l&#39;île de Wight dans un bateau de bricolage pour l&#39;Ukraine',
    },
    'wrb3j2gp': {
      'en': '5 hour ago',
      'ar': 'منذ 5 ساعات',
      'de': 'Vor 5 Std',
      'es': 'hace 5 horas',
      'fr': 'il y a 5 heures',
    },
    'f3vco0wk': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'bb8cl2ct': {
      'en': 'Sports',
      'ar': 'رياضات',
      'de': 'Sport',
      'es': 'Deportes',
      'fr': 'Des sports',
    },
    '3g28y1h9': {
      'en':
          'Ukraine war: Russian Foreign Minister Sergei Lavrov seeks allies with ...',
      'ar':
          'حرب أوكرانيا: وزير الخارجية الروسي سيرجي لافروف يبحث عن حلفاء مع ...',
      'de':
          'Ukraine-Krieg: Russlands Außenminister Sergej Lawrow sucht Verbündete mit ...',
      'es':
          'Guerra de Ucrania: el ministro de Relaciones Exteriores de Rusia, Sergei Lavrov, busca aliados con ...',
      'fr':
          'Guerre d&#39;Ukraine : le ministre russe des Affaires étrangères Sergueï Lavrov cherche des alliés avec...',
    },
    'z98bu46e': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'm491k3wx': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'n80r33ry': {
      'en': 'Sports',
      'ar': 'رياضات',
      'de': 'Sport',
      'es': 'Deportes',
      'fr': 'Des sports',
    },
    'lznbnwvi': {
      'en':
          'Ukraine war: Russian Foreign Minister Sergei Lavrov seeks allies with ...',
      'ar':
          'حرب أوكرانيا: وزير الخارجية الروسي سيرجي لافروف يبحث عن حلفاء مع ...',
      'de':
          'Ukraine-Krieg: Russlands Außenminister Sergej Lawrow sucht Verbündete mit ...',
      'es':
          'Guerra de Ucrania: el ministro de Relaciones Exteriores de Rusia, Sergei Lavrov, busca aliados con ...',
      'fr':
          'Guerre d&#39;Ukraine : le ministre russe des Affaires étrangères Sergueï Lavrov cherche des alliés avec...',
    },
    'cv2dgydp': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'q5dvjklb': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'nxm7umms': {
      'en': 'Sports',
      'ar': 'رياضات',
      'de': 'Sport',
      'es': 'Deportes',
      'fr': 'Des sports',
    },
    'e1c46qrj': {
      'en': 'Latest News',
      'ar': 'أحدث الأخبار',
      'de': 'Neuesten Nachrichten',
      'es': 'Últimas noticias',
      'fr': 'Dernières nouvelles',
    },
    'vvn5ur0c': {
      'en':
          'Chess robot breaks seven-year-old boy\'s finger during Moscow Open',
      'ar':
          'روبوت الشطرنج يكسر إصبع صبي يبلغ من العمر سبع سنوات خلال بطولة موسكو المفتوحة',
      'de':
          'Schachroboter bricht siebenjährigem Jungen bei Open in Moskau den Finger',
      'es':
          'Robot de ajedrez rompe el dedo de un niño de siete años durante el Abierto de Moscú',
      'fr':
          'Un robot d&#39;échecs casse le doigt d&#39;un garçon de sept ans lors de l&#39;Open de Moscou',
    },
    '6ulryut8': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'q29il1cu': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    '94swbl16': {
      'en': 'Business',
      'ar': 'اعمال',
      'de': 'Geschäft',
      'es': 'Negocio',
      'fr': 'Entreprise',
    },
    'kip3dnuz': {
      'en': 'Italy migrants: Nearly 1,200 arrive by boat in 24 hours',
      'ar':
          'مهاجرون من إيطاليا: يصل ما يقرب من 1200 عن طريق القوارب في غضون 24 ساعة',
      'de':
          'Migranten aus Italien: Fast 1.200 kommen innerhalb von 24 Stunden mit dem Boot an',
      'es': 'Migrantes de Italia: casi 1.200 llegan en barco en 24 horas',
      'fr':
          'Migrants italiens : Près de 1 200 arrivent par bateau en 24 heures',
    },
    'icpl0bbb': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    '728qself': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'mgyypbpb': {
      'en': 'World',
      'ar': 'العالمية',
      'de': 'Welt',
      'es': 'Mundo',
      'fr': 'Monde',
    },
    '5xvtfq5q': {
      'en': 'Ex-army major rows to Isle of Wight in DIY boat for Ukraine',
      'ar': 'الصفوف الرئيسية للجيش السابق إلى جزيرة وايت في قارب DIY لأوكرانيا',
      'de':
          'Ex-Armee-Majors rudert mit DIY-Boot für die Ukraine zur Isle of Wight',
      'es':
          'Ex comandante del ejército rema hacia la Isla de Wight en barco de bricolaje para Ucrania',
      'fr':
          'Un ancien commandant de l&#39;armée se dirige vers l&#39;île de Wight dans un bateau de bricolage pour l&#39;Ukraine',
    },
    '8llurws0': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'o3bxgbto': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'ty5enud6': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'v7p5u73w': {
      'en':
          'Ukraine war: Russian Foreign Minister Sergei Lavrov seeks allies with ...',
      'ar':
          'حرب أوكرانيا: وزير الخارجية الروسي سيرجي لافروف يبحث عن حلفاء مع ...',
      'de':
          'Ukraine-Krieg: Russlands Außenminister Sergej Lawrow sucht Verbündete mit ...',
      'es':
          'Guerra de Ucrania: el ministro de Relaciones Exteriores de Rusia, Sergei Lavrov, busca aliados con ...',
      'fr':
          'Guerre d&#39;Ukraine : le ministre russe des Affaires étrangères Sergueï Lavrov cherche des alliés avec...',
    },
    'kvwp4xjg': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'bs14deg3': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    '1hb8iha5': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'jcxuqv0b': {
      'en':
          'Ukraine war: Russian Foreign Minister Sergei Lavrov seeks allies with ...',
      'ar':
          'حرب أوكرانيا: وزير الخارجية الروسي سيرجي لافروف يبحث عن حلفاء مع ...',
      'de':
          'Ukraine-Krieg: Russlands Außenminister Sergej Lawrow sucht Verbündete mit ...',
      'es':
          'Guerra de Ucrania: el ministro de Relaciones Exteriores de Rusia, Sergei Lavrov, busca aliados con ...',
      'fr':
          'Guerre d&#39;Ukraine : le ministre russe des Affaires étrangères Sergueï Lavrov cherche des alliés avec...',
    },
    '8aj3dw40': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'cw2zy2lk': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    '0shue664': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'vmzh3j80': {
      'en': 'Video',
      'ar': 'فيديو',
      'de': 'Video',
      'es': 'Video',
      'fr': 'Vidéo',
    },
    'mnszywus': {
      'en': 'Politics News',
      'ar': 'أخبار السياسة',
      'de': 'Nachrichten aus der Politik',
      'es': 'Noticias de política',
      'fr': 'Actualité politique',
    },
    'xxr6gm3s': {
      'en': 'Mike Pence takes thinly-veiled shot...',
      'ar': 'مايك بينس يأخذ لقطة محجبة رقيقة ...',
      'de': 'Mike Pence macht einen kaum verhüllten Schuss...',
      'es': 'Mike Pence toma una foto poco disimulada...',
      'fr': 'Mike Pence prend une photo à peine voilée...',
    },
    '2jf859nb': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    '9d734zm5': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'jroac0ml': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    '50f6rgur': {
      'en': 'Biden faces criticism for Mohammed...',
      'ar': 'بايدن يواجه انتقادات لمحمد ...',
      'de': 'Biden sieht sich wegen Mohammeds Kritik ausgesetzt',
      'es': 'Biden enfrenta críticas por Mohamed...',
      'fr': 'Biden fait face à des critiques pour Mohammed...',
    },
    'ahpnabnx': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'sp48v33s': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    '70ueodg6': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    '3x2y3mab': {
      'en': 'Data shows big shift in Democratic.. ',
      'ar': 'تشير البيانات إلى تحول كبير في الديمقراطية ..',
      'de': 'Daten zeigen große Verschiebung in der Demokratischen..',
      'es': 'Los datos muestran un gran cambio en el...',
      'fr': 'Les données montrent un grand changement dans les démocraties ..',
    },
    'ynfmmhpa': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    '22uow1y3': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'ibokqn3s': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    '7uefsjbl': {
      'en': 'Steve Bannon found guilty of contempt..',
      'ar': 'وجد ستيف بانون مذنبا بتهمة الازدراء ..',
      'de': 'Steve Bannon der Verachtung für schuldig befunden',
      'es': 'Steve Bannon declarado culpable de desacato..',
      'fr': 'Steve Bannon reconnu coupable d&#39;outrage...',
    },
    'thyjq349': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    '32a56kyp': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'ir5pm49e': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'ze048nhg': {
      'en': 'Sports News',
      'ar': 'الأخبار الرياضية',
      'de': 'Sport Nachrichten',
      'es': 'Noticias deportivas',
      'fr': 'Nouvelles sportives',
    },
    'l3gsuiv5': {
      'en': 'Inside Training: Strikers session, great..',
      'ar': 'تدريب داخلي: جلسة مهاجمين رائعة ..',
      'de': 'Inside Training: Stürmer-Session, großartig ..',
      'es': 'Inside Training: sesión de Strikers, genial..',
      'fr': 'Entraînement intérieur : Séance Strikers, super..',
    },
    '8emhu8a4': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    '6vchupo2': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    '41azcnfy': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'iu28z7e5': {
      'en': 'TRANSFER UPDATE',
      'ar': 'تحديث التحويل',
      'de': 'UPDATE ÜBERTRAGEN',
      'es': 'ACTUALIZACIÓN DE TRANSFERENCIA',
      'fr': 'MISE À JOUR DU TRANSFERT',
    },
    'ksrtd6x0': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'lyhau1rm': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'cq746rkp': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    '8e9gjenu': {
      'en': 'Pep Guardiola and Kyle Walker thank..',
      'ar': 'بيب جوارديولا وكايل ووكر شكرا ..',
      'de': 'Pep Guardiola und Kyle Walker danken..',
      'es': 'Pep Guardiola y Kyle Walker agradecen..',
      'fr': 'Pep Guardiola et Kyle Walker remercient..',
    },
    'kxcrmced': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'acmwm5ys': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'fjxojs2m': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'c7g0425z': {
      'en': 'Inside Leipzig: RB Leipzig 0-5 Liverpool',
      'ar': 'داخل لايبزيغ: لايبزيغ 0-5 ليفربول',
      'de': 'Inside Leipzig: RB Leipzig 0-5 Liverpool',
      'es': 'Dentro de Leipzig: RB Leipzig 0-5 Liverpool',
      'fr': 'À l&#39;intérieur de Leipzig : RB Leipzig 0-5 Liverpool',
    },
    'uai0gtu4': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    '3hw8suoe': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'zlacwx0z': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'vxor9f65': {
      'en': 'Latest News',
      'ar': 'أحدث الأخبار',
      'de': 'Neuesten Nachrichten',
      'es': 'Últimas noticias',
      'fr': 'Dernières nouvelles',
    },
    '48u93spv': {
      'en': '’ Black Panther: Wakanda Forever',
      'ar': 'النمر الأسود: واكاندا للأبد',
      'de': '„Black Panther: Wakanda für immer',
      'es': 'Pantera Negra: Wakanda para siempre',
      'fr': '&#39; Black Panther : Wakanda pour toujours',
    },
    'wc25w4uj': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    '1ctkxqns': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'pu07w6th': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'h2h3so40': {
      'en': 'Biden faces criticism for Mohammed...',
      'ar': 'بايدن يواجه انتقادات لمحمد ...',
      'de': 'Biden sieht sich wegen Mohammeds Kritik ausgesetzt',
      'es': 'Biden enfrenta críticas por Mohamed...',
      'fr': 'Biden fait face à des critiques pour Mohammed...',
    },
    '2voszffh': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'ob0zedoi': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'zkbmvi7r': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'ohxkaw06': {
      'en': 'Data shows big shift in Democratic.. ',
      'ar': 'تشير البيانات إلى تحول كبير في الديمقراطية ..',
      'de': 'Daten zeigen große Verschiebung in der Demokratischen..',
      'es': 'Los datos muestran un gran cambio en el...',
      'fr': 'Les données montrent un grand changement dans les démocraties ..',
    },
    'tg52ikxb': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'ifhj43bb': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    '12eqdq3i': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'zj1sgu8h': {
      'en': 'Steve Bannon found guilty of contempt..',
      'ar': 'وجد ستيف بانون مذنبا بتهمة الازدراء ..',
      'de': 'Steve Bannon der Verachtung für schuldig befunden',
      'es': 'Steve Bannon declarado culpable de desacato..',
      'fr': 'Steve Bannon reconnu coupable d&#39;outrage...',
    },
    '9j2tzfd1': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'gsg1pycp': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    '7ei01hn0': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    '1jphv228': {
      'en': 'Popular',
      'ar': 'رائج',
      'de': 'Beliebt',
      'es': 'Popular',
      'fr': 'Populaire',
    },
    '3njvv3vk': {
      'en': 'Politics News',
      'ar': 'أخبار السياسة',
      'de': 'Nachrichten aus der Politik',
      'es': 'Noticias de política',
      'fr': 'Actualité politique',
    },
    '0g51q8xz': {
      'en':
          'Ukraine war: Russian Foreign Minister Sergei Lavrov seeks allies with ...',
      'ar':
          'حرب أوكرانيا: وزير الخارجية الروسي سيرجي لافروف يبحث عن حلفاء مع ...',
      'de':
          'Ukraine-Krieg: Russlands Außenminister Sergej Lawrow sucht Verbündete mit ...',
      'es':
          'Guerra de Ucrania: el ministro de Relaciones Exteriores de Rusia, Sergei Lavrov, busca aliados con ...',
      'fr':
          'Guerre d&#39;Ukraine : le ministre russe des Affaires étrangères Sergueï Lavrov cherche des alliés avec...',
    },
    'dfulelf9': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    '1u7sj5a4': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'ca6lx4wv': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    '1ji42ala': {
      'en':
          'Ukraine war: Kyiv\'s forces moving towards occupied Kherson - Zelensky',
      'ar': 'حرب أوكرانيا: قوات كييف تتجه نحو خيرسون - زيلينسكي المحتلة',
      'de':
          'Ukraine-Krieg: Kiews Streitkräfte bewegen sich auf das besetzte Cherson zu - Selenskyj',
      'es':
          'Guerra de Ucrania: las fuerzas de Kyiv avanzan hacia el Kherson ocupado - Zelensky',
      'fr':
          'Guerre d&#39;Ukraine : les forces de Kyiv se dirigent vers Kherson occupée - Zelensky',
    },
    't7ayk4gy': {
      'en': '2 hour ago',
      'ar': 'منذ ساعتين',
      'de': 'Vor 2 Std',
      'es': 'hace 2 horas',
      'fr': 'il y a 2 heures',
    },
    'i9wldv06': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'gmadg57z': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    '7kerln50': {
      'en': 'Ex-army major rows to Isle of Wight in DIY boat for Ukraine',
      'ar': 'الصفوف الرئيسية للجيش السابق إلى جزيرة وايت في قارب DIY لأوكرانيا',
      'de':
          'Ex-Armee-Majors rudert mit DIY-Boot für die Ukraine zur Isle of Wight',
      'es':
          'Ex comandante del ejército rema hacia la Isla de Wight en barco de bricolaje para Ucrania',
      'fr':
          'Un ancien commandant de l&#39;armée se dirige vers l&#39;île de Wight dans un bateau de bricolage pour l&#39;Ukraine',
    },
    '1z8zn4iy': {
      'en': '4 hour ago',
      'ar': 'قبل 4 ساعات',
      'de': 'Vor 4 Std',
      'es': 'hace 4 horas',
      'fr': 'il y a 4 heures',
    },
    'k6jhm2ec': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'd2pybyhh': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'qbm9ki87': {
      'en':
          'Ukraine war: Russian Foreign Minister Sergei Lavrov seeks allies with ...',
      'ar':
          'حرب أوكرانيا: وزير الخارجية الروسي سيرجي لافروف يبحث عن حلفاء مع ...',
      'de':
          'Ukraine-Krieg: Russlands Außenminister Sergej Lawrow sucht Verbündete mit ...',
      'es':
          'Guerra de Ucrania: el ministro de Relaciones Exteriores de Rusia, Sergei Lavrov, busca aliados con ...',
      'fr':
          'Guerre d&#39;Ukraine : le ministre russe des Affaires étrangères Sergueï Lavrov cherche des alliés avec...',
    },
    '4fre2179': {
      'en': '6 hour ago',
      'ar': 'منذ 6 ساعات',
      'de': 'Vor 6 Std',
      'es': 'hace 6 horas',
      'fr': 'il y a 6 heures',
    },
    'k0omoiur': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'bu9cw5xo': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    '8v6pighw': {
      'en':
          'Ukraine war: Russian Foreign Minister Sergei Lavrov seeks allies with ...',
      'ar':
          'حرب أوكرانيا: وزير الخارجية الروسي سيرجي لافروف يبحث عن حلفاء مع ...',
      'de':
          'Ukraine-Krieg: Russlands Außenminister Sergej Lawrow sucht Verbündete mit ...',
      'es':
          'Guerra de Ucrania: el ministro de Relaciones Exteriores de Rusia, Sergei Lavrov, busca aliados con ...',
      'fr':
          'Guerre d&#39;Ukraine : le ministre russe des Affaires étrangères Sergueï Lavrov cherche des alliés avec...',
    },
    'q7bn7ur5': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    '6re5sofo': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'l058v9yh': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'y069hqqq': {
      'en': 'Sports News',
      'ar': 'الأخبار الرياضية',
      'de': 'Sport Nachrichten',
      'es': 'Noticias deportivas',
      'fr': 'Nouvelles sportives',
    },
    'scdoxeb9': {
      'en': 'Mohamed Salah is the best player in the world',
      'ar': 'محمد صلاح أفضل لاعب في العالم',
      'de': 'Mohamed Salah ist der beste Spieler der Welt',
      'es': 'Mohamed Salah es el mejor jugador del mundo',
      'fr': 'Mohamed Salah est le meilleur joueur du monde',
    },
    'kfm5pqqv': {
      'en': '3 hour ago',
      'ar': 'منذ 3 ساعات',
      'de': 'Vor 3 Std',
      'es': 'hace 3 horas',
      'fr': 'il y a 3 heures',
    },
    '2arygux6': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    's9owka0z': {
      'en': 'Sports',
      'ar': 'رياضات',
      'de': 'Sport',
      'es': 'Deportes',
      'fr': 'Des sports',
    },
    '9txdocdz': {
      'en':
          'Manchester United: Five takeaways from pre-season tour of Thailand ...',
      'ar': 'مانشستر يونايتد: خمس نصائح من جولة ما قبل الموسم في تايلاند ...',
      'de':
          'Manchester United: Fünf Imbissbuden von der Vorsaison-Tour durch Thailand ...',
      'es':
          'Manchester United: cinco conclusiones de la gira de pretemporada por Tailandia...',
      'fr':
          'Manchester United: Cinq points à retenir de la tournée de pré-saison en Thaïlande...',
    },
    'bz0prytw': {
      'en': '4hour ago',
      'ar': 'قبل 4 ساعات',
      'de': 'Vor 4 Stunden',
      'es': 'hace 4 horas',
      'fr': 'il y a 4 heures',
    },
    'g8axg4jn': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'w8zaskax': {
      'en': 'Sports',
      'ar': 'رياضات',
      'de': 'Sport',
      'es': 'Deportes',
      'fr': 'Des sports',
    },
    's42fnk2z': {
      'en': 'Ex-army major rows to Isle of Wight in DIY boat for Ukraine',
      'ar': 'الصفوف الرئيسية للجيش السابق إلى جزيرة وايت في قارب DIY لأوكرانيا',
      'de':
          'Ex-Armee-Majors rudert mit DIY-Boot für die Ukraine zur Isle of Wight',
      'es':
          'Ex comandante del ejército rema hacia la Isla de Wight en barco de bricolaje para Ucrania',
      'fr':
          'Un ancien commandant de l&#39;armée se dirige vers l&#39;île de Wight dans un bateau de bricolage pour l&#39;Ukraine',
    },
    '3pfaezml': {
      'en': '5 hour ago',
      'ar': 'منذ 5 ساعات',
      'de': 'Vor 5 Std',
      'es': 'hace 5 horas',
      'fr': 'il y a 5 heures',
    },
    'bwfspf89': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'ohzcdi7z': {
      'en': 'Sports',
      'ar': 'رياضات',
      'de': 'Sport',
      'es': 'Deportes',
      'fr': 'Des sports',
    },
    'q6d6tr30': {
      'en':
          'Ukraine war: Russian Foreign Minister Sergei Lavrov seeks allies with ...',
      'ar':
          'حرب أوكرانيا: وزير الخارجية الروسي سيرجي لافروف يبحث عن حلفاء مع ...',
      'de':
          'Ukraine-Krieg: Russlands Außenminister Sergej Lawrow sucht Verbündete mit ...',
      'es':
          'Guerra de Ucrania: el ministro de Relaciones Exteriores de Rusia, Sergei Lavrov, busca aliados con ...',
      'fr':
          'Guerre d&#39;Ukraine : le ministre russe des Affaires étrangères Sergueï Lavrov cherche des alliés avec...',
    },
    'rfit1rfn': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    '4aik0746': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'dycbryoo': {
      'en': 'Sports',
      'ar': 'رياضات',
      'de': 'Sport',
      'es': 'Deportes',
      'fr': 'Des sports',
    },
    'v9ihj4f4': {
      'en':
          'Ukraine war: Russian Foreign Minister Sergei Lavrov seeks allies with ...',
      'ar':
          'حرب أوكرانيا: وزير الخارجية الروسي سيرجي لافروف يبحث عن حلفاء مع ...',
      'de':
          'Ukraine-Krieg: Russlands Außenminister Sergej Lawrow sucht Verbündete mit ...',
      'es':
          'Guerra de Ucrania: el ministro de Relaciones Exteriores de Rusia, Sergei Lavrov, busca aliados con ...',
      'fr':
          'Guerre d&#39;Ukraine : le ministre russe des Affaires étrangères Sergueï Lavrov cherche des alliés avec...',
    },
    'kfz0hwtd': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'n95lhydx': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'strgvgdh': {
      'en': 'Sports',
      'ar': 'رياضات',
      'de': 'Sport',
      'es': 'Deportes',
      'fr': 'Des sports',
    },
    'fs7gq78y': {
      'en': 'Latest News',
      'ar': 'أحدث الأخبار',
      'de': 'Neuesten Nachrichten',
      'es': 'Últimas noticias',
      'fr': 'Dernières nouvelles',
    },
    '6lb6ecm0': {
      'en':
          'Chess robot breaks seven-year-old boy\'s finger during Moscow Open',
      'ar':
          'روبوت الشطرنج يكسر إصبع صبي يبلغ من العمر سبع سنوات خلال بطولة موسكو المفتوحة',
      'de':
          'Schachroboter bricht siebenjährigem Jungen bei Open in Moskau den Finger',
      'es':
          'Robot de ajedrez rompe el dedo de un niño de siete años durante el Abierto de Moscú',
      'fr':
          'Un robot d&#39;échecs casse le doigt d&#39;un garçon de sept ans lors de l&#39;Open de Moscou',
    },
    'trphzg82': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'gcu0hv6l': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'fe8j3wif': {
      'en': 'Business',
      'ar': 'اعمال',
      'de': 'Geschäft',
      'es': 'Negocio',
      'fr': 'Entreprise',
    },
    'eqwpir81': {
      'en': 'Italy migrants: Nearly 1,200 arrive by boat in 24 hours',
      'ar':
          'مهاجرون من إيطاليا: يصل ما يقرب من 1200 عن طريق القوارب في غضون 24 ساعة',
      'de':
          'Migranten aus Italien: Fast 1.200 kommen innerhalb von 24 Stunden mit dem Boot an',
      'es': 'Migrantes de Italia: casi 1.200 llegan en barco en 24 horas',
      'fr':
          'Migrants italiens : Près de 1 200 arrivent par bateau en 24 heures',
    },
    'pdt62hqb': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'vvtpzp9b': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'gcliuspb': {
      'en': 'World',
      'ar': 'العالمية',
      'de': 'Welt',
      'es': 'Mundo',
      'fr': 'Monde',
    },
    '65zw7uin': {
      'en': 'Ex-army major rows to Isle of Wight in DIY boat for Ukraine',
      'ar': 'الصفوف الرئيسية للجيش السابق إلى جزيرة وايت في قارب DIY لأوكرانيا',
      'de':
          'Ex-Armee-Majors rudert mit DIY-Boot für die Ukraine zur Isle of Wight',
      'es':
          'Ex comandante del ejército rema hacia la Isla de Wight en barco de bricolaje para Ucrania',
      'fr':
          'Un ancien commandant de l&#39;armée se dirige vers l&#39;île de Wight dans un bateau de bricolage pour l&#39;Ukraine',
    },
    'pn7bn6ry': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    '0cwf1t9k': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'uy4ye4su': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    '2ul988db': {
      'en':
          'Ukraine war: Russian Foreign Minister Sergei Lavrov seeks allies with ...',
      'ar':
          'حرب أوكرانيا: وزير الخارجية الروسي سيرجي لافروف يبحث عن حلفاء مع ...',
      'de':
          'Ukraine-Krieg: Russlands Außenminister Sergej Lawrow sucht Verbündete mit ...',
      'es':
          'Guerra de Ucrania: el ministro de Relaciones Exteriores de Rusia, Sergei Lavrov, busca aliados con ...',
      'fr':
          'Guerre d&#39;Ukraine : le ministre russe des Affaires étrangères Sergueï Lavrov cherche des alliés avec...',
    },
    'ab33i7we': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    '7i5yohmb': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'xxczn9wk': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'ya0le37j': {
      'en':
          'Ukraine war: Russian Foreign Minister Sergei Lavrov seeks allies with ...',
      'ar':
          'حرب أوكرانيا: وزير الخارجية الروسي سيرجي لافروف يبحث عن حلفاء مع ...',
      'de':
          'Ukraine-Krieg: Russlands Außenminister Sergej Lawrow sucht Verbündete mit ...',
      'es':
          'Guerra de Ucrania: el ministro de Relaciones Exteriores de Rusia, Sergei Lavrov, busca aliados con ...',
      'fr':
          'Guerre d&#39;Ukraine : le ministre russe des Affaires étrangères Sergueï Lavrov cherche des alliés avec...',
    },
    'anerso3i': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'oksg8c2a': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'w1b0dyv2': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'vgl4jw1y': {
      'en': 'Writers',
      'ar': 'الكتاب',
      'de': 'Schriftsteller',
      'es': 'escritores',
      'fr': 'Écrivains',
    },
    '8zv3s305': {
      'en': 'Search by Username',
      'ar': 'البحث عن طريق اسم المستخدم',
      'de': 'Suche nach Benutzernamen',
      'es': 'Buscar por nombre de usuario',
      'fr': 'Rechercher par nom d&#39;utilisateur',
    },
    'e9c3xwjh': {
      'en': 'Username',
      'ar': 'اسم المستخدم',
      'de': 'Nutzername',
      'es': 'Nombre de usuario',
      'fr': 'Nom d&#39;utilisateur',
    },
    '7a9nxrat': {
      'en': 'Interested in tech news',
      'ar': 'مهتم بأخبار التكنولوجيا',
      'de': 'Interessiert an Tech-News',
      'es': 'Interesado en noticias de tecnología',
      'fr': 'Intéressé par l&#39;actualité technique',
    },
    'cmx3eidi': {
      'en': 'View',
      'ar': 'شاهد',
      'de': 'Aussicht',
      'es': 'Vista',
      'fr': 'Voir',
    },
    'g0qpi52g': {
      'en': 'Username',
      'ar': 'اسم المستخدم',
      'de': 'Nutzername',
      'es': 'Nombre de usuario',
      'fr': 'Nom d&#39;utilisateur',
    },
    'oi1ep9pt': {
      'en': 'Interested in sports news',
      'ar': 'مهتم بالأخبار الرياضية',
      'de': 'Interessiert an Sportnachrichten',
      'es': 'Interesado en noticias deportivas',
      'fr': 'Intéressé par l&#39;actualité sportive',
    },
    'tqapabgz': {
      'en': 'View',
      'ar': 'شاهد',
      'de': 'Aussicht',
      'es': 'Vista',
      'fr': 'Voir',
    },
    '8c7t10rs': {
      'en': 'Username',
      'ar': 'اسم المستخدم',
      'de': 'Nutzername',
      'es': 'Nombre de usuario',
      'fr': 'Nom d&#39;utilisateur',
    },
    'wm7csl4v': {
      'en': 'Interested in tech news',
      'ar': 'مهتم بأخبار التكنولوجيا',
      'de': 'Interessiert an Tech-News',
      'es': 'Interesado en noticias de tecnología',
      'fr': 'Intéressé par l&#39;actualité technique',
    },
    'porfuw4q': {
      'en': 'View',
      'ar': 'شاهد',
      'de': 'Aussicht',
      'es': 'Vista',
      'fr': 'Voir',
    },
    'c7iph97f': {
      'en': 'Username',
      'ar': 'اسم المستخدم',
      'de': 'Nutzername',
      'es': 'Nombre de usuario',
      'fr': 'Nom d&#39;utilisateur',
    },
    '984monf2': {
      'en': 'Interested in tech news',
      'ar': 'مهتم بأخبار التكنولوجيا',
      'de': 'Interessiert an Tech-News',
      'es': 'Interesado en noticias de tecnología',
      'fr': 'Intéressé par l&#39;actualité technique',
    },
    'v9n2skxj': {
      'en': 'View',
      'ar': 'شاهد',
      'de': 'Aussicht',
      'es': 'Vista',
      'fr': 'Voir',
    },
    'f9hyb61i': {
      'en': 'Username',
      'ar': 'اسم المستخدم',
      'de': 'Nutzername',
      'es': 'Nombre de usuario',
      'fr': 'Nom d&#39;utilisateur',
    },
    'dlqmzjx2': {
      'en': 'Interested in sports news',
      'ar': 'مهتم بالأخبار الرياضية',
      'de': 'Interessiert an Sportnachrichten',
      'es': 'Interesado en noticias deportivas',
      'fr': 'Intéressé par l&#39;actualité sportive',
    },
    'ach5cm2y': {
      'en': 'View',
      'ar': 'شاهد',
      'de': 'Aussicht',
      'es': 'Vista',
      'fr': 'Voir',
    },
    'ouh36a1h': {
      'en': 'Username',
      'ar': 'اسم المستخدم',
      'de': 'Nutzername',
      'es': 'Nombre de usuario',
      'fr': 'Nom d&#39;utilisateur',
    },
    'nm42byq3': {
      'en': 'Interested in tech news',
      'ar': 'مهتم بأخبار التكنولوجيا',
      'de': 'Interessiert an Tech-News',
      'es': 'Interesado en noticias de tecnología',
      'fr': 'Intéressé par l&#39;actualité technique',
    },
    'u2nmpbtn': {
      'en': 'View',
      'ar': 'شاهد',
      'de': 'Aussicht',
      'es': 'Vista',
      'fr': 'Voir',
    },
    '341zixsn': {
      'en': 'Username',
      'ar': 'اسم المستخدم',
      'de': 'Nutzername',
      'es': 'Nombre de usuario',
      'fr': 'Nom d&#39;utilisateur',
    },
    'r45ructa': {
      'en': 'Interested in tech news',
      'ar': 'مهتم بأخبار التكنولوجيا',
      'de': 'Interessiert an Tech-News',
      'es': 'Interesado en noticias de tecnología',
      'fr': 'Intéressé par l&#39;actualité technique',
    },
    '8jkjvwfi': {
      'en': 'View',
      'ar': 'شاهد',
      'de': 'Aussicht',
      'es': 'Vista',
      'fr': 'Voir',
    },
    '536wm72j': {
      'en': 'Username',
      'ar': 'اسم المستخدم',
      'de': 'Nutzername',
      'es': 'Nombre de usuario',
      'fr': 'Nom d&#39;utilisateur',
    },
    'mqnksw5b': {
      'en': 'Interested in sports news',
      'ar': 'مهتم بالأخبار الرياضية',
      'de': 'Interessiert an Sportnachrichten',
      'es': 'Interesado en noticias deportivas',
      'fr': 'Intéressé par l&#39;actualité sportive',
    },
    'buof15fi': {
      'en': 'View',
      'ar': 'شاهد',
      'de': 'Aussicht',
      'es': 'Vista',
      'fr': 'Voir',
    },
    'c1d7cgua': {
      'en': 'Username',
      'ar': 'اسم المستخدم',
      'de': 'Nutzername',
      'es': 'Nombre de usuario',
      'fr': 'Nom d&#39;utilisateur',
    },
    'yiko0nmm': {
      'en': 'Interested in tech news',
      'ar': 'مهتم بأخبار التكنولوجيا',
      'de': 'Interessiert an Tech-News',
      'es': 'Interesado en noticias de tecnología',
      'fr': 'Intéressé par l&#39;actualité technique',
    },
    'fooyvhs5': {
      'en': 'View',
      'ar': 'شاهد',
      'de': 'Aussicht',
      'es': 'Vista',
      'fr': 'Voir',
    },
    '0d6xsiio': {
      'en': 'Username',
      'ar': 'اسم المستخدم',
      'de': 'Nutzername',
      'es': 'Nombre de usuario',
      'fr': 'Nom d&#39;utilisateur',
    },
    '65du5tu9': {
      'en': 'Interested in tech news',
      'ar': 'مهتم بأخبار التكنولوجيا',
      'de': 'Interessiert an Tech-News',
      'es': 'Interesado en noticias de tecnología',
      'fr': 'Intéressé par l&#39;actualité technique',
    },
    's111zq1k': {
      'en': 'View',
      'ar': 'شاهد',
      'de': 'Aussicht',
      'es': 'Vista',
      'fr': 'Voir',
    },
    '6e92ydjz': {
      'en': 'Username',
      'ar': 'اسم المستخدم',
      'de': 'Nutzername',
      'es': 'Nombre de usuario',
      'fr': 'Nom d&#39;utilisateur',
    },
    'n4s3njuz': {
      'en': 'Interested in sports news',
      'ar': 'مهتم بالأخبار الرياضية',
      'de': 'Interessiert an Sportnachrichten',
      'es': 'Interesado en noticias deportivas',
      'fr': 'Intéressé par l&#39;actualité sportive',
    },
    'zn670glo': {
      'en': 'View',
      'ar': 'شاهد',
      'de': 'Aussicht',
      'es': 'Vista',
      'fr': 'Voir',
    },
    'mrr2dv16': {
      'en': 'Username',
      'ar': 'اسم المستخدم',
      'de': 'Nutzername',
      'es': 'Nombre de usuario',
      'fr': 'Nom d&#39;utilisateur',
    },
    'pu9ut7l5': {
      'en': 'Interested in tech news',
      'ar': 'مهتم بأخبار التكنولوجيا',
      'de': 'Interessiert an Tech-News',
      'es': 'Interesado en noticias de tecnología',
      'fr': 'Intéressé par l&#39;actualité technique',
    },
    '1635jnrd': {
      'en': 'View',
      'ar': 'شاهد',
      'de': 'Aussicht',
      'es': 'Vista',
      'fr': 'Voir',
    },
    '82u301rd': {
      'en': 'Username',
      'ar': 'اسم المستخدم',
      'de': 'Nutzername',
      'es': 'Nombre de usuario',
      'fr': 'Nom d&#39;utilisateur',
    },
    'a8yd4bo8': {
      'en': 'Interested in tech news',
      'ar': 'مهتم بأخبار التكنولوجيا',
      'de': 'Interessiert an Tech-News',
      'es': 'Interesado en noticias de tecnología',
      'fr': 'Intéressé par l&#39;actualité technique',
    },
    'auknja6p': {
      'en': 'View',
      'ar': 'شاهد',
      'de': 'Aussicht',
      'es': 'Vista',
      'fr': 'Voir',
    },
    'p0ov8iei': {
      'en': 'Username',
      'ar': 'اسم المستخدم',
      'de': 'Nutzername',
      'es': 'Nombre de usuario',
      'fr': 'Nom d&#39;utilisateur',
    },
    'cpcj6gni': {
      'en': 'Interested in sports news',
      'ar': 'مهتم بالأخبار الرياضية',
      'de': 'Interessiert an Sportnachrichten',
      'es': 'Interesado en noticias deportivas',
      'fr': 'Intéressé par l&#39;actualité sportive',
    },
    'n5y607rv': {
      'en': 'View',
      'ar': 'شاهد',
      'de': 'Aussicht',
      'es': 'Vista',
      'fr': 'Voir',
    },
    'lj0jdo3n': {
      'en': 'Username',
      'ar': 'اسم المستخدم',
      'de': 'Nutzername',
      'es': 'Nombre de usuario',
      'fr': 'Nom d&#39;utilisateur',
    },
    'qb5lixrj': {
      'en': 'Interested in tech news',
      'ar': 'مهتم بأخبار التكنولوجيا',
      'de': 'Interessiert an Tech-News',
      'es': 'Interesado en noticias de tecnología',
      'fr': 'Intéressé par l&#39;actualité technique',
    },
    'gnyqulbw': {
      'en': 'View',
      'ar': 'شاهد',
      'de': 'Aussicht',
      'es': 'Vista',
      'fr': 'Voir',
    },
    'ktg40x9e': {
      'en': 'Username',
      'ar': 'اسم المستخدم',
      'de': 'Nutzername',
      'es': 'Nombre de usuario',
      'fr': 'Nom d&#39;utilisateur',
    },
    'whqaus40': {
      'en': 'Interested in tech news',
      'ar': 'مهتم بأخبار التكنولوجيا',
      'de': 'Interessiert an Tech-News',
      'es': 'Interesado en noticias de tecnología',
      'fr': 'Intéressé par l&#39;actualité technique',
    },
    'pu2h5n7h': {
      'en': 'View',
      'ar': 'شاهد',
      'de': 'Aussicht',
      'es': 'Vista',
      'fr': 'Voir',
    },
    't8n21jy9': {
      'en': 'Username',
      'ar': 'اسم المستخدم',
      'de': 'Nutzername',
      'es': 'Nombre de usuario',
      'fr': 'Nom d&#39;utilisateur',
    },
    'ednolx8p': {
      'en': 'Interested in sports news',
      'ar': 'مهتم بالأخبار الرياضية',
      'de': 'Interessiert an Sportnachrichten',
      'es': 'Interesado en noticias deportivas',
      'fr': 'Intéressé par l&#39;actualité sportive',
    },
    'e5n24mbn': {
      'en': 'View',
      'ar': 'شاهد',
      'de': 'Aussicht',
      'es': 'Vista',
      'fr': 'Voir',
    },
    'avkkbd4a': {
      'en': 'Username',
      'ar': 'اسم المستخدم',
      'de': 'Nutzername',
      'es': 'Nombre de usuario',
      'fr': 'Nom d&#39;utilisateur',
    },
    'dw7sbeea': {
      'en': 'Interested in tech news',
      'ar': 'مهتم بأخبار التكنولوجيا',
      'de': 'Interessiert an Tech-News',
      'es': 'Interesado en noticias de tecnología',
      'fr': 'Intéressé par l&#39;actualité technique',
    },
    's28cpah9': {
      'en': 'View',
      'ar': 'شاهد',
      'de': 'Aussicht',
      'es': 'Vista',
      'fr': 'Voir',
    },
    'fbpmzolc': {
      'en': 'OXNEWS',
      'ar': 'OXNEWS',
      'de': 'OXNEWS',
      'es': 'OXNOTICIAS',
      'fr': 'OXNEWS',
    },
    'kzjll2n1': {
      'en': 'Home',
      'ar': 'مسكن',
      'de': 'Heim',
      'es': 'Hogar',
      'fr': 'Maison',
    },
  },
  // Categories
  {
    'tb4k444a': {
      'en': 'Politics',
      'ar': 'سياسة',
      'de': 'Politik',
      'es': 'Política',
      'fr': 'Politique',
    },
    'vn7zwhs1': {
      'en': 'World',
      'ar': 'العالمية',
      'de': 'Welt',
      'es': 'Mundo',
      'fr': 'Monde',
    },
    'dm3f8ge8': {
      'en': 'Health',
      'ar': 'صحة',
      'de': 'Die Gesundheit',
      'es': 'Salud',
      'fr': 'Santé',
    },
    'eaqliior': {
      'en': 'Climate',
      'ar': 'مناخ',
      'de': 'Klima',
      'es': 'Climatizado',
      'fr': 'Climat',
    },
    '9bti2orv': {
      'en': 'Business',
      'ar': 'اعمال',
      'de': 'Geschäft',
      'es': 'Negocio',
      'fr': 'Entreprise',
    },
    'hwyktnok': {
      'en': 'Tech',
      'ar': 'تقنية',
      'de': 'Technik',
      'es': 'tecnología',
      'fr': 'Technologie',
    },
    '8dbddah3': {
      'en': 'Sports',
      'ar': 'رياضات',
      'de': 'Sport',
      'es': 'Deportes',
      'fr': 'Des sports',
    },
    'o5szz9rl': {
      'en': 'Categories',
      'ar': 'فئات',
      'de': 'Kategorien',
      'es': 'Categorías',
      'fr': 'Catégories',
    },
    'vfyq77zz': {
      'en': 'Home',
      'ar': 'مسكن',
      'de': 'Heim',
      'es': 'Hogar',
      'fr': 'Maison',
    },
  },
  // Politics
  {
    'dvotmo8u': {
      'en': 'Politics',
      'ar': 'سياسة',
      'de': 'Politik',
      'es': 'Política',
      'fr': 'Politique',
    },
    'k0oozzwo': {
      'en': 'New News',
      'ar': 'اخبار جديدة',
      'de': 'Neue Nachrichten',
      'es': 'Nuevas noticias',
      'fr': 'Nouvelles informations',
    },
    'ugew6ydy': {
      'en':
          'Ukraine war: Russian Foreign Minister Sergei Lavrov seeks allies with ...',
      'ar':
          'حرب أوكرانيا: وزير الخارجية الروسي سيرجي لافروف يبحث عن حلفاء مع ...',
      'de':
          'Ukraine-Krieg: Russlands Außenminister Sergej Lawrow sucht Verbündete mit ...',
      'es':
          'Guerra de Ucrania: el ministro de Relaciones Exteriores de Rusia, Sergei Lavrov, busca aliados con ...',
      'fr':
          'Guerre d&#39;Ukraine : le ministre russe des Affaires étrangères Sergueï Lavrov cherche des alliés avec...',
    },
    'v92dp712': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'nqqkhtr0': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'tqo48f37': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'f5341das': {
      'en':
          'Ukraine war: Kyiv\'s forces moving towards occupied Kherson - Zelensky',
      'ar': 'حرب أوكرانيا: قوات كييف تتجه نحو خيرسون - زيلينسكي المحتلة',
      'de':
          'Ukraine-Krieg: Kiews Streitkräfte bewegen sich auf das besetzte Cherson zu - Selenskyj',
      'es':
          'Guerra de Ucrania: las fuerzas de Kyiv avanzan hacia el Kherson ocupado - Zelensky',
      'fr':
          'Guerre d&#39;Ukraine : les forces de Kyiv se dirigent vers Kherson occupée - Zelensky',
    },
    'xwp4jsze': {
      'en': '2 hour ago',
      'ar': 'منذ ساعتين',
      'de': 'Vor 2 Std',
      'es': 'hace 2 horas',
      'fr': 'il y a 2 heures',
    },
    '199lc6eg': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'w15omcrc': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'm57z4sos': {
      'en': 'Ex-army major rows to Isle of Wight in DIY boat for Ukraine',
      'ar': 'الصفوف الرئيسية للجيش السابق إلى جزيرة وايت في قارب DIY لأوكرانيا',
      'de':
          'Ex-Armee-Majors rudert mit DIY-Boot für die Ukraine zur Isle of Wight',
      'es':
          'Ex comandante del ejército rema hacia la Isla de Wight en barco de bricolaje para Ucrania',
      'fr':
          'Un ancien commandant de l&#39;armée se dirige vers l&#39;île de Wight dans un bateau de bricolage pour l&#39;Ukraine',
    },
    'udfz9828': {
      'en': '4 hour ago',
      'ar': 'قبل 4 ساعات',
      'de': 'Vor 4 Std',
      'es': 'hace 4 horas',
      'fr': 'il y a 4 heures',
    },
    'eht7xiod': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    '7866qtgu': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'tmjbyojs': {
      'en':
          'Ukraine war: Russian Foreign Minister Sergei Lavrov seeks allies with ...',
      'ar':
          'حرب أوكرانيا: وزير الخارجية الروسي سيرجي لافروف يبحث عن حلفاء مع ...',
      'de':
          'Ukraine-Krieg: Russlands Außenminister Sergej Lawrow sucht Verbündete mit ...',
      'es':
          'Guerra de Ucrania: el ministro de Relaciones Exteriores de Rusia, Sergei Lavrov, busca aliados con ...',
      'fr':
          'Guerre d&#39;Ukraine : le ministre russe des Affaires étrangères Sergueï Lavrov cherche des alliés avec...',
    },
    '7qdax3zr': {
      'en': '6 hour ago',
      'ar': 'منذ 6 ساعات',
      'de': 'Vor 6 Std',
      'es': 'hace 6 horas',
      'fr': 'il y a 6 heures',
    },
    'x5cyynly': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'ra3dchb7': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    '9l89owf2': {
      'en':
          'Ukraine war: Russian Foreign Minister Sergei Lavrov seeks allies with ...',
      'ar':
          'حرب أوكرانيا: وزير الخارجية الروسي سيرجي لافروف يبحث عن حلفاء مع ...',
      'de':
          'Ukraine-Krieg: Russlands Außenminister Sergej Lawrow sucht Verbündete mit ...',
      'es':
          'Guerra de Ucrania: el ministro de Relaciones Exteriores de Rusia, Sergei Lavrov, busca aliados con ...',
      'fr':
          'Guerre d&#39;Ukraine : le ministre russe des Affaires étrangères Sergueï Lavrov cherche des alliés avec...',
    },
    'o9isra1z': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    '4xcxkpcb': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    '3dkf3n82': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'zhzitimc': {
      'en': 'Video News',
      'ar': 'أخبار الفيديو',
      'de': 'Video-Nachrichten',
      'es': 'Vídeo Noticias',
      'fr': 'Nouvelles vidéo',
    },
    'aeeobmw4': {
      'en': 'Mike Pence takes thinly-veiled shot...',
      'ar': 'مايك بينس يأخذ لقطة محجبة رقيقة ...',
      'de': 'Mike Pence macht einen kaum verhüllten Schuss...',
      'es': 'Mike Pence toma una foto poco disimulada...',
      'fr': 'Mike Pence prend une photo à peine voilée...',
    },
    'wved6vua': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'fa48x7qm': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    '3to3g5qc': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    '11aatr0g': {
      'en': 'Biden faces criticism for Mohammed...',
      'ar': 'بايدن يواجه انتقادات لمحمد ...',
      'de': 'Biden sieht sich wegen Mohammeds Kritik ausgesetzt',
      'es': 'Biden enfrenta críticas por Mohamed...',
      'fr': 'Biden fait face à des critiques pour Mohammed...',
    },
    '7xj6c5y7': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'nl20ilv2': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'fiooblhn': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'lfgmhdgv': {
      'en': 'Data shows big shift in Democratic.. ',
      'ar': 'تشير البيانات إلى تحول كبير في الديمقراطية ..',
      'de': 'Daten zeigen große Verschiebung in der Demokratischen..',
      'es': 'Los datos muestran un gran cambio en el...',
      'fr': 'Les données montrent un grand changement dans les démocraties ..',
    },
    'l2u0hcw8': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'qs1r4so5': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'ildq2zwc': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'zl2t7ap6': {
      'en': 'Steve Bannon found guilty of contempt..',
      'ar': 'وجد ستيف بانون مذنبا بتهمة الازدراء ..',
      'de': 'Steve Bannon der Verachtung für schuldig befunden',
      'es': 'Steve Bannon declarado culpable de desacato..',
      'fr': 'Steve Bannon reconnu coupable d&#39;outrage...',
    },
    '8cw08alt': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'kbmpiaqy': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'k5ho909s': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    '9xrkrnv7': {
      'en': 'World News',
      'ar': 'اخبار العالم',
      'de': 'Weltnachrichten',
      'es': 'Noticias del mundo',
      'fr': 'Nouvelles du monde',
    },
    'rpbgznyf': {
      'en':
          'Chess robot breaks seven-year-old boy\'s finger during Moscow Open',
      'ar':
          'روبوت الشطرنج يكسر إصبع صبي يبلغ من العمر سبع سنوات خلال بطولة موسكو المفتوحة',
      'de':
          'Schachroboter bricht siebenjährigem Jungen bei Open in Moskau den Finger',
      'es':
          'Robot de ajedrez rompe el dedo de un niño de siete años durante el Abierto de Moscú',
      'fr':
          'Un robot d&#39;échecs casse le doigt d&#39;un garçon de sept ans lors de l&#39;Open de Moscou',
    },
    '764c7yda': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    '28oyayk3': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    '96qb0owe': {
      'en': 'Latest News',
      'ar': 'أحدث الأخبار',
      'de': 'Neuesten Nachrichten',
      'es': 'Últimas noticias',
      'fr': 'Dernières nouvelles',
    },
    'ax497so8': {
      'en': 'Italy migrants: Nearly 1,200 arrive by boat in 24 hours',
      'ar':
          'مهاجرون من إيطاليا: يصل ما يقرب من 1200 عن طريق القوارب في غضون 24 ساعة',
      'de':
          'Migranten aus Italien: Fast 1.200 kommen innerhalb von 24 Stunden mit dem Boot an',
      'es': 'Migrantes de Italia: casi 1.200 llegan en barco en 24 horas',
      'fr':
          'Migrants italiens : Près de 1 200 arrivent par bateau en 24 heures',
    },
    'bdbjh4kj': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'c9sz6ifu': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'utnkpjfi': {
      'en': 'Latest News',
      'ar': 'أحدث الأخبار',
      'de': 'Neuesten Nachrichten',
      'es': 'Últimas noticias',
      'fr': 'Dernières nouvelles',
    },
    '8m83kn0u': {
      'en': 'Ex-army major rows to Isle of Wight in DIY boat for Ukraine',
      'ar': 'الصفوف الرئيسية للجيش السابق إلى جزيرة وايت في قارب DIY لأوكرانيا',
      'de':
          'Ex-Armee-Majors rudert mit DIY-Boot für die Ukraine zur Isle of Wight',
      'es':
          'Ex comandante del ejército rema hacia la Isla de Wight en barco de bricolaje para Ucrania',
      'fr':
          'Un ancien commandant de l&#39;armée se dirige vers l&#39;île de Wight dans un bateau de bricolage pour l&#39;Ukraine',
    },
    'fq920whr': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    '3qrbw3jb': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'xcfuicya': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'kkwn6p3e': {
      'en':
          'Ukraine war: Russian Foreign Minister Sergei Lavrov seeks allies with ...',
      'ar':
          'حرب أوكرانيا: وزير الخارجية الروسي سيرجي لافروف يبحث عن حلفاء مع ...',
      'de':
          'Ukraine-Krieg: Russlands Außenminister Sergej Lawrow sucht Verbündete mit ...',
      'es':
          'Guerra de Ucrania: el ministro de Relaciones Exteriores de Rusia, Sergei Lavrov, busca aliados con ...',
      'fr':
          'Guerre d&#39;Ukraine : le ministre russe des Affaires étrangères Sergueï Lavrov cherche des alliés avec...',
    },
    '5pwmfho9': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    '83oi7n5l': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    've9pleg1': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    '7sxqinsn': {
      'en':
          'Ukraine war: Russian Foreign Minister Sergei Lavrov seeks allies with ...',
      'ar':
          'حرب أوكرانيا: وزير الخارجية الروسي سيرجي لافروف يبحث عن حلفاء مع ...',
      'de':
          'Ukraine-Krieg: Russlands Außenminister Sergej Lawrow sucht Verbündete mit ...',
      'es':
          'Guerra de Ucrania: el ministro de Relaciones Exteriores de Rusia, Sergei Lavrov, busca aliados con ...',
      'fr':
          'Guerre d&#39;Ukraine : le ministre russe des Affaires étrangères Sergueï Lavrov cherche des alliés avec...',
    },
    'x6u45mdd': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'zd1gli6s': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    '6dgygda5': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'njp5zg9z': {
      'en': 'Home',
      'ar': 'مسكن',
      'de': 'Heim',
      'es': 'Hogar',
      'fr': 'Maison',
    },
  },
  // World
  {
    'yhat4s4l': {
      'en': 'World',
      'ar': 'العالمية',
      'de': 'Welt',
      'es': 'Mundo',
      'fr': 'Monde',
    },
    'u3s8rbbd': {
      'en': 'New News',
      'ar': 'اخبار جديدة',
      'de': 'Neue Nachrichten',
      'es': 'Nuevas noticias',
      'fr': 'Nouvelles informations',
    },
    'xvm5gjlm': {
      'en':
          'Ukraine war: Russian Foreign Minister Sergei Lavrov seeks allies with ...',
      'ar':
          'حرب أوكرانيا: وزير الخارجية الروسي سيرجي لافروف يبحث عن حلفاء مع ...',
      'de':
          'Ukraine-Krieg: Russlands Außenminister Sergej Lawrow sucht Verbündete mit ...',
      'es':
          'Guerra de Ucrania: el ministro de Relaciones Exteriores de Rusia, Sergei Lavrov, busca aliados con ...',
      'fr':
          'Guerre d&#39;Ukraine : le ministre russe des Affaires étrangères Sergueï Lavrov cherche des alliés avec...',
    },
    '8iksd4iy': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'aeqlhhxr': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'f0r6fnj1': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'vgbsoh0u': {
      'en':
          'Ukraine war: Kyiv\'s forces moving towards occupied Kherson - Zelensky',
      'ar': 'حرب أوكرانيا: قوات كييف تتجه نحو خيرسون - زيلينسكي المحتلة',
      'de':
          'Ukraine-Krieg: Kiews Streitkräfte bewegen sich auf das besetzte Cherson zu - Selenskyj',
      'es':
          'Guerra de Ucrania: las fuerzas de Kyiv avanzan hacia el Kherson ocupado - Zelensky',
      'fr':
          'Guerre d&#39;Ukraine : les forces de Kyiv se dirigent vers Kherson occupée - Zelensky',
    },
    'pldypxsf': {
      'en': '2 hour ago',
      'ar': 'منذ ساعتين',
      'de': 'Vor 2 Std',
      'es': 'hace 2 horas',
      'fr': 'il y a 2 heures',
    },
    'ezhhrgym': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'lwt9p269': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    '871eief6': {
      'en': 'Ex-army major rows to Isle of Wight in DIY boat for Ukraine',
      'ar': 'الصفوف الرئيسية للجيش السابق إلى جزيرة وايت في قارب DIY لأوكرانيا',
      'de':
          'Ex-Armee-Majors rudert mit DIY-Boot für die Ukraine zur Isle of Wight',
      'es':
          'Ex comandante del ejército rema hacia la Isla de Wight en barco de bricolaje para Ucrania',
      'fr':
          'Un ancien commandant de l&#39;armée se dirige vers l&#39;île de Wight dans un bateau de bricolage pour l&#39;Ukraine',
    },
    '5y93sr6d': {
      'en': '4 hour ago',
      'ar': 'قبل 4 ساعات',
      'de': 'Vor 4 Std',
      'es': 'hace 4 horas',
      'fr': 'il y a 4 heures',
    },
    '2d51vqca': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    '1ywz27ht': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'ryen6fj1': {
      'en':
          'Ukraine war: Russian Foreign Minister Sergei Lavrov seeks allies with ...',
      'ar':
          'حرب أوكرانيا: وزير الخارجية الروسي سيرجي لافروف يبحث عن حلفاء مع ...',
      'de':
          'Ukraine-Krieg: Russlands Außenminister Sergej Lawrow sucht Verbündete mit ...',
      'es':
          'Guerra de Ucrania: el ministro de Relaciones Exteriores de Rusia, Sergei Lavrov, busca aliados con ...',
      'fr':
          'Guerre d&#39;Ukraine : le ministre russe des Affaires étrangères Sergueï Lavrov cherche des alliés avec...',
    },
    'pryf4048': {
      'en': '6 hour ago',
      'ar': 'منذ 6 ساعات',
      'de': 'Vor 6 Std',
      'es': 'hace 6 horas',
      'fr': 'il y a 6 heures',
    },
    'w27qndza': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'zd7w07di': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'v564ppic': {
      'en':
          'Ukraine war: Russian Foreign Minister Sergei Lavrov seeks allies with ...',
      'ar':
          'حرب أوكرانيا: وزير الخارجية الروسي سيرجي لافروف يبحث عن حلفاء مع ...',
      'de':
          'Ukraine-Krieg: Russlands Außenminister Sergej Lawrow sucht Verbündete mit ...',
      'es':
          'Guerra de Ucrania: el ministro de Relaciones Exteriores de Rusia, Sergei Lavrov, busca aliados con ...',
      'fr':
          'Guerre d&#39;Ukraine : le ministre russe des Affaires étrangères Sergueï Lavrov cherche des alliés avec...',
    },
    '1vvkeb6j': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'inr1y8c2': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'd1gauxne': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'mw8wi0wh': {
      'en': 'Video News',
      'ar': 'أخبار الفيديو',
      'de': 'Video-Nachrichten',
      'es': 'Vídeo Noticias',
      'fr': 'Nouvelles vidéo',
    },
    'a5c864nz': {
      'en': 'Mike Pence takes thinly-veiled shot...',
      'ar': 'مايك بينس يأخذ لقطة محجبة رقيقة ...',
      'de': 'Mike Pence macht einen kaum verhüllten Schuss...',
      'es': 'Mike Pence toma una foto poco disimulada...',
      'fr': 'Mike Pence prend une photo à peine voilée...',
    },
    'id1koh34': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    '04847zim': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'g433cad7': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'j1vlu6ti': {
      'en': 'Biden faces criticism for Mohammed...',
      'ar': 'بايدن يواجه انتقادات لمحمد ...',
      'de': 'Biden sieht sich wegen Mohammeds Kritik ausgesetzt',
      'es': 'Biden enfrenta críticas por Mohamed...',
      'fr': 'Biden fait face à des critiques pour Mohammed...',
    },
    'gthrdul9': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'nzc55418': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'brpsel0k': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'kger2jho': {
      'en': 'Data shows big shift in Democratic.. ',
      'ar': 'تشير البيانات إلى تحول كبير في الديمقراطية ..',
      'de': 'Daten zeigen große Verschiebung in der Demokratischen..',
      'es': 'Los datos muestran un gran cambio en el...',
      'fr': 'Les données montrent un grand changement dans les démocraties ..',
    },
    '39k7l3tx': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'cv533j86': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'l1svs48a': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    '2kbhbyss': {
      'en': 'Steve Bannon found guilty of contempt..',
      'ar': 'وجد ستيف بانون مذنبا بتهمة الازدراء ..',
      'de': 'Steve Bannon der Verachtung für schuldig befunden',
      'es': 'Steve Bannon declarado culpable de desacato..',
      'fr': 'Steve Bannon reconnu coupable d&#39;outrage...',
    },
    'x8id8sru': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    '4e28fzc0': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'kox21n9x': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'g9ggijvv': {
      'en': 'World News',
      'ar': 'اخبار العالم',
      'de': 'Weltnachrichten',
      'es': 'Noticias del mundo',
      'fr': 'Nouvelles du monde',
    },
    '8vswwkz6': {
      'en':
          'Chess robot breaks seven-year-old boy\'s finger during Moscow Open',
      'ar':
          'روبوت الشطرنج يكسر إصبع صبي يبلغ من العمر سبع سنوات خلال بطولة موسكو المفتوحة',
      'de':
          'Schachroboter bricht siebenjährigem Jungen bei Open in Moskau den Finger',
      'es':
          'Robot de ajedrez rompe el dedo de un niño de siete años durante el Abierto de Moscú',
      'fr':
          'Un robot d&#39;échecs casse le doigt d&#39;un garçon de sept ans lors de l&#39;Open de Moscou',
    },
    'te0xyv8k': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'shh9oyyx': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    '9yj93fv7': {
      'en': 'Latest News',
      'ar': 'أحدث الأخبار',
      'de': 'Neuesten Nachrichten',
      'es': 'Últimas noticias',
      'fr': 'Dernières nouvelles',
    },
    '03dbotru': {
      'en': 'Italy migrants: Nearly 1,200 arrive by boat in 24 hours',
      'ar':
          'مهاجرون من إيطاليا: يصل ما يقرب من 1200 عن طريق القوارب في غضون 24 ساعة',
      'de':
          'Migranten aus Italien: Fast 1.200 kommen innerhalb von 24 Stunden mit dem Boot an',
      'es': 'Migrantes de Italia: casi 1.200 llegan en barco en 24 horas',
      'fr':
          'Migrants italiens : Près de 1 200 arrivent par bateau en 24 heures',
    },
    '5t3kpy0s': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    '3sq00z2v': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'c7n4nt09': {
      'en': 'Latest News',
      'ar': 'أحدث الأخبار',
      'de': 'Neuesten Nachrichten',
      'es': 'Últimas noticias',
      'fr': 'Dernières nouvelles',
    },
    'q5ohv5gc': {
      'en': 'Ex-army major rows to Isle of Wight in DIY boat for Ukraine',
      'ar': 'الصفوف الرئيسية للجيش السابق إلى جزيرة وايت في قارب DIY لأوكرانيا',
      'de':
          'Ex-Armee-Majors rudert mit DIY-Boot für die Ukraine zur Isle of Wight',
      'es':
          'Ex comandante del ejército rema hacia la Isla de Wight en barco de bricolaje para Ucrania',
      'fr':
          'Un ancien commandant de l&#39;armée se dirige vers l&#39;île de Wight dans un bateau de bricolage pour l&#39;Ukraine',
    },
    '76zw0mpb': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'nrf8epyr': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'ebwtw5tn': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'ew4gn208': {
      'en':
          'Ukraine war: Russian Foreign Minister Sergei Lavrov seeks allies with ...',
      'ar':
          'حرب أوكرانيا: وزير الخارجية الروسي سيرجي لافروف يبحث عن حلفاء مع ...',
      'de':
          'Ukraine-Krieg: Russlands Außenminister Sergej Lawrow sucht Verbündete mit ...',
      'es':
          'Guerra de Ucrania: el ministro de Relaciones Exteriores de Rusia, Sergei Lavrov, busca aliados con ...',
      'fr':
          'Guerre d&#39;Ukraine : le ministre russe des Affaires étrangères Sergueï Lavrov cherche des alliés avec...',
    },
    'ybmyjcmz': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'wfytwicc': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'k84tcfh9': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'qfjpmw5b': {
      'en':
          'Ukraine war: Russian Foreign Minister Sergei Lavrov seeks allies with ...',
      'ar':
          'حرب أوكرانيا: وزير الخارجية الروسي سيرجي لافروف يبحث عن حلفاء مع ...',
      'de':
          'Ukraine-Krieg: Russlands Außenminister Sergej Lawrow sucht Verbündete mit ...',
      'es':
          'Guerra de Ucrania: el ministro de Relaciones Exteriores de Rusia, Sergei Lavrov, busca aliados con ...',
      'fr':
          'Guerre d&#39;Ukraine : le ministre russe des Affaires étrangères Sergueï Lavrov cherche des alliés avec...',
    },
    '6nij477f': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    '4vlzre7u': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    '10esfi0s': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'we4h0dvh': {
      'en': 'Home',
      'ar': 'مسكن',
      'de': 'Heim',
      'es': 'Hogar',
      'fr': 'Maison',
    },
  },
  // Health
  {
    'no6xt89o': {
      'en': 'Health',
      'ar': 'صحة',
      'de': 'Die Gesundheit',
      'es': 'Salud',
      'fr': 'Santé',
    },
    'g2mijhts': {
      'en': 'New News',
      'ar': 'اخبار جديدة',
      'de': 'Neue Nachrichten',
      'es': 'Nuevas noticias',
      'fr': 'Nouvelles informations',
    },
    '4tmlcatg': {
      'en':
          'Ukraine war: Russian Foreign Minister Sergei Lavrov seeks allies with ...',
      'ar':
          'حرب أوكرانيا: وزير الخارجية الروسي سيرجي لافروف يبحث عن حلفاء مع ...',
      'de':
          'Ukraine-Krieg: Russlands Außenminister Sergej Lawrow sucht Verbündete mit ...',
      'es':
          'Guerra de Ucrania: el ministro de Relaciones Exteriores de Rusia, Sergei Lavrov, busca aliados con ...',
      'fr':
          'Guerre d&#39;Ukraine : le ministre russe des Affaires étrangères Sergueï Lavrov cherche des alliés avec...',
    },
    'aj7vujt2': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    '6g1dakir': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'gzid3uv6': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'y4ljq0wi': {
      'en':
          'Ukraine war: Kyiv\'s forces moving towards occupied Kherson - Zelensky',
      'ar': 'حرب أوكرانيا: قوات كييف تتجه نحو خيرسون - زيلينسكي المحتلة',
      'de':
          'Ukraine-Krieg: Kiews Streitkräfte bewegen sich auf das besetzte Cherson zu - Selenskyj',
      'es':
          'Guerra de Ucrania: las fuerzas de Kyiv avanzan hacia el Kherson ocupado - Zelensky',
      'fr':
          'Guerre d&#39;Ukraine : les forces de Kyiv se dirigent vers Kherson occupée - Zelensky',
    },
    'ogmswcdr': {
      'en': '2 hour ago',
      'ar': 'منذ ساعتين',
      'de': 'Vor 2 Std',
      'es': 'hace 2 horas',
      'fr': 'il y a 2 heures',
    },
    'hnokbiyw': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'kodzt2xi': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'jezofzt4': {
      'en': 'Ex-army major rows to Isle of Wight in DIY boat for Ukraine',
      'ar': 'الصفوف الرئيسية للجيش السابق إلى جزيرة وايت في قارب DIY لأوكرانيا',
      'de':
          'Ex-Armee-Majors rudert mit DIY-Boot für die Ukraine zur Isle of Wight',
      'es':
          'Ex comandante del ejército rema hacia la Isla de Wight en barco de bricolaje para Ucrania',
      'fr':
          'Un ancien commandant de l&#39;armée se dirige vers l&#39;île de Wight dans un bateau de bricolage pour l&#39;Ukraine',
    },
    'f1sf4f84': {
      'en': '4 hour ago',
      'ar': 'قبل 4 ساعات',
      'de': 'Vor 4 Std',
      'es': 'hace 4 horas',
      'fr': 'il y a 4 heures',
    },
    '3y1db4c8': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    '7xw43qq6': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'd0zgm6fk': {
      'en':
          'Ukraine war: Russian Foreign Minister Sergei Lavrov seeks allies with ...',
      'ar':
          'حرب أوكرانيا: وزير الخارجية الروسي سيرجي لافروف يبحث عن حلفاء مع ...',
      'de':
          'Ukraine-Krieg: Russlands Außenminister Sergej Lawrow sucht Verbündete mit ...',
      'es':
          'Guerra de Ucrania: el ministro de Relaciones Exteriores de Rusia, Sergei Lavrov, busca aliados con ...',
      'fr':
          'Guerre d&#39;Ukraine : le ministre russe des Affaires étrangères Sergueï Lavrov cherche des alliés avec...',
    },
    'auuk3feq': {
      'en': '6 hour ago',
      'ar': 'منذ 6 ساعات',
      'de': 'Vor 6 Std',
      'es': 'hace 6 horas',
      'fr': 'il y a 6 heures',
    },
    'ck6wowqx': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'kwklne9z': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'u2v6mqd4': {
      'en':
          'Ukraine war: Russian Foreign Minister Sergei Lavrov seeks allies with ...',
      'ar':
          'حرب أوكرانيا: وزير الخارجية الروسي سيرجي لافروف يبحث عن حلفاء مع ...',
      'de':
          'Ukraine-Krieg: Russlands Außenminister Sergej Lawrow sucht Verbündete mit ...',
      'es':
          'Guerra de Ucrania: el ministro de Relaciones Exteriores de Rusia, Sergei Lavrov, busca aliados con ...',
      'fr':
          'Guerre d&#39;Ukraine : le ministre russe des Affaires étrangères Sergueï Lavrov cherche des alliés avec...',
    },
    '8ixm5tpr': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'fw9zx1wd': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'ofwpvj3m': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    '10qxq2b8': {
      'en': 'Video News',
      'ar': 'أخبار الفيديو',
      'de': 'Video-Nachrichten',
      'es': 'Vídeo Noticias',
      'fr': 'Nouvelles vidéo',
    },
    'e64yfvmj': {
      'en': 'Mike Pence takes thinly-veiled shot...',
      'ar': 'مايك بينس يأخذ لقطة محجبة رقيقة ...',
      'de': 'Mike Pence macht einen kaum verhüllten Schuss...',
      'es': 'Mike Pence toma una foto poco disimulada...',
      'fr': 'Mike Pence prend une photo à peine voilée...',
    },
    '585letrf': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    '2xxqs88r': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    '482dut1l': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    '86ihrr34': {
      'en': 'Biden faces criticism for Mohammed...',
      'ar': 'بايدن يواجه انتقادات لمحمد ...',
      'de': 'Biden sieht sich wegen Mohammeds Kritik ausgesetzt',
      'es': 'Biden enfrenta críticas por Mohamed...',
      'fr': 'Biden fait face à des critiques pour Mohammed...',
    },
    'ej7u0m8l': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'uoi0twpo': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    '1iq0pg41': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    '08z2j21y': {
      'en': 'Data shows big shift in Democratic.. ',
      'ar': 'تشير البيانات إلى تحول كبير في الديمقراطية ..',
      'de': 'Daten zeigen große Verschiebung in der Demokratischen..',
      'es': 'Los datos muestran un gran cambio en el...',
      'fr': 'Les données montrent un grand changement dans les démocraties ..',
    },
    'u88zzmwv': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'qya7dzpv': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    '66to6pf1': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'k9rl71ux': {
      'en': 'Steve Bannon found guilty of contempt..',
      'ar': 'وجد ستيف بانون مذنبا بتهمة الازدراء ..',
      'de': 'Steve Bannon der Verachtung für schuldig befunden',
      'es': 'Steve Bannon declarado culpable de desacato..',
      'fr': 'Steve Bannon reconnu coupable d&#39;outrage...',
    },
    'oyrayih6': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    '2vj865a4': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'h3v6l667': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'moekmxev': {
      'en': 'World News',
      'ar': 'اخبار العالم',
      'de': 'Weltnachrichten',
      'es': 'Noticias del mundo',
      'fr': 'Nouvelles du monde',
    },
    '8qwoj6as': {
      'en':
          'Chess robot breaks seven-year-old boy\'s finger during Moscow Open',
      'ar':
          'روبوت الشطرنج يكسر إصبع صبي يبلغ من العمر سبع سنوات خلال بطولة موسكو المفتوحة',
      'de':
          'Schachroboter bricht siebenjährigem Jungen bei Open in Moskau den Finger',
      'es':
          'Robot de ajedrez rompe el dedo de un niño de siete años durante el Abierto de Moscú',
      'fr':
          'Un robot d&#39;échecs casse le doigt d&#39;un garçon de sept ans lors de l&#39;Open de Moscou',
    },
    '8i3s6ipm': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    '0di48atb': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'femohhm6': {
      'en': 'Latest News',
      'ar': 'أحدث الأخبار',
      'de': 'Neuesten Nachrichten',
      'es': 'Últimas noticias',
      'fr': 'Dernières nouvelles',
    },
    'kfwc3k9e': {
      'en': 'Italy migrants: Nearly 1,200 arrive by boat in 24 hours',
      'ar':
          'مهاجرون من إيطاليا: يصل ما يقرب من 1200 عن طريق القوارب في غضون 24 ساعة',
      'de':
          'Migranten aus Italien: Fast 1.200 kommen innerhalb von 24 Stunden mit dem Boot an',
      'es': 'Migrantes de Italia: casi 1.200 llegan en barco en 24 horas',
      'fr':
          'Migrants italiens : Près de 1 200 arrivent par bateau en 24 heures',
    },
    'vbzprqi9': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'er88984j': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'g1va0nly': {
      'en': 'Latest News',
      'ar': 'أحدث الأخبار',
      'de': 'Neuesten Nachrichten',
      'es': 'Últimas noticias',
      'fr': 'Dernières nouvelles',
    },
    'cfiy00cv': {
      'en': 'Ex-army major rows to Isle of Wight in DIY boat for Ukraine',
      'ar': 'الصفوف الرئيسية للجيش السابق إلى جزيرة وايت في قارب DIY لأوكرانيا',
      'de':
          'Ex-Armee-Majors rudert mit DIY-Boot für die Ukraine zur Isle of Wight',
      'es':
          'Ex comandante del ejército rema hacia la Isla de Wight en barco de bricolaje para Ucrania',
      'fr':
          'Un ancien commandant de l&#39;armée se dirige vers l&#39;île de Wight dans un bateau de bricolage pour l&#39;Ukraine',
    },
    '0orhj931': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    '3ztnop1i': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    '4w6w1ews': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'xmgtyj4k': {
      'en':
          'Ukraine war: Russian Foreign Minister Sergei Lavrov seeks allies with ...',
      'ar':
          'حرب أوكرانيا: وزير الخارجية الروسي سيرجي لافروف يبحث عن حلفاء مع ...',
      'de':
          'Ukraine-Krieg: Russlands Außenminister Sergej Lawrow sucht Verbündete mit ...',
      'es':
          'Guerra de Ucrania: el ministro de Relaciones Exteriores de Rusia, Sergei Lavrov, busca aliados con ...',
      'fr':
          'Guerre d&#39;Ukraine : le ministre russe des Affaires étrangères Sergueï Lavrov cherche des alliés avec...',
    },
    'npx2pulz': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'jwu2y2v0': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'j9tv06os': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'gy78ls1t': {
      'en':
          'Ukraine war: Russian Foreign Minister Sergei Lavrov seeks allies with ...',
      'ar':
          'حرب أوكرانيا: وزير الخارجية الروسي سيرجي لافروف يبحث عن حلفاء مع ...',
      'de':
          'Ukraine-Krieg: Russlands Außenminister Sergej Lawrow sucht Verbündete mit ...',
      'es':
          'Guerra de Ucrania: el ministro de Relaciones Exteriores de Rusia, Sergei Lavrov, busca aliados con ...',
      'fr':
          'Guerre d&#39;Ukraine : le ministre russe des Affaires étrangères Sergueï Lavrov cherche des alliés avec...',
    },
    'g0zrodfg': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'niz0dbo5': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'fiue06q0': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'hh2o4s7x': {
      'en': 'Home',
      'ar': 'مسكن',
      'de': 'Heim',
      'es': 'Hogar',
      'fr': 'Maison',
    },
  },
  // Climate
  {
    'xniw1v1o': {
      'en': 'Climate',
      'ar': 'مناخ',
      'de': 'Klima',
      'es': 'Climatizado',
      'fr': 'Climat',
    },
    'ozsevi50': {
      'en': 'New News',
      'ar': 'اخبار جديدة',
      'de': 'Neue Nachrichten',
      'es': 'Nuevas noticias',
      'fr': 'Nouvelles informations',
    },
    'tqb0ruhk': {
      'en':
          'Ukraine war: Russian Foreign Minister Sergei Lavrov seeks allies with ...',
      'ar':
          'حرب أوكرانيا: وزير الخارجية الروسي سيرجي لافروف يبحث عن حلفاء مع ...',
      'de':
          'Ukraine-Krieg: Russlands Außenminister Sergej Lawrow sucht Verbündete mit ...',
      'es':
          'Guerra de Ucrania: el ministro de Relaciones Exteriores de Rusia, Sergei Lavrov, busca aliados con ...',
      'fr':
          'Guerre d&#39;Ukraine : le ministre russe des Affaires étrangères Sergueï Lavrov cherche des alliés avec...',
    },
    'k3d1qqyn': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'oe3cowoi': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'x4t9q3hw': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'bq1ypdly': {
      'en':
          'Ukraine war: Kyiv\'s forces moving towards occupied Kherson - Zelensky',
      'ar': 'حرب أوكرانيا: قوات كييف تتجه نحو خيرسون - زيلينسكي المحتلة',
      'de':
          'Ukraine-Krieg: Kiews Streitkräfte bewegen sich auf das besetzte Cherson zu - Selenskyj',
      'es':
          'Guerra de Ucrania: las fuerzas de Kyiv avanzan hacia el Kherson ocupado - Zelensky',
      'fr':
          'Guerre d&#39;Ukraine : les forces de Kyiv se dirigent vers Kherson occupée - Zelensky',
    },
    'dfujz639': {
      'en': '2 hour ago',
      'ar': 'منذ ساعتين',
      'de': 'Vor 2 Std',
      'es': 'hace 2 horas',
      'fr': 'il y a 2 heures',
    },
    '547j4c7l': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    '2tbq1wd7': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'wm8jtudi': {
      'en': 'Ex-army major rows to Isle of Wight in DIY boat for Ukraine',
      'ar': 'الصفوف الرئيسية للجيش السابق إلى جزيرة وايت في قارب DIY لأوكرانيا',
      'de':
          'Ex-Armee-Majors rudert mit DIY-Boot für die Ukraine zur Isle of Wight',
      'es':
          'Ex comandante del ejército rema hacia la Isla de Wight en barco de bricolaje para Ucrania',
      'fr':
          'Un ancien commandant de l&#39;armée se dirige vers l&#39;île de Wight dans un bateau de bricolage pour l&#39;Ukraine',
    },
    'yb07owsx': {
      'en': '4 hour ago',
      'ar': 'قبل 4 ساعات',
      'de': 'Vor 4 Std',
      'es': 'hace 4 horas',
      'fr': 'il y a 4 heures',
    },
    '75dtc1vm': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    '8h9czrw2': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    '2sd5kiog': {
      'en':
          'Ukraine war: Russian Foreign Minister Sergei Lavrov seeks allies with ...',
      'ar':
          'حرب أوكرانيا: وزير الخارجية الروسي سيرجي لافروف يبحث عن حلفاء مع ...',
      'de':
          'Ukraine-Krieg: Russlands Außenminister Sergej Lawrow sucht Verbündete mit ...',
      'es':
          'Guerra de Ucrania: el ministro de Relaciones Exteriores de Rusia, Sergei Lavrov, busca aliados con ...',
      'fr':
          'Guerre d&#39;Ukraine : le ministre russe des Affaires étrangères Sergueï Lavrov cherche des alliés avec...',
    },
    'o5yh2ajm': {
      'en': '6 hour ago',
      'ar': 'منذ 6 ساعات',
      'de': 'Vor 6 Std',
      'es': 'hace 6 horas',
      'fr': 'il y a 6 heures',
    },
    'qgxxcd5c': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    '9t8ez21i': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'gt6m06qj': {
      'en':
          'Ukraine war: Russian Foreign Minister Sergei Lavrov seeks allies with ...',
      'ar':
          'حرب أوكرانيا: وزير الخارجية الروسي سيرجي لافروف يبحث عن حلفاء مع ...',
      'de':
          'Ukraine-Krieg: Russlands Außenminister Sergej Lawrow sucht Verbündete mit ...',
      'es':
          'Guerra de Ucrania: el ministro de Relaciones Exteriores de Rusia, Sergei Lavrov, busca aliados con ...',
      'fr':
          'Guerre d&#39;Ukraine : le ministre russe des Affaires étrangères Sergueï Lavrov cherche des alliés avec...',
    },
    'jc2v6m8y': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'azv7llug': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'om9955ld': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'gda9uesa': {
      'en': 'Video News',
      'ar': 'أخبار الفيديو',
      'de': 'Video-Nachrichten',
      'es': 'Vídeo Noticias',
      'fr': 'Nouvelles vidéo',
    },
    'g05ds78k': {
      'en': 'Mike Pence takes thinly-veiled shot...',
      'ar': 'مايك بينس يأخذ لقطة محجبة رقيقة ...',
      'de': 'Mike Pence macht einen kaum verhüllten Schuss...',
      'es': 'Mike Pence toma una foto poco disimulada...',
      'fr': 'Mike Pence prend une photo à peine voilée...',
    },
    'a0049k69': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'eufe3ucv': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'ki52szdt': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'xpjrwyo2': {
      'en': 'Biden faces criticism for Mohammed...',
      'ar': 'بايدن يواجه انتقادات لمحمد ...',
      'de': 'Biden sieht sich wegen Mohammeds Kritik ausgesetzt',
      'es': 'Biden enfrenta críticas por Mohamed...',
      'fr': 'Biden fait face à des critiques pour Mohammed...',
    },
    '3ymicwf2': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'bzyers5j': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'uhz1nsg5': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'q9jbna83': {
      'en': 'Data shows big shift in Democratic.. ',
      'ar': 'تشير البيانات إلى تحول كبير في الديمقراطية ..',
      'de': 'Daten zeigen große Verschiebung in der Demokratischen..',
      'es': 'Los datos muestran un gran cambio en el...',
      'fr': 'Les données montrent un grand changement dans les démocraties ..',
    },
    '3lhhuzub': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'n7l8lpqe': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'ssgd3vr3': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    '18xzrzu2': {
      'en': 'Steve Bannon found guilty of contempt..',
      'ar': 'وجد ستيف بانون مذنبا بتهمة الازدراء ..',
      'de': 'Steve Bannon der Verachtung für schuldig befunden',
      'es': 'Steve Bannon declarado culpable de desacato..',
      'fr': 'Steve Bannon reconnu coupable d&#39;outrage...',
    },
    '5tt4rf4d': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'm5rhvgua': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    '3yd566vk': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    '42b82lwe': {
      'en': 'World News',
      'ar': 'اخبار العالم',
      'de': 'Weltnachrichten',
      'es': 'Noticias del mundo',
      'fr': 'Nouvelles du monde',
    },
    'ica2jthr': {
      'en':
          'Chess robot breaks seven-year-old boy\'s finger during Moscow Open',
      'ar':
          'روبوت الشطرنج يكسر إصبع صبي يبلغ من العمر سبع سنوات خلال بطولة موسكو المفتوحة',
      'de':
          'Schachroboter bricht siebenjährigem Jungen bei Open in Moskau den Finger',
      'es':
          'Robot de ajedrez rompe el dedo de un niño de siete años durante el Abierto de Moscú',
      'fr':
          'Un robot d&#39;échecs casse le doigt d&#39;un garçon de sept ans lors de l&#39;Open de Moscou',
    },
    'yhkatpzg': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    '0mfqequo': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    '71y0jvb9': {
      'en': 'Latest News',
      'ar': 'أحدث الأخبار',
      'de': 'Neuesten Nachrichten',
      'es': 'Últimas noticias',
      'fr': 'Dernières nouvelles',
    },
    'au64jw75': {
      'en': 'Italy migrants: Nearly 1,200 arrive by boat in 24 hours',
      'ar':
          'مهاجرون من إيطاليا: يصل ما يقرب من 1200 عن طريق القوارب في غضون 24 ساعة',
      'de':
          'Migranten aus Italien: Fast 1.200 kommen innerhalb von 24 Stunden mit dem Boot an',
      'es': 'Migrantes de Italia: casi 1.200 llegan en barco en 24 horas',
      'fr':
          'Migrants italiens : Près de 1 200 arrivent par bateau en 24 heures',
    },
    'sd58swo9': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    '9faa1i3q': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'qs8myxqu': {
      'en': 'Latest News',
      'ar': 'أحدث الأخبار',
      'de': 'Neuesten Nachrichten',
      'es': 'Últimas noticias',
      'fr': 'Dernières nouvelles',
    },
    'tdr5c6mz': {
      'en': 'Ex-army major rows to Isle of Wight in DIY boat for Ukraine',
      'ar': 'الصفوف الرئيسية للجيش السابق إلى جزيرة وايت في قارب DIY لأوكرانيا',
      'de':
          'Ex-Armee-Majors rudert mit DIY-Boot für die Ukraine zur Isle of Wight',
      'es':
          'Ex comandante del ejército rema hacia la Isla de Wight en barco de bricolaje para Ucrania',
      'fr':
          'Un ancien commandant de l&#39;armée se dirige vers l&#39;île de Wight dans un bateau de bricolage pour l&#39;Ukraine',
    },
    'wgm7n4zo': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'cz2e3bt7': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'tapxmvp4': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    '59u5299t': {
      'en':
          'Ukraine war: Russian Foreign Minister Sergei Lavrov seeks allies with ...',
      'ar':
          'حرب أوكرانيا: وزير الخارجية الروسي سيرجي لافروف يبحث عن حلفاء مع ...',
      'de':
          'Ukraine-Krieg: Russlands Außenminister Sergej Lawrow sucht Verbündete mit ...',
      'es':
          'Guerra de Ucrania: el ministro de Relaciones Exteriores de Rusia, Sergei Lavrov, busca aliados con ...',
      'fr':
          'Guerre d&#39;Ukraine : le ministre russe des Affaires étrangères Sergueï Lavrov cherche des alliés avec...',
    },
    '0chou166': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    '5npv6yn8': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'xfwyqy63': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    '7attzpfm': {
      'en':
          'Ukraine war: Russian Foreign Minister Sergei Lavrov seeks allies with ...',
      'ar':
          'حرب أوكرانيا: وزير الخارجية الروسي سيرجي لافروف يبحث عن حلفاء مع ...',
      'de':
          'Ukraine-Krieg: Russlands Außenminister Sergej Lawrow sucht Verbündete mit ...',
      'es':
          'Guerra de Ucrania: el ministro de Relaciones Exteriores de Rusia, Sergei Lavrov, busca aliados con ...',
      'fr':
          'Guerre d&#39;Ukraine : le ministre russe des Affaires étrangères Sergueï Lavrov cherche des alliés avec...',
    },
    '8cl374zb': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'wq9u20zv': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'ekncl0tb': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'opibm8z1': {
      'en': 'Home',
      'ar': 'مسكن',
      'de': 'Heim',
      'es': 'Hogar',
      'fr': 'Maison',
    },
  },
  // Business
  {
    '77vtswbd': {
      'en': 'Business',
      'ar': 'اعمال',
      'de': 'Geschäft',
      'es': 'Negocio',
      'fr': 'Entreprise',
    },
    'm0te3fa3': {
      'en': 'New News',
      'ar': 'اخبار جديدة',
      'de': 'Neue Nachrichten',
      'es': 'Nuevas noticias',
      'fr': 'Nouvelles informations',
    },
    'troipb7p': {
      'en':
          'Ukraine war: Russian Foreign Minister Sergei Lavrov seeks allies with ...',
      'ar':
          'حرب أوكرانيا: وزير الخارجية الروسي سيرجي لافروف يبحث عن حلفاء مع ...',
      'de':
          'Ukraine-Krieg: Russlands Außenminister Sergej Lawrow sucht Verbündete mit ...',
      'es':
          'Guerra de Ucrania: el ministro de Relaciones Exteriores de Rusia, Sergei Lavrov, busca aliados con ...',
      'fr':
          'Guerre d&#39;Ukraine : le ministre russe des Affaires étrangères Sergueï Lavrov cherche des alliés avec...',
    },
    '4d1ylkur': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'ucvxb7zj': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'zd7izqdf': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'hi48tk9j': {
      'en':
          'Ukraine war: Kyiv\'s forces moving towards occupied Kherson - Zelensky',
      'ar': 'حرب أوكرانيا: قوات كييف تتجه نحو خيرسون - زيلينسكي المحتلة',
      'de':
          'Ukraine-Krieg: Kiews Streitkräfte bewegen sich auf das besetzte Cherson zu - Selenskyj',
      'es':
          'Guerra de Ucrania: las fuerzas de Kyiv avanzan hacia el Kherson ocupado - Zelensky',
      'fr':
          'Guerre d&#39;Ukraine : les forces de Kyiv se dirigent vers Kherson occupée - Zelensky',
    },
    'zoud45js': {
      'en': '2 hour ago',
      'ar': 'منذ ساعتين',
      'de': 'Vor 2 Std',
      'es': 'hace 2 horas',
      'fr': 'il y a 2 heures',
    },
    'oywscsc5': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    '9mcl95fu': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'jpfe0p1a': {
      'en': 'Ex-army major rows to Isle of Wight in DIY boat for Ukraine',
      'ar': 'الصفوف الرئيسية للجيش السابق إلى جزيرة وايت في قارب DIY لأوكرانيا',
      'de':
          'Ex-Armee-Majors rudert mit DIY-Boot für die Ukraine zur Isle of Wight',
      'es':
          'Ex comandante del ejército rema hacia la Isla de Wight en barco de bricolaje para Ucrania',
      'fr':
          'Un ancien commandant de l&#39;armée se dirige vers l&#39;île de Wight dans un bateau de bricolage pour l&#39;Ukraine',
    },
    '27esmwu4': {
      'en': '4 hour ago',
      'ar': 'قبل 4 ساعات',
      'de': 'Vor 4 Std',
      'es': 'hace 4 horas',
      'fr': 'il y a 4 heures',
    },
    '751lg03c': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'ekkae808': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'uuh26ggl': {
      'en':
          'Ukraine war: Russian Foreign Minister Sergei Lavrov seeks allies with ...',
      'ar':
          'حرب أوكرانيا: وزير الخارجية الروسي سيرجي لافروف يبحث عن حلفاء مع ...',
      'de':
          'Ukraine-Krieg: Russlands Außenminister Sergej Lawrow sucht Verbündete mit ...',
      'es':
          'Guerra de Ucrania: el ministro de Relaciones Exteriores de Rusia, Sergei Lavrov, busca aliados con ...',
      'fr':
          'Guerre d&#39;Ukraine : le ministre russe des Affaires étrangères Sergueï Lavrov cherche des alliés avec...',
    },
    'pnn3h47d': {
      'en': '6 hour ago',
      'ar': 'منذ 6 ساعات',
      'de': 'Vor 6 Std',
      'es': 'hace 6 horas',
      'fr': 'il y a 6 heures',
    },
    'i2rr39d4': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    '3tsx1lr3': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'evq617vd': {
      'en':
          'Ukraine war: Russian Foreign Minister Sergei Lavrov seeks allies with ...',
      'ar':
          'حرب أوكرانيا: وزير الخارجية الروسي سيرجي لافروف يبحث عن حلفاء مع ...',
      'de':
          'Ukraine-Krieg: Russlands Außenminister Sergej Lawrow sucht Verbündete mit ...',
      'es':
          'Guerra de Ucrania: el ministro de Relaciones Exteriores de Rusia, Sergei Lavrov, busca aliados con ...',
      'fr':
          'Guerre d&#39;Ukraine : le ministre russe des Affaires étrangères Sergueï Lavrov cherche des alliés avec...',
    },
    'orrbgxw6': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'tcol936k': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'k7oh0v8y': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    '3ucuqkhp': {
      'en': 'Video News',
      'ar': 'أخبار الفيديو',
      'de': 'Video-Nachrichten',
      'es': 'Vídeo Noticias',
      'fr': 'Nouvelles vidéo',
    },
    '7mbrjr1i': {
      'en': 'Mike Pence takes thinly-veiled shot...',
      'ar': 'مايك بينس يأخذ لقطة محجبة رقيقة ...',
      'de': 'Mike Pence macht einen kaum verhüllten Schuss...',
      'es': 'Mike Pence toma una foto poco disimulada...',
      'fr': 'Mike Pence prend une photo à peine voilée...',
    },
    '5mu4qiew': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'pe85ar9c': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'a50ozyd7': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'amfpvcu4': {
      'en': 'Biden faces criticism for Mohammed...',
      'ar': 'بايدن يواجه انتقادات لمحمد ...',
      'de': 'Biden sieht sich wegen Mohammeds Kritik ausgesetzt',
      'es': 'Biden enfrenta críticas por Mohamed...',
      'fr': 'Biden fait face à des critiques pour Mohammed...',
    },
    'o9vg2lt8': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'l1jygugu': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    '2dbrcthk': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'suqmbna8': {
      'en': 'Data shows big shift in Democratic.. ',
      'ar': 'تشير البيانات إلى تحول كبير في الديمقراطية ..',
      'de': 'Daten zeigen große Verschiebung in der Demokratischen..',
      'es': 'Los datos muestran un gran cambio en el...',
      'fr': 'Les données montrent un grand changement dans les démocraties ..',
    },
    '7mb4u86r': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'i5xncn71': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'o0hbes9i': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    '1v65747w': {
      'en': 'Steve Bannon found guilty of contempt..',
      'ar': 'وجد ستيف بانون مذنبا بتهمة الازدراء ..',
      'de': 'Steve Bannon der Verachtung für schuldig befunden',
      'es': 'Steve Bannon declarado culpable de desacato..',
      'fr': 'Steve Bannon reconnu coupable d&#39;outrage...',
    },
    'xh0jpeph': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'tg0dy3wg': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'v3yx23mf': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'vwi3b3hg': {
      'en': 'World News',
      'ar': 'اخبار العالم',
      'de': 'Weltnachrichten',
      'es': 'Noticias del mundo',
      'fr': 'Nouvelles du monde',
    },
    '1pvm2smh': {
      'en':
          'Chess robot breaks seven-year-old boy\'s finger during Moscow Open',
      'ar':
          'روبوت الشطرنج يكسر إصبع صبي يبلغ من العمر سبع سنوات خلال بطولة موسكو المفتوحة',
      'de':
          'Schachroboter bricht siebenjährigem Jungen bei Open in Moskau den Finger',
      'es':
          'Robot de ajedrez rompe el dedo de un niño de siete años durante el Abierto de Moscú',
      'fr':
          'Un robot d&#39;échecs casse le doigt d&#39;un garçon de sept ans lors de l&#39;Open de Moscou',
    },
    'rc8oxfbg': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    '876l5hwx': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'glvbgvxp': {
      'en': 'Latest News',
      'ar': 'أحدث الأخبار',
      'de': 'Neuesten Nachrichten',
      'es': 'Últimas noticias',
      'fr': 'Dernières nouvelles',
    },
    'b8uv4c45': {
      'en': 'Italy migrants: Nearly 1,200 arrive by boat in 24 hours',
      'ar':
          'مهاجرون من إيطاليا: يصل ما يقرب من 1200 عن طريق القوارب في غضون 24 ساعة',
      'de':
          'Migranten aus Italien: Fast 1.200 kommen innerhalb von 24 Stunden mit dem Boot an',
      'es': 'Migrantes de Italia: casi 1.200 llegan en barco en 24 horas',
      'fr':
          'Migrants italiens : Près de 1 200 arrivent par bateau en 24 heures',
    },
    'g4tq3am7': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'iy9rfwvy': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'hbbg3m6i': {
      'en': 'Latest News',
      'ar': 'أحدث الأخبار',
      'de': 'Neuesten Nachrichten',
      'es': 'Últimas noticias',
      'fr': 'Dernières nouvelles',
    },
    'y02bjj1s': {
      'en': 'Ex-army major rows to Isle of Wight in DIY boat for Ukraine',
      'ar': 'الصفوف الرئيسية للجيش السابق إلى جزيرة وايت في قارب DIY لأوكرانيا',
      'de':
          'Ex-Armee-Majors rudert mit DIY-Boot für die Ukraine zur Isle of Wight',
      'es':
          'Ex comandante del ejército rema hacia la Isla de Wight en barco de bricolaje para Ucrania',
      'fr':
          'Un ancien commandant de l&#39;armée se dirige vers l&#39;île de Wight dans un bateau de bricolage pour l&#39;Ukraine',
    },
    'hpm964yb': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'gt6nn7ce': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'woaqfovy': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'ggzq0yhh': {
      'en':
          'Ukraine war: Russian Foreign Minister Sergei Lavrov seeks allies with ...',
      'ar':
          'حرب أوكرانيا: وزير الخارجية الروسي سيرجي لافروف يبحث عن حلفاء مع ...',
      'de':
          'Ukraine-Krieg: Russlands Außenminister Sergej Lawrow sucht Verbündete mit ...',
      'es':
          'Guerra de Ucrania: el ministro de Relaciones Exteriores de Rusia, Sergei Lavrov, busca aliados con ...',
      'fr':
          'Guerre d&#39;Ukraine : le ministre russe des Affaires étrangères Sergueï Lavrov cherche des alliés avec...',
    },
    '2yekqlxp': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'r6u6eno8': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'syg774lq': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'tinkq099': {
      'en':
          'Ukraine war: Russian Foreign Minister Sergei Lavrov seeks allies with ...',
      'ar':
          'حرب أوكرانيا: وزير الخارجية الروسي سيرجي لافروف يبحث عن حلفاء مع ...',
      'de':
          'Ukraine-Krieg: Russlands Außenminister Sergej Lawrow sucht Verbündete mit ...',
      'es':
          'Guerra de Ucrania: el ministro de Relaciones Exteriores de Rusia, Sergei Lavrov, busca aliados con ...',
      'fr':
          'Guerre d&#39;Ukraine : le ministre russe des Affaires étrangères Sergueï Lavrov cherche des alliés avec...',
    },
    'n3j851gj': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    '7x9hqxlh': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'pi8qmtn8': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'h5szl8yo': {
      'en': 'Home',
      'ar': 'مسكن',
      'de': 'Heim',
      'es': 'Hogar',
      'fr': 'Maison',
    },
  },
  // Tech
  {
    '9574ixav': {
      'en': 'Tech',
      'ar': 'تقنية',
      'de': 'Technik',
      'es': 'tecnología',
      'fr': 'Technologie',
    },
    '0n513zva': {
      'en': 'New News',
      'ar': 'اخبار جديدة',
      'de': 'Neue Nachrichten',
      'es': 'Nuevas noticias',
      'fr': 'Nouvelles informations',
    },
    'lp8sitph': {
      'en':
          'Ukraine war: Russian Foreign Minister Sergei Lavrov seeks allies with ...',
      'ar':
          'حرب أوكرانيا: وزير الخارجية الروسي سيرجي لافروف يبحث عن حلفاء مع ...',
      'de':
          'Ukraine-Krieg: Russlands Außenminister Sergej Lawrow sucht Verbündete mit ...',
      'es':
          'Guerra de Ucrania: el ministro de Relaciones Exteriores de Rusia, Sergei Lavrov, busca aliados con ...',
      'fr':
          'Guerre d&#39;Ukraine : le ministre russe des Affaires étrangères Sergueï Lavrov cherche des alliés avec...',
    },
    '1ax2xuht': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'drgvn43x': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'e0ottqta': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    '9cgt70q8': {
      'en':
          'Ukraine war: Kyiv\'s forces moving towards occupied Kherson - Zelensky',
      'ar': 'حرب أوكرانيا: قوات كييف تتجه نحو خيرسون - زيلينسكي المحتلة',
      'de':
          'Ukraine-Krieg: Kiews Streitkräfte bewegen sich auf das besetzte Cherson zu - Selenskyj',
      'es':
          'Guerra de Ucrania: las fuerzas de Kyiv avanzan hacia el Kherson ocupado - Zelensky',
      'fr':
          'Guerre d&#39;Ukraine : les forces de Kyiv se dirigent vers Kherson occupée - Zelensky',
    },
    'ixnqey6t': {
      'en': '2 hour ago',
      'ar': 'منذ ساعتين',
      'de': 'Vor 2 Std',
      'es': 'hace 2 horas',
      'fr': 'il y a 2 heures',
    },
    'ezbfbe6x': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    '1q8jfx8j': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'uhr1lo9n': {
      'en': 'Ex-army major rows to Isle of Wight in DIY boat for Ukraine',
      'ar': 'الصفوف الرئيسية للجيش السابق إلى جزيرة وايت في قارب DIY لأوكرانيا',
      'de':
          'Ex-Armee-Majors rudert mit DIY-Boot für die Ukraine zur Isle of Wight',
      'es':
          'Ex comandante del ejército rema hacia la Isla de Wight en barco de bricolaje para Ucrania',
      'fr':
          'Un ancien commandant de l&#39;armée se dirige vers l&#39;île de Wight dans un bateau de bricolage pour l&#39;Ukraine',
    },
    'f4awyb9z': {
      'en': '4 hour ago',
      'ar': 'قبل 4 ساعات',
      'de': 'Vor 4 Std',
      'es': 'hace 4 horas',
      'fr': 'il y a 4 heures',
    },
    'h60ghihw': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'qzto6rqu': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    '2m3w5p8r': {
      'en':
          'Ukraine war: Russian Foreign Minister Sergei Lavrov seeks allies with ...',
      'ar':
          'حرب أوكرانيا: وزير الخارجية الروسي سيرجي لافروف يبحث عن حلفاء مع ...',
      'de':
          'Ukraine-Krieg: Russlands Außenminister Sergej Lawrow sucht Verbündete mit ...',
      'es':
          'Guerra de Ucrania: el ministro de Relaciones Exteriores de Rusia, Sergei Lavrov, busca aliados con ...',
      'fr':
          'Guerre d&#39;Ukraine : le ministre russe des Affaires étrangères Sergueï Lavrov cherche des alliés avec...',
    },
    'rt4894k5': {
      'en': '6 hour ago',
      'ar': 'منذ 6 ساعات',
      'de': 'Vor 6 Std',
      'es': 'hace 6 horas',
      'fr': 'il y a 6 heures',
    },
    'jjwxm94m': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    '7x2m3gio': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'fp37hu3a': {
      'en':
          'Ukraine war: Russian Foreign Minister Sergei Lavrov seeks allies with ...',
      'ar':
          'حرب أوكرانيا: وزير الخارجية الروسي سيرجي لافروف يبحث عن حلفاء مع ...',
      'de':
          'Ukraine-Krieg: Russlands Außenminister Sergej Lawrow sucht Verbündete mit ...',
      'es':
          'Guerra de Ucrania: el ministro de Relaciones Exteriores de Rusia, Sergei Lavrov, busca aliados con ...',
      'fr':
          'Guerre d&#39;Ukraine : le ministre russe des Affaires étrangères Sergueï Lavrov cherche des alliés avec...',
    },
    'rvgdh9lc': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    '5skd904j': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'rp44pfke': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'kjrvpe6q': {
      'en': 'Video News',
      'ar': 'أخبار الفيديو',
      'de': 'Video-Nachrichten',
      'es': 'Vídeo Noticias',
      'fr': 'Nouvelles vidéo',
    },
    'b9cgl4k1': {
      'en': 'Mike Pence takes thinly-veiled shot...',
      'ar': 'مايك بينس يأخذ لقطة محجبة رقيقة ...',
      'de': 'Mike Pence macht einen kaum verhüllten Schuss...',
      'es': 'Mike Pence toma una foto poco disimulada...',
      'fr': 'Mike Pence prend une photo à peine voilée...',
    },
    'v1t9obro': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    '1disz37n': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'nm2uk7wf': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'icl61kz2': {
      'en': 'Biden faces criticism for Mohammed...',
      'ar': 'بايدن يواجه انتقادات لمحمد ...',
      'de': 'Biden sieht sich wegen Mohammeds Kritik ausgesetzt',
      'es': 'Biden enfrenta críticas por Mohamed...',
      'fr': 'Biden fait face à des critiques pour Mohammed...',
    },
    'cn74h6a4': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'awu7k4dk': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'fdso2v7y': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'dh3p99pz': {
      'en': 'Data shows big shift in Democratic.. ',
      'ar': 'تشير البيانات إلى تحول كبير في الديمقراطية ..',
      'de': 'Daten zeigen große Verschiebung in der Demokratischen..',
      'es': 'Los datos muestran un gran cambio en el...',
      'fr': 'Les données montrent un grand changement dans les démocraties ..',
    },
    '0lb1lmhj': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'wihmjjgp': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'n9bvvzwd': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'w6w0l6di': {
      'en': 'Steve Bannon found guilty of contempt..',
      'ar': 'وجد ستيف بانون مذنبا بتهمة الازدراء ..',
      'de': 'Steve Bannon der Verachtung für schuldig befunden',
      'es': 'Steve Bannon declarado culpable de desacato..',
      'fr': 'Steve Bannon reconnu coupable d&#39;outrage...',
    },
    'xisma133': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'pgqoczty': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    '083oqkao': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'icbjgu40': {
      'en': 'World News',
      'ar': 'اخبار العالم',
      'de': 'Weltnachrichten',
      'es': 'Noticias del mundo',
      'fr': 'Nouvelles du monde',
    },
    '1vech52q': {
      'en':
          'Chess robot breaks seven-year-old boy\'s finger during Moscow Open',
      'ar':
          'روبوت الشطرنج يكسر إصبع صبي يبلغ من العمر سبع سنوات خلال بطولة موسكو المفتوحة',
      'de':
          'Schachroboter bricht siebenjährigem Jungen bei Open in Moskau den Finger',
      'es':
          'Robot de ajedrez rompe el dedo de un niño de siete años durante el Abierto de Moscú',
      'fr':
          'Un robot d&#39;échecs casse le doigt d&#39;un garçon de sept ans lors de l&#39;Open de Moscou',
    },
    '2wibhx7u': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'hn60k00b': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    '4r29a003': {
      'en': 'Latest News',
      'ar': 'أحدث الأخبار',
      'de': 'Neuesten Nachrichten',
      'es': 'Últimas noticias',
      'fr': 'Dernières nouvelles',
    },
    'ees1q9ul': {
      'en': 'Italy migrants: Nearly 1,200 arrive by boat in 24 hours',
      'ar':
          'مهاجرون من إيطاليا: يصل ما يقرب من 1200 عن طريق القوارب في غضون 24 ساعة',
      'de':
          'Migranten aus Italien: Fast 1.200 kommen innerhalb von 24 Stunden mit dem Boot an',
      'es': 'Migrantes de Italia: casi 1.200 llegan en barco en 24 horas',
      'fr':
          'Migrants italiens : Près de 1 200 arrivent par bateau en 24 heures',
    },
    'e9b1a6ao': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    '79pc49zv': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'fvd5xua2': {
      'en': 'Latest News',
      'ar': 'أحدث الأخبار',
      'de': 'Neuesten Nachrichten',
      'es': 'Últimas noticias',
      'fr': 'Dernières nouvelles',
    },
    'e0l76kcf': {
      'en': 'Ex-army major rows to Isle of Wight in DIY boat for Ukraine',
      'ar': 'الصفوف الرئيسية للجيش السابق إلى جزيرة وايت في قارب DIY لأوكرانيا',
      'de':
          'Ex-Armee-Majors rudert mit DIY-Boot für die Ukraine zur Isle of Wight',
      'es':
          'Ex comandante del ejército rema hacia la Isla de Wight en barco de bricolaje para Ucrania',
      'fr':
          'Un ancien commandant de l&#39;armée se dirige vers l&#39;île de Wight dans un bateau de bricolage pour l&#39;Ukraine',
    },
    'h9eooph7': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'dbnnzk2f': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    '5ekovo9r': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'ni6xkuqb': {
      'en':
          'Ukraine war: Russian Foreign Minister Sergei Lavrov seeks allies with ...',
      'ar':
          'حرب أوكرانيا: وزير الخارجية الروسي سيرجي لافروف يبحث عن حلفاء مع ...',
      'de':
          'Ukraine-Krieg: Russlands Außenminister Sergej Lawrow sucht Verbündete mit ...',
      'es':
          'Guerra de Ucrania: el ministro de Relaciones Exteriores de Rusia, Sergei Lavrov, busca aliados con ...',
      'fr':
          'Guerre d&#39;Ukraine : le ministre russe des Affaires étrangères Sergueï Lavrov cherche des alliés avec...',
    },
    '16f6l1uz': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    '2eevmghf': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'zz2divec': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    '3x308v46': {
      'en':
          'Ukraine war: Russian Foreign Minister Sergei Lavrov seeks allies with ...',
      'ar':
          'حرب أوكرانيا: وزير الخارجية الروسي سيرجي لافروف يبحث عن حلفاء مع ...',
      'de':
          'Ukraine-Krieg: Russlands Außenminister Sergej Lawrow sucht Verbündete mit ...',
      'es':
          'Guerra de Ucrania: el ministro de Relaciones Exteriores de Rusia, Sergei Lavrov, busca aliados con ...',
      'fr':
          'Guerre d&#39;Ukraine : le ministre russe des Affaires étrangères Sergueï Lavrov cherche des alliés avec...',
    },
    'lazqzr8n': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'fyd0wd2k': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    '7xmnq3e3': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'r44mp8fd': {
      'en': 'Home',
      'ar': 'مسكن',
      'de': 'Heim',
      'es': 'Hogar',
      'fr': 'Maison',
    },
  },
  // Sports
  {
    'qrpoanu5': {
      'en': 'Sports',
      'ar': 'رياضات',
      'de': 'Sport',
      'es': 'Deportes',
      'fr': 'Des sports',
    },
    'yi50m9pp': {
      'en': 'New News',
      'ar': 'اخبار جديدة',
      'de': 'Neue Nachrichten',
      'es': 'Nuevas noticias',
      'fr': 'Nouvelles informations',
    },
    'f9810dqm': {
      'en':
          'Ukraine war: Russian Foreign Minister Sergei Lavrov seeks allies with ...',
      'ar':
          'حرب أوكرانيا: وزير الخارجية الروسي سيرجي لافروف يبحث عن حلفاء مع ...',
      'de':
          'Ukraine-Krieg: Russlands Außenminister Sergej Lawrow sucht Verbündete mit ...',
      'es':
          'Guerra de Ucrania: el ministro de Relaciones Exteriores de Rusia, Sergei Lavrov, busca aliados con ...',
      'fr':
          'Guerre d&#39;Ukraine : le ministre russe des Affaires étrangères Sergueï Lavrov cherche des alliés avec...',
    },
    'sarnjbqb': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    '63yzddj6': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    '8omwakz7': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'j6hrrmb9': {
      'en':
          'Ukraine war: Kyiv\'s forces moving towards occupied Kherson - Zelensky',
      'ar': 'حرب أوكرانيا: قوات كييف تتجه نحو خيرسون - زيلينسكي المحتلة',
      'de':
          'Ukraine-Krieg: Kiews Streitkräfte bewegen sich auf das besetzte Cherson zu - Selenskyj',
      'es':
          'Guerra de Ucrania: las fuerzas de Kyiv avanzan hacia el Kherson ocupado - Zelensky',
      'fr':
          'Guerre d&#39;Ukraine : les forces de Kyiv se dirigent vers Kherson occupée - Zelensky',
    },
    'fsmz0d1h': {
      'en': '2 hour ago',
      'ar': 'منذ ساعتين',
      'de': 'Vor 2 Std',
      'es': 'hace 2 horas',
      'fr': 'il y a 2 heures',
    },
    'claut7e7': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'jzdeyye4': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    '4omqx0kq': {
      'en': 'Ex-army major rows to Isle of Wight in DIY boat for Ukraine',
      'ar': 'الصفوف الرئيسية للجيش السابق إلى جزيرة وايت في قارب DIY لأوكرانيا',
      'de':
          'Ex-Armee-Majors rudert mit DIY-Boot für die Ukraine zur Isle of Wight',
      'es':
          'Ex comandante del ejército rema hacia la Isla de Wight en barco de bricolaje para Ucrania',
      'fr':
          'Un ancien commandant de l&#39;armée se dirige vers l&#39;île de Wight dans un bateau de bricolage pour l&#39;Ukraine',
    },
    'e25b7uzi': {
      'en': '4 hour ago',
      'ar': 'قبل 4 ساعات',
      'de': 'Vor 4 Std',
      'es': 'hace 4 horas',
      'fr': 'il y a 4 heures',
    },
    'hjchr8io': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'bvevbpo2': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'zqt43q7n': {
      'en':
          'Ukraine war: Russian Foreign Minister Sergei Lavrov seeks allies with ...',
      'ar':
          'حرب أوكرانيا: وزير الخارجية الروسي سيرجي لافروف يبحث عن حلفاء مع ...',
      'de':
          'Ukraine-Krieg: Russlands Außenminister Sergej Lawrow sucht Verbündete mit ...',
      'es':
          'Guerra de Ucrania: el ministro de Relaciones Exteriores de Rusia, Sergei Lavrov, busca aliados con ...',
      'fr':
          'Guerre d&#39;Ukraine : le ministre russe des Affaires étrangères Sergueï Lavrov cherche des alliés avec...',
    },
    '57fusz5r': {
      'en': '6 hour ago',
      'ar': 'منذ 6 ساعات',
      'de': 'Vor 6 Std',
      'es': 'hace 6 horas',
      'fr': 'il y a 6 heures',
    },
    '5qdljiva': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'm984qu9v': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'vjtlc079': {
      'en':
          'Ukraine war: Russian Foreign Minister Sergei Lavrov seeks allies with ...',
      'ar':
          'حرب أوكرانيا: وزير الخارجية الروسي سيرجي لافروف يبحث عن حلفاء مع ...',
      'de':
          'Ukraine-Krieg: Russlands Außenminister Sergej Lawrow sucht Verbündete mit ...',
      'es':
          'Guerra de Ucrania: el ministro de Relaciones Exteriores de Rusia, Sergei Lavrov, busca aliados con ...',
      'fr':
          'Guerre d&#39;Ukraine : le ministre russe des Affaires étrangères Sergueï Lavrov cherche des alliés avec...',
    },
    'gvjy24gg': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'ar5rkpud': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'yktdf40w': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'l043m8s3': {
      'en': 'Video News',
      'ar': 'أخبار الفيديو',
      'de': 'Video-Nachrichten',
      'es': 'Vídeo Noticias',
      'fr': 'Nouvelles vidéo',
    },
    'cf41pwap': {
      'en': 'Mike Pence takes thinly-veiled shot...',
      'ar': 'مايك بينس يأخذ لقطة محجبة رقيقة ...',
      'de': 'Mike Pence macht einen kaum verhüllten Schuss...',
      'es': 'Mike Pence toma una foto poco disimulada...',
      'fr': 'Mike Pence prend une photo à peine voilée...',
    },
    'avi4cy3d': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    '1o8e4ld1': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    '63g92qtr': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    '84383opx': {
      'en': 'Biden faces criticism for Mohammed...',
      'ar': 'بايدن يواجه انتقادات لمحمد ...',
      'de': 'Biden sieht sich wegen Mohammeds Kritik ausgesetzt',
      'es': 'Biden enfrenta críticas por Mohamed...',
      'fr': 'Biden fait face à des critiques pour Mohammed...',
    },
    '32q1kokr': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'nauhpv5f': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'tno95m2g': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'r524odyj': {
      'en': 'Data shows big shift in Democratic.. ',
      'ar': 'تشير البيانات إلى تحول كبير في الديمقراطية ..',
      'de': 'Daten zeigen große Verschiebung in der Demokratischen..',
      'es': 'Los datos muestran un gran cambio en el...',
      'fr': 'Les données montrent un grand changement dans les démocraties ..',
    },
    'eco67u27': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'uunfgv5p': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'f9uyq8n8': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'cquli0gs': {
      'en': 'Steve Bannon found guilty of contempt..',
      'ar': 'وجد ستيف بانون مذنبا بتهمة الازدراء ..',
      'de': 'Steve Bannon der Verachtung für schuldig befunden',
      'es': 'Steve Bannon declarado culpable de desacato..',
      'fr': 'Steve Bannon reconnu coupable d&#39;outrage...',
    },
    '53mo0wgu': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'qudqs6mv': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'xf1hhuol': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'qjbqmvjp': {
      'en': 'World News',
      'ar': 'اخبار العالم',
      'de': 'Weltnachrichten',
      'es': 'Noticias del mundo',
      'fr': 'Nouvelles du monde',
    },
    'bggc3qr0': {
      'en':
          'Chess robot breaks seven-year-old boy\'s finger during Moscow Open',
      'ar':
          'روبوت الشطرنج يكسر إصبع صبي يبلغ من العمر سبع سنوات خلال بطولة موسكو المفتوحة',
      'de':
          'Schachroboter bricht siebenjährigem Jungen bei Open in Moskau den Finger',
      'es':
          'Robot de ajedrez rompe el dedo de un niño de siete años durante el Abierto de Moscú',
      'fr':
          'Un robot d&#39;échecs casse le doigt d&#39;un garçon de sept ans lors de l&#39;Open de Moscou',
    },
    '1d3kp9r8': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'yfq48ni2': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'x2riul1m': {
      'en': 'Latest News',
      'ar': 'أحدث الأخبار',
      'de': 'Neuesten Nachrichten',
      'es': 'Últimas noticias',
      'fr': 'Dernières nouvelles',
    },
    'w8hwijy1': {
      'en': 'Italy migrants: Nearly 1,200 arrive by boat in 24 hours',
      'ar':
          'مهاجرون من إيطاليا: يصل ما يقرب من 1200 عن طريق القوارب في غضون 24 ساعة',
      'de':
          'Migranten aus Italien: Fast 1.200 kommen innerhalb von 24 Stunden mit dem Boot an',
      'es': 'Migrantes de Italia: casi 1.200 llegan en barco en 24 horas',
      'fr':
          'Migrants italiens : Près de 1 200 arrivent par bateau en 24 heures',
    },
    'kddc9lm3': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'wd17o0pj': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    '8gk6jzyy': {
      'en': 'Latest News',
      'ar': 'أحدث الأخبار',
      'de': 'Neuesten Nachrichten',
      'es': 'Últimas noticias',
      'fr': 'Dernières nouvelles',
    },
    'p0tftm5o': {
      'en': 'Ex-army major rows to Isle of Wight in DIY boat for Ukraine',
      'ar': 'الصفوف الرئيسية للجيش السابق إلى جزيرة وايت في قارب DIY لأوكرانيا',
      'de':
          'Ex-Armee-Majors rudert mit DIY-Boot für die Ukraine zur Isle of Wight',
      'es':
          'Ex comandante del ejército rema hacia la Isla de Wight en barco de bricolaje para Ucrania',
      'fr':
          'Un ancien commandant de l&#39;armée se dirige vers l&#39;île de Wight dans un bateau de bricolage pour l&#39;Ukraine',
    },
    'w6zinrs2': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'wxiwon7h': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'worr314e': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    'q7o8sbi6': {
      'en':
          'Ukraine war: Russian Foreign Minister Sergei Lavrov seeks allies with ...',
      'ar':
          'حرب أوكرانيا: وزير الخارجية الروسي سيرجي لافروف يبحث عن حلفاء مع ...',
      'de':
          'Ukraine-Krieg: Russlands Außenminister Sergej Lawrow sucht Verbündete mit ...',
      'es':
          'Guerra de Ucrania: el ministro de Relaciones Exteriores de Rusia, Sergei Lavrov, busca aliados con ...',
      'fr':
          'Guerre d&#39;Ukraine : le ministre russe des Affaires étrangères Sergueï Lavrov cherche des alliés avec...',
    },
    'sxmjvkrg': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'yu6il4vz': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    '2sbzgqee': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    '53469ugz': {
      'en':
          'Ukraine war: Russian Foreign Minister Sergei Lavrov seeks allies with ...',
      'ar':
          'حرب أوكرانيا: وزير الخارجية الروسي سيرجي لافروف يبحث عن حلفاء مع ...',
      'de':
          'Ukraine-Krieg: Russlands Außenminister Sergej Lawrow sucht Verbündete mit ...',
      'es':
          'Guerra de Ucrania: el ministro de Relaciones Exteriores de Rusia, Sergei Lavrov, busca aliados con ...',
      'fr':
          'Guerre d&#39;Ukraine : le ministre russe des Affaires étrangères Sergueï Lavrov cherche des alliés avec...',
    },
    '9m8ei4z6': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'rvf3h1vb': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'qwyweh4s': {
      'en': 'Middle East',
      'ar': 'الشرق الأوسط',
      'de': 'Naher Osten',
      'es': 'Oriente Medio',
      'fr': 'Moyen-Orient',
    },
    '4v0yeo88': {
      'en': 'Home',
      'ar': 'مسكن',
      'de': 'Heim',
      'es': 'Hogar',
      'fr': 'Maison',
    },
  },
  // Settings
  {
    '0llwkf4g': {
      'en': 'Aya Ali',
      'ar': 'آية علي',
      'de': 'Aya Ali',
      'es': 'aya ali',
      'fr': 'Aya Ali',
    },
    't1c1dbkj': {
      'en': 'Follow',
      'ar': 'يتبع',
      'de': 'Folgen',
      'es': 'Seguir',
      'fr': 'Suivre',
    },
    'uv0t7h66': {
      'en': 'Add Article',
      'ar': 'أضف مقال',
      'de': 'Artikel hinzufügen',
      'es': 'Añadir artículo',
      'fr': 'Ajouter un article',
    },
    'us61k96z': {
      'en': 'Edit Profile',
      'ar': 'تعديل الملف الشخصي',
      'de': 'Profil bearbeiten',
      'es': 'Editar perfil',
      'fr': 'Editer le profil',
    },
    'zsjtanql': {
      'en': 'Text size',
      'ar': 'حجم الخط',
      'de': 'Textgröße',
      'es': 'Tamano del texto',
      'fr': 'Taille du texte',
    },
    '6ra2adgd': {
      'en': 'Notifications',
      'ar': 'الإشعارات',
      'de': 'Benachrichtigungen',
      'es': 'Notificaciones',
      'fr': 'Avis',
    },
    '06hjzf42': {
      'en': 'Terms of use',
      'ar': 'تعليمات الاستخدام',
      'de': 'Nutzungsbedingungen',
      'es': 'Términos de Uso',
      'fr': 'Conditions d&#39;utilisation',
    },
    'iy3ct8wv': {
      'en': 'Privacy Policy',
      'ar': 'سياسة الخصوصية',
      'de': 'Datenschutz-Bestimmungen',
      'es': 'Política de privacidad',
      'fr': 'Politique de confidentialité',
    },
    'gn3o9b3e': {
      'en': 'Copyright Pro M Tarek',
      'ar': 'حقوق النشر المبرمج محمد طارق',
      'de': 'Copyright Pro M Tarek',
      'es': 'Copyright Pro M Tarek',
      'fr': 'Copyright Pro M Tarek',
    },
    'xh4wbi5q': {
      'en': 'Settings',
      'ar': 'إعدادات',
      'de': 'Einstellungen',
      'es': 'Ajustes',
      'fr': 'Réglages',
    },
    'mrxdwr69': {
      'en': 'Home',
      'ar': 'مسكن',
      'de': 'Heim',
      'es': 'Hogar',
      'fr': 'Maison',
    },
  },
  // Search
  {
    'iof745db': {
      'en': 'Politics',
      'ar': 'سياسة',
      'de': 'Politik',
      'es': 'Política',
      'fr': 'Politique',
    },
    'svnm1l9d': {
      'en': 'World',
      'ar': 'العالمية',
      'de': 'Welt',
      'es': 'Mundo',
      'fr': 'Monde',
    },
    'bqp0mnh0': {
      'en': 'Health',
      'ar': 'صحة',
      'de': 'Die Gesundheit',
      'es': 'Salud',
      'fr': 'Santé',
    },
    'djf9hfpe': {
      'en': 'Climate',
      'ar': 'مناخ',
      'de': 'Klima',
      'es': 'Climatizado',
      'fr': 'Climat',
    },
    'tr1vaazp': {
      'en': 'Business',
      'ar': 'اعمال',
      'de': 'Geschäft',
      'es': 'Negocio',
      'fr': 'Entreprise',
    },
    '2lal75m4': {
      'en': 'Tech',
      'ar': 'تقنية',
      'de': 'Technik',
      'es': 'tecnología',
      'fr': 'Technologie',
    },
    'o2apwvpy': {
      'en': 'Sports',
      'ar': 'رياضات',
      'de': 'Sport',
      'es': 'Deportes',
      'fr': 'Des sports',
    },
    '0n45bl7s': {
      'en': 'Categories...',
      'ar': 'فئات...',
      'de': 'Kategorien...',
      'es': 'Categorías...',
      'fr': 'Catégories...',
    },
    'a811rjm4': {
      'en': 'Search by word',
      'ar': 'البحث بالكلمة',
      'de': 'Wortsuche',
      'es': 'Buscar por palabra',
      'fr': 'Rechercher par mot',
    },
    'gb8lywzn': {
      'en': 'Search',
      'ar': 'يبحث',
      'de': 'Suche',
      'es': 'Búsqueda',
      'fr': 'Chercher',
    },
    'w0ypuued': {
      'en': 'Search',
      'ar': 'يبحث',
      'de': 'Suche',
      'es': 'Búsqueda',
      'fr': 'Chercher',
    },
    'fr1x7oa3': {
      'en': 'Home',
      'ar': 'مسكن',
      'de': 'Heim',
      'es': 'Hogar',
      'fr': 'Maison',
    },
  },
  // AddArticle
  {
    '91t1nyjf': {
      'en': 'Politics',
      'ar': 'سياسة',
      'de': 'Politik',
      'es': 'Política',
      'fr': 'Politique',
    },
    'ktl9ke9x': {
      'en': 'World',
      'ar': 'العالمية',
      'de': 'Welt',
      'es': 'Mundo',
      'fr': 'Monde',
    },
    'v64nr8fx': {
      'en': 'Health',
      'ar': 'صحة',
      'de': 'Die Gesundheit',
      'es': 'Salud',
      'fr': 'Santé',
    },
    'kxx976ai': {
      'en': 'Climate',
      'ar': 'مناخ',
      'de': 'Klima',
      'es': 'Climatizado',
      'fr': 'Climat',
    },
    'i7be4ocx': {
      'en': 'Business',
      'ar': 'اعمال',
      'de': 'Geschäft',
      'es': 'Negocio',
      'fr': 'Entreprise',
    },
    '1l17i5ss': {
      'en': 'Tech',
      'ar': 'تقنية',
      'de': 'Technik',
      'es': 'tecnología',
      'fr': 'Technologie',
    },
    'ykvzczx9': {
      'en': 'Sports',
      'ar': 'رياضات',
      'de': 'Sport',
      'es': 'Deportes',
      'fr': 'Des sports',
    },
    '0pcr279y': {
      'en': 'Categories...',
      'ar': 'فئات...',
      'de': 'Kategorien...',
      'es': 'Categorías...',
      'fr': 'Catégories...',
    },
    '5s97pgbw': {
      'en': 'Article',
      'ar': 'مقالة - سلعة',
      'de': 'Artikel',
      'es': 'Artículo',
      'fr': 'Article',
    },
    'm022zobl': {
      'en': 'Video',
      'ar': 'فيديو',
      'de': 'Video',
      'es': 'Video',
      'fr': 'Vidéo',
    },
    'b1ljin5o': {
      'en': 'Type',
      'ar': 'يكتب',
      'de': 'Typ',
      'es': 'Escribe',
      'fr': 'Taper',
    },
    '03x25ual': {
      'en': 'Article title',
      'ar': 'عنوان المقال',
      'de': 'Artikelüberschrift',
      'es': 'Título del artículo',
      'fr': 'Le titre de l&#39;article',
    },
    '3j35q0s7': {
      'en': 'Article content',
      'ar': 'محتوى المقال',
      'de': 'Inhalt des Artikels',
      'es': 'Contenido del artículo',
      'fr': 'Contenu de l&#39;article',
    },
    '6chg9qoo': {
      'en': 'Send article',
      'ar': 'إرسال المقال',
      'de': 'Artikel senden',
      'es': 'Enviar artículo',
      'fr': 'Envoyer l&#39;article',
    },
    '9a1zkgrt': {
      'en': 'Add  New Article',
      'ar': 'أضف مادة جديدة',
      'de': 'Neuen Artikel hinzufügen',
      'es': 'Agregar nuevo artículo',
      'fr': 'Ajouter un nouvel article',
    },
    'xttv6zll': {
      'en': 'Home',
      'ar': 'مسكن',
      'de': 'Heim',
      'es': 'Hogar',
      'fr': 'Maison',
    },
  },
  // EditProfile
  {
    'qcxcf56k': {
      'en': 'Change Photo',
      'ar': 'غير الصوره',
      'de': 'Foto ändern',
      'es': 'Cambiar foto',
      'fr': 'Changer la photo',
    },
    'la25p3nv': {
      'en': 'Your Name',
      'ar': 'اسمك',
      'de': 'Ihren Namen',
      'es': 'Su nombre',
      'fr': 'votre nom',
    },
    'd2m11dcc': {
      'en': 'Your bio',
      'ar': 'سيرتك الذاتية',
      'de': 'Ihre Biografie',
      'es': 'tu biografía',
      'fr': 'Votre biographie',
    },
    '42s6tzev': {
      'en': 'Save Changes',
      'ar': 'حفظ التغييرات',
      'de': 'Änderungen speichern',
      'es': 'Guardar cambios',
      'fr': 'Sauvegarder les modifications',
    },
    'j3bamr55': {
      'en': 'Edit Profile',
      'ar': 'تعديل الملف الشخصي',
      'de': 'Profil bearbeiten',
      'es': 'Editar perfil',
      'fr': 'Editer le profil',
    },
  },
  // YouFollow
  {
    '4dtd3087': {
      'en': 'All',
      'ar': 'الجميع',
      'de': 'Alle',
      'es': 'Todos',
      'fr': 'Tout',
    },
    'swv9vmxg': {
      'en': 'Name',
      'ar': 'اسم ',
      'de': 'Name des Inspektors',
      'es': 'Nombre del inspector',
      'fr': 'Nom de l&#39;inspecteur',
    },
    'irkn6629': {
      'en': 'Title',
      'ar': 'عنوان',
      'de': 'Titel',
      'es': 'Título',
      'fr': 'Titre',
    },
    'sp6py4mb': {
      'en': 'Name',
      'ar': 'الاسم',
      'de': 'Name des Inspektors',
      'es': 'Nombre ',
      'fr': 'Nom ',
    },
    'xmuaqhzs': {
      'en': 'Title',
      'ar': 'عنوان',
      'de': 'Titel',
      'es': 'Título',
      'fr': 'Titre',
    },
    'o7g6z06f': {
      'en': ' Name',
      'ar': 'اسم ',
      'de': 'Name des Inspektors',
      'es': 'Nombre del inspector',
      'fr': 'Nom de l&#39;inspecteur',
    },
    'uwa5hr8q': {
      'en': 'Title',
      'ar': 'عنوان',
      'de': 'Titel',
      'es': 'Título',
      'fr': 'Titre',
    },
    'hjiwowqt': {
      'en': 'Following',
      'ar': 'التالية',
      'de': 'Folgend',
      'es': 'Siguiendo',
      'fr': 'Suivant',
    },
    '76fwf7e5': {
      'en': ' Name',
      'ar': 'اسم ',
      'de': 'Name des Inspektors',
      'es': 'Nombre del inspector',
      'fr': 'Nom de l&#39;inspecteur',
    },
    '45ifr9da': {
      'en': 'Title',
      'ar': 'عنوان',
      'de': 'Titel',
      'es': 'Título',
      'fr': 'Titre',
    },
    '2idnwgtt': {
      'en': 'Follow up',
      'ar': 'متابعة',
      'de': 'Nachverfolgen',
      'es': 'Hacer un seguimiento',
      'fr': 'Suivre',
    },
    'mlt1b7li': {
      'en': ' Name',
      'ar': 'اسم ',
      'de': 'Name des Inspektors',
      'es': 'Nombre del inspector',
      'fr': 'Nom de l&#39;inspecteur',
    },
    'cyropg3p': {
      'en': 'Title',
      'ar': 'عنوان',
      'de': 'Titel',
      'es': 'Título',
      'fr': 'Titre',
    },
    '27dxtix0': {
      'en': 'search',
      'ar': 'بحث',
      'de': 'Suche',
      'es': 'búsqueda',
      'fr': 'chercher',
    },
    'q8ygoe2p': {
      'en': 'Follow',
      'ar': 'يتبع',
      'de': 'Folgen',
      'es': 'Seguir',
      'fr': 'Suivre',
    },
    'xdfrqb3s': {
      'en': '•',
      'ar': '•',
      'de': '•',
      'es': '•',
      'fr': '•',
    },
  },
  // Profile
  {
    '0c04sp2n': {
      'en': 'Abernathy Reynolds',
      'ar': 'أبيرناثي رينولدز',
      'de': 'Abernathy Reynolds',
      'es': 'abernathy reynolds',
      'fr': 'Abernathy Reynolds',
    },
    'v2up8fu8': {
      'en': 'Follow',
      'ar': 'تابع',
      'de': 'Folgen',
      'es': 'Seguir',
      'fr': 'Suivre',
    },
    '8anaba34': {
      'en': 'Cairo, Egypt',
      'ar': 'القاهرة، مصر',
      'de': 'Kairo, Ägypten',
      'es': 'El Cairo, Egipto',
      'fr': 'Le Caire, Egypte',
    },
    'c18wn3hc': {
      'en': 'Hastings & 25k followers',
      'ar': 'هاستنجز و 25 ألف متابع',
      'de': 'Hastings &amp; 25.000 Follower',
      'es': 'Hastings y 25k seguidores',
      'fr': 'Hastings et 25 000 abonnés',
    },
    'wnp6d8vu': {
      'en': 'Articles',
      'ar': 'مقالات',
      'de': 'Artikel',
      'es': 'Artículos',
      'fr': 'Des articles',
    },
    '5xsmtyjd': {
      'en': 'April 25, 9:00am',
      'ar': '25 أبريل ، 9:00 صباحًا',
      'de': '25. April, 9:00 Uhr',
      'es': '25 de abril, 9:00 a. m.',
      'fr': '25 avril, 9h00',
    },
    'lq0stmr6': {
      'en': 'How to shoot Landscapes',
      'ar': 'كيفية تصوير المناظر الطبيعية',
      'de': 'Wie man Landschaften fotografiert',
      'es': 'Cómo fotografiar paisajes',
      'fr': 'Comment photographier des paysages',
    },
    'rncmacm9': {
      'en': 'With Kaylene Huchtins',
      'ar': 'مع Kaylene Huchtins',
      'de': 'Mit Kaylene Huchtins',
      'es': 'Con Kaylene Huchtins',
      'fr': 'Avec Kaylene Huchtins',
    },
    'k21xme35': {
      'en': 'April 29, 9:00am',
      'ar': '29 أبريل ، 9:00 صباحًا',
      'de': '29. April, 9:00 Uhr',
      'es': '29 de abril, 9:00 a. m.',
      'fr': '29 avril, 9h00',
    },
    'knffxw73': {
      'en': 'Adventure Photography',
      'ar': 'تصوير المغامرات',
      'de': 'Abenteuerfotografie',
      'es': 'Fotografía de aventuras',
      'fr': 'Photographie d&#39;aventure',
    },
    'kakj8zqb': {
      'en': 'With Kaylene Huchtins',
      'ar': 'مع Kaylene Huchtins',
      'de': 'Mit Kaylene Huchtins',
      'es': 'Con Kaylene Huchtins',
      'fr': 'Avec Kaylene Huchtins',
    },
    'jo6hxdlv': {
      'en': 'April 29, 9:00am',
      'ar': '29 أبريل ، 9:00 صباحًا',
      'de': '29. April, 9:00 Uhr',
      'es': '29 de abril, 9:00 a. m.',
      'fr': '29 avril, 9h00',
    },
    'zdgrm8y8': {
      'en': 'How to photograph people',
      'ar': 'كيفية تصوير الناس',
      'de': 'Wie man Menschen fotografiert',
      'es': 'Cómo fotografiar personas',
      'fr': 'Comment photographier les gens',
    },
    '08z8xhpk': {
      'en': 'With Kaylene Huchtins',
      'ar': 'مع Kaylene Huchtins',
      'de': 'Mit Kaylene Huchtins',
      'es': 'Con Kaylene Huchtins',
      'fr': 'Avec Kaylene Huchtins',
    },
    'w24bx9rr': {
      'en': 'April 29, 9:00am',
      'ar': '29 أبريل ، 9:00 صباحًا',
      'de': '29. April, 9:00 Uhr',
      'es': '29 de abril, 9:00 a. m.',
      'fr': '29 avril, 9h00',
    },
    '4xicqyvu': {
      'en': 'Portraits 101',
      'ar': 'صور 101',
      'de': 'Porträts 101',
      'es': 'Retratos 101',
      'fr': 'Portraits 101',
    },
    'rw7wu3n5': {
      'en': 'With Kaylene Huchtins',
      'ar': 'مع Kaylene Huchtins',
      'de': 'Mit Kaylene Huchtins',
      'es': 'Con Kaylene Huchtins',
      'fr': 'Avec Kaylene Huchtins',
    },
    'co9llyzp': {
      'en': 'April 29, 9:00am',
      'ar': '29 أبريل ، 9:00 صباحًا',
      'de': '29. April, 9:00 Uhr',
      'es': '29 de abril, 9:00 a. m.',
      'fr': '29 avril, 9h00',
    },
    '1svvyoo2': {
      'en': 'Commercial Photography',
      'ar': 'التصوير التجاري',
      'de': 'Kommerzielle Fotografie',
      'es': 'Fotografía comercial',
      'fr': 'Photographie commerciale',
    },
    '7rnj45lz': {
      'en': 'With Kaylene Huchtins',
      'ar': 'مع Kaylene Huchtins',
      'de': 'Mit Kaylene Huchtins',
      'es': 'Con Kaylene Huchtins',
      'fr': 'Avec Kaylene Huchtins',
    },
    'p2iadlpu': {
      'en': 'Video',
      'ar': 'فيديو',
      'de': 'Video',
      'es': 'Video',
      'fr': 'Vidéo',
    },
    'ximkqrnx': {
      'en': '4 hour session',
      'ar': 'جلسة 4 ساعات',
      'de': '4 Stunden Sitzung',
      'es': 'sesión de 4 horas',
      'fr': 'séance de 4 heures',
    },
    '7dt91p2h': {
      'en': 'Scene Setup 101',
      'ar': 'إعداد المشهد 101',
      'de': 'Szeneneinstellung 101',
      'es': 'Configuración de escena 101',
      'fr': 'Configuration de scène 101',
    },
    'drfrugxg': {
      'en': '2 Week Intensive',
      'ar': '2 أسبوع مكثف',
      'de': '2 Wochen Intensiv',
      'es': 'Intensivo de 2 semanas',
      'fr': 'Intensif de 2 semaines',
    },
    'uj57ysqz': {
      'en': 'Adventure Photography',
      'ar': 'تصوير المغامرات',
      'de': 'Abenteuerfotografie',
      'es': 'Fotografía de aventuras',
      'fr': 'Photographie d&#39;aventure',
    },
    'w3sp4nvo': {
      'en': 'Portfolio',
      'ar': 'مَلَفّ',
      'de': 'Portfolio',
      'es': 'portafolio',
      'fr': 'Portefeuille',
    },
    'j66wn1q3': {
      'en': 'Home',
      'ar': 'مسكن',
      'de': 'Heim',
      'es': 'Hogar',
      'fr': 'Maison',
    },
  },
  // Article1
  {
    'cpwegx75': {
      'en': 'How Liverpool players reacted to\nMohamed Salah\'s new contract',
      'ar': 'كيف كان رد فعل لاعبي ليفربول على عقد محمد صلاح الجديد؟',
      'de':
          'So reagierten Liverpool-Spieler auf den neuen Vertrag von Mohamed Salah',
      'es':
          'Cómo reaccionaron los jugadores del Liverpool al nuevo contrato de Mohamed Salah',
      'fr':
          'Comment les joueurs de Liverpool ont réagi au nouveau contrat de Mohamed Salah',
    },
    'ahq95pqt': {
      'en': 'Sports, Football, Premier League',
      'ar': 'الرياضة وكرة القدم والدوري الممتاز',
      'de': 'Sport, Fußball, Premier League',
      'es': 'Deportes, Fútbol, Premier League',
      'fr': 'Sport, Football, Premier League',
    },
    '9zxdpnov': {
      'en': '2154 Happy',
      'ar': '2154 سعيد',
      'de': '2154 Glücklich',
      'es': '2154 feliz',
      'fr': '2154 Heureux',
    },
    'xa54nlte': {
      'en': 'Article',
      'ar': 'المقالة ',
      'de': 'Artikel',
      'es': 'Artículo',
      'fr': 'Article',
    },
    '4a5ji4im': {
      'en':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.',
      'ar':
          'Lorem ipsum dolor sit amet، consectetur adipiscing elit، sed do eiusmod tempor incidunt ut labore et dolore magna aliqua. كل ما في الأمر هو الحد الأدنى من التمرين ، ممارسة العمل على nostrud. Lorem ipsum dolor sit amet، consectetur adipiscing elit، sed do eiusmod tempor incidunt ut labore et dolore magna aliqua. من الممكن أن يكون الحد الأدنى من التمرين ، ممارسة التمارين الرياضية.',
      'de':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.',
      'es':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud ejercicio ullamco laboris nisi.',
      'fr':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.',
    },
    'pxgva7iv': {
      'en': 'Sports News',
      'ar': 'الأخبار الرياضية',
      'de': 'Sport Nachrichten',
      'es': 'Noticias deportivas',
      'fr': 'Nouvelles sportives',
    },
    '102tgldh': {
      'en': 'Mohamed Salah is the best player in the world',
      'ar': 'محمد صلاح أفضل لاعب في العالم',
      'de': 'Mohamed Salah ist der beste Spieler der Welt',
      'es': 'Mohamed Salah es el mejor jugador del mundo',
      'fr': 'Mohamed Salah est le meilleur joueur du monde',
    },
    'qunkrup9': {
      'en': '3 hour ago',
      'ar': 'منذ 3 ساعات',
      'de': 'Vor 3 Std',
      'es': 'hace 3 horas',
      'fr': 'il y a 3 heures',
    },
    '7qsynkjj': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'fvkkpa18': {
      'en': 'Sports',
      'ar': 'رياضات',
      'de': 'Sport',
      'es': 'Deportes',
      'fr': 'Des sports',
    },
    'q2pyihci': {
      'en':
          'Manchester United: Five takeaways from pre-season tour of Thailand ...',
      'ar': 'مانشستر يونايتد: خمس نصائح من جولة ما قبل الموسم في تايلاند ...',
      'de':
          'Manchester United: Fünf Imbissbuden von der Vorsaison-Tour durch Thailand ...',
      'es':
          'Manchester United: cinco conclusiones de la gira de pretemporada por Tailandia...',
      'fr':
          'Manchester United: Cinq points à retenir de la tournée de pré-saison en Thaïlande...',
    },
    's9bn54zo': {
      'en': '4hour ago',
      'ar': 'قبل 4 ساعات',
      'de': 'Vor 4 Stunden',
      'es': 'hace 4 horas',
      'fr': 'il y a 4 heures',
    },
    '2rz8r61b': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'j4l5af10': {
      'en': 'Sports',
      'ar': 'رياضات',
      'de': 'Sport',
      'es': 'Deportes',
      'fr': 'Des sports',
    },
    'kndl9ifd': {
      'en': 'Ex-army major rows to Isle of Wight in DIY boat for Ukraine',
      'ar': 'الصفوف الرئيسية للجيش السابق إلى جزيرة وايت في قارب DIY لأوكرانيا',
      'de':
          'Ex-Armee-Majors rudert mit DIY-Boot für die Ukraine zur Isle of Wight',
      'es':
          'Ex comandante del ejército rema hacia la Isla de Wight en barco de bricolaje para Ucrania',
      'fr':
          'Un ancien commandant de l&#39;armée se dirige vers l&#39;île de Wight dans un bateau de bricolage pour l&#39;Ukraine',
    },
    '2zr20o1o': {
      'en': '5 hour ago',
      'ar': 'منذ 5 ساعات',
      'de': 'Vor 5 Std',
      'es': 'hace 5 horas',
      'fr': 'il y a 5 heures',
    },
    'q5yvj15w': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    'or79g381': {
      'en': 'Sports',
      'ar': 'رياضات',
      'de': 'Sport',
      'es': 'Deportes',
      'fr': 'Des sports',
    },
    '3f8z3i4y': {
      'en':
          'Ukraine war: Russian Foreign Minister Sergei Lavrov seeks allies with ...',
      'ar':
          'حرب أوكرانيا: وزير الخارجية الروسي سيرجي لافروف يبحث عن حلفاء مع ...',
      'de':
          'Ukraine-Krieg: Russlands Außenminister Sergej Lawrow sucht Verbündete mit ...',
      'es':
          'Guerra de Ucrania: el ministro de Relaciones Exteriores de Rusia, Sergei Lavrov, busca aliados con ...',
      'fr':
          'Guerre d&#39;Ukraine : le ministre russe des Affaires étrangères Sergueï Lavrov cherche des alliés avec...',
    },
    '0zc8w8eo': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    '10m826pu': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    '7qengeh3': {
      'en': 'Sports',
      'ar': 'رياضات',
      'de': 'Sport',
      'es': 'Deportes',
      'fr': 'Des sports',
    },
    'h1rsrweq': {
      'en':
          'Ukraine war: Russian Foreign Minister Sergei Lavrov seeks allies with ...',
      'ar':
          'حرب أوكرانيا: وزير الخارجية الروسي سيرجي لافروف يبحث عن حلفاء مع ...',
      'de':
          'Ukraine-Krieg: Russlands Außenminister Sergej Lawrow sucht Verbündete mit ...',
      'es':
          'Guerra de Ucrania: el ministro de Relaciones Exteriores de Rusia, Sergei Lavrov, busca aliados con ...',
      'fr':
          'Guerre d&#39;Ukraine : le ministre russe des Affaires étrangères Sergueï Lavrov cherche des alliés avec...',
    },
    'lhpjia03': {
      'en': '1 hour ago',
      'ar': 'منذ 1 ساعة',
      'de': 'vor 1 Stunde',
      'es': '1 hora antes',
      'fr': 'Il ya 1 heure',
    },
    'fuftx461': {
      'en': '|',
      'ar': '|',
      'de': '|',
      'es': '|',
      'fr': '|',
    },
    '0hjgydff': {
      'en': 'Sports',
      'ar': 'رياضات',
      'de': 'Sport',
      'es': 'Deportes',
      'fr': 'Des sports',
    },
    'gkuxcwpx': {
      'en': 'Mohamed Tarek',
      'ar': 'محمد طارق',
      'de': 'Mohammed Tarek',
      'es': 'mohamed tarek',
      'fr': 'Mohamed Tarek',
    },
    'pexvo7co': {
      'en': 'Follow',
      'ar': 'يتبع',
      'de': 'Folgen',
      'es': 'Seguir',
      'fr': 'Suivre',
    },
    'nub900hu': {
      'en': 'OXNEWS',
      'ar': 'OXNEWS',
      'de': 'OXNEWS',
      'es': 'OXNOTICIAS',
      'fr': 'OXNEWS',
    },
  },
].reduce((a, b) => a..addAll(b));
