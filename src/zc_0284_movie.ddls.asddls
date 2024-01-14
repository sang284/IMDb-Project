@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'C - Movie'
@Metadata.allowExtensions: true
@Search.searchable: true

define root view entity ZC_0284_MOVIE
  provider contract transactional_query
  as projection on ZI_0284_Movie
{
  key MovieUuid,
      Title,

      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZI_0284_GenreTextVH', element: 'genre'} }]
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.7
      Genre,

      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.7
      PublishingYear,

      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.7
      RuntimeInMin,
      ImageUrl,
      CreatedAt,
      CreatedBy,
      LastChangedAt,
      LastChangedBy,
      Length,
      AverageRating,
      RatingCriticality,

      GenreVH,

      _Ratings : redirected to composition child ZC_0284_Rating
}
