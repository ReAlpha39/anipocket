enum OrderByAnime { title, startDate, endDate, score, type, members, id, episodes, rating }

enum OrderByManga { title, startDate, endDate, score, type, members, id, chapters, volumes }



String orderByAnimeToString(OrderByAnime orderByAnime) {

  switch (orderByAnime) {
    case OrderByAnime.title:
      return 'title';
      break;
    case OrderByAnime.startDate:
      return 'start_date';
      break;
    case OrderByAnime.endDate:
      return 'end_date';
      break;
    case OrderByAnime.score:
      return 'score';
      break;
    case OrderByAnime.type:
      return 'type';
      break;
    case OrderByAnime.members:
      return 'members';
      break;
    case OrderByAnime.id:
      return 'id';
      break;
    case OrderByAnime.episodes:
      return 'episodes';
      break;
    case OrderByAnime.rating:
      return 'rating';
      break;
    default:
      return '';
  }
}

String orderByMangaToString(OrderByManga orderByManga) {

  switch (orderByManga) {
    case OrderByManga.title:
      return 'title';
      break;
    case OrderByManga.startDate:
      return 'start_date';
      break;
    case OrderByManga.endDate:
      return 'end_date';
      break;
    case OrderByManga.score:
      return 'score';
      break;
    case OrderByManga.type:
      return 'type';
      break;
    case OrderByManga.members:
      return 'members';
      break;
    case OrderByManga.id:
      return 'id';
      break;
    case OrderByManga.chapters:
      return 'chapters';
      break;
    case OrderByManga.volumes:
      return 'volumes';
      break;
    default:
  }
}