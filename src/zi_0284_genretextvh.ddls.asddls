@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Value Help - Genre Text'

define view entity ZI_0284_GenreTextVH as select from zabap_movie_a
{
  key movie_uuid as MovieUuid,
  genre as Genre
}
