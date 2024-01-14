@EndUserText.label: 'Consumption Layer - Rating'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity ZC_0284_Rating
  as projection on ZI_0284_Rating
{
  key RatingUuid,
      MovieUuid,
      UserName,
      Rating,
      RatingDate,
      Genrename,
     
      /* Associations */
      _Movie : redirected to parent ZC_0284_MOVIE
}
