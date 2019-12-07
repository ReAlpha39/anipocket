class GenreId {
  static const ACTION = const GenreId._(1);
  static const ADVENTURE = const GenreId._(2);
  static const CARS = const GenreId._(3);
  static const COMEDY = const GenreId._(4);
  static const DEMENTIA = const GenreId._(5);
  static const DEMONS = const GenreId._(6);
  static const MYSTERY = const GenreId._(7);
  static const DRAMA = const GenreId._(8);
  static const ECCHI = const GenreId._(9);
  static const FANTASY = const GenreId._(10);
  static const GAME = const GenreId._(11);
  static const HENTAI = const GenreId._(12);
  static const HISTORICAL = const GenreId._(13);
  static const HORROR = const GenreId._(14);
  static const KIDS = const GenreId._(15);
  static const MAGIC = const GenreId._(16);
  static const MARTIAL_ARTS = const GenreId._(17);
  static const MECHA = const GenreId._(18);
  static const MUSIC = const GenreId._(19);
  static const PARODY = const GenreId._(20);
  static const SAMURAI = const GenreId._(21);
  static const ROMANCE = const GenreId._(22);
  static const SCHOOL = const GenreId._(23);
  static const SCI_FI = const GenreId._(24);
  static const SHOUJO = const GenreId._(25);
  static const SHOUJO_AI = const GenreId._(26);
  static const SHOUNEN = const GenreId._(27);
  static const SHOUNEN_AI = const GenreId._(28);
  static const SPACE = const GenreId._(29);
  static const SPORTS = const GenreId._(30);
  static const SUPER_POWER = const GenreId._(31);
  static const VAMPIRE = const GenreId._(32);
  static const YAOI = const GenreId._(33);
  static const YURI = const GenreId._(34);
  static const HAREM = const GenreId._(35);
  static const SLICE_OF_LIFE = const GenreId._(36);
  static const SUPERNATURAL = const GenreId._(37);
  static const MILITARY = const GenreId._(38);
  static const POLICE = const GenreId._(39);
  static const PSYCHOLOGICAL = const GenreId._(40);
  static const THRILLER = const GenreId._(41);
  static const SEINEN = const GenreId._(42);
  static const JOSEI = const GenreId._(43);
  static const DOUJINSHI = const GenreId._(44);
  static const GENDER_BENDER = const GenreId._(45);

  static get values => [
        ACTION,
        ADVENTURE,
        CARS,
        COMEDY,
        DEMENTIA,
        DEMONS,
        MYSTERY,
        DRAMA,
        ECCHI,
        FANTASY,
        GAME,
        HENTAI,
        HISTORICAL,
        HORROR,
        KIDS,
        MAGIC,
        MARTIAL_ARTS,
        MECHA,
        MUSIC,
        PARODY,
        SAMURAI,
        ROMANCE,
        SCHOOL,
        SCI_FI,
        SHOUJO,
        SHOUJO_AI,
        SHOUNEN,
        SHOUNEN_AI,
        SPACE,
        SPORTS,
        SUPER_POWER,
        VAMPIRE,
        YAOI,
        YURI,
        HAREM,
        SLICE_OF_LIFE,
        SUPERNATURAL,
        MILITARY,
        POLICE,
        PSYCHOLOGICAL,
        THRILLER,
        SEINEN,
        JOSEI,
        DOUJINSHI,
        GENDER_BENDER
      ];

  final int value;

  const GenreId._(this.value);
}
