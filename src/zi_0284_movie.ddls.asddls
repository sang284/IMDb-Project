@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface Layer - Movie'

define root view entity ZI_0284_Movie
  as select from zabap_movie_a
  composition [0..*] of ZI_0284_Rating        as _Ratings
  association [1..1] to ZI_0284_RuntimeText   as _RuntimeText   on $projection.MovieUuid = _RuntimeText.MovieUuid
  association [1..1] to ZI_0284_AverageRating as _AverageRating on $projection.MovieUuid = _AverageRating.Movie_UUID
  association [1..1] to ZI_0284_GenreTextVH as _GenreVH on $projection.MovieUuid = _GenreVH.MovieUuid
  



{
  key movie_uuid                   as MovieUuid,
      title                        as Title,

      genre                        as Genre,

      publishing_year              as PublishingYear,
      runtime_in_min               as RuntimeInMin,
      image_url                    as ImageUrl,
      created_at                   as CreatedAt,
      created_by                   as CreatedBy,
      last_changed_at              as LastChangedAt,
      last_changed_by              as LastChangedBy,

      _AverageRating.AverageRating as AverageRating,


      case when _AverageRating.AverageRating > 7.5 then 3
      when _AverageRating.AverageRating >= 4 then 0
      else 1 end                   as RatingCriticality,


      _Ratings,

      case when _RuntimeText.RuntimeInMin > 150 then 'Überlänge'
          when _RuntimeText.RuntimeInMin < 30 then 'Kurzfilm'
          else 'Normale Länge'
          end                      as Length,
          
    _GenreVH as GenreVH

}
