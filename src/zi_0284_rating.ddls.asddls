@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface Layer - Rating'
define view entity ZI_0284_Rating
  as select from zabap_rating_a
  association        to parent ZI_0284_Movie as _Movie       on $projection.MovieUuid = _Movie.MovieUuid
  association [1..1] to ZI_0284_GenreText    as _Genre       on $projection.MovieUuid = _Genre.MovieUuid


{
  key zabap_rating_a.rating_uuid as RatingUuid,
      zabap_rating_a.movie_uuid  as MovieUuid,
      zabap_rating_a.user_name   as UserName,
      zabap_rating_a.rating      as Rating,
      zabap_rating_a.rating_date as RatingDate,

      _Movie,
      _Genre.Genre               as Genrename

      
}
