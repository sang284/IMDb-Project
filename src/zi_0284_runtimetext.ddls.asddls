@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Runtime Text'

define view entity ZI_0284_RuntimeText
  as select from zabap_movie_a
{
  key movie_uuid     as MovieUuid,
      runtime_in_min as RuntimeInMin
}
