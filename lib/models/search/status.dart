enum StatusAnime { airing, completed, tba }

enum StatusManga { publishing, completed, tbp}



String statusAnimeToString(StatusAnime status) {
  switch (status) {
    case StatusAnime.airing:
      return 'airing';
      break;
    case StatusAnime.airing:
      return 'completed';
      break;
    case StatusAnime.airing:
      return 'tba';
      break;
    default:
    return '';
  }
}

String statusMangaToString(StatusManga status) {
  switch (status) {
    case StatusManga.publishing:
      return 'publishing';
      break;
    case StatusManga.completed:
      return 'completed';
      break;
    case StatusManga.tbp:
      return 'tbp';
      break;
    default:
      return '';
  }
}