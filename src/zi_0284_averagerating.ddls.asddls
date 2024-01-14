@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'AverageRating'

define view entity ZI_0284_AverageRating
  as select from zabap_rating_a
{
  key  movie_uuid as Movie_UUID,
      avg(rating as abap.dec( 16, 2 )) as AverageRating
         
}

group by movie_uuid
