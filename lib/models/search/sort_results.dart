enum SortResults { ascending, descending }

String sortResults(SortResults sort) {

  switch (sort) {
    case SortResults.ascending:
      return 'asc';
      break;
    case SortResults.descending:
      return 'desc';
      break;
    default:
      return '';
  }
}