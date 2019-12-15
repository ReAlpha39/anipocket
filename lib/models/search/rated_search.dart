enum RatedSearch { G, PG, PG13, R, Rplus, Rx }


String ratedSearchToString(RatedSearch rated) {
  switch (rated) {
    case RatedSearch.G:
      return 'g';
      break;
    case RatedSearch.PG:
      return 'pg';
      break;
    case RatedSearch.PG13:
      return 'pg13';
      break;
    case RatedSearch.R:
      return 'r17';
      break;
    case RatedSearch.Rplus:
      return 'r';
      break;
    case RatedSearch.Rx:
      return 'rx';
      break;
    default:
      return '';
  }
}