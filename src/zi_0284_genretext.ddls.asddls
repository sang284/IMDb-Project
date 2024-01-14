@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Genre Text'

/*+[hideWarning] { "IDS" : [ "KEY_CHECK" ]  } */
define view entity ZI_0284_GenreText
  as select from zabap_movie_a
{
  movie_uuid as MovieUuid,
      genre      as Genre
}
