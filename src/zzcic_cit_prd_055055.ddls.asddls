@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZZCICIT_PRD_055055'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZZCIC_CIT_PRD_055055
  provider contract TRANSACTIONAL_QUERY
  as projection on ZZCIR_CIT_PRD_055055
  association [1..1] to ZZCIR_CIT_PRD_055055 as _BaseEntity on $projection.PRODUCTID = _BaseEntity.PRODUCTID
{
  key ProductID,
  ProductName,
  Category,
  Quantity,
  Price,
  @Consumption: {
    Valuehelpdefinition: [ {
      Entity.Element: 'Currency', 
      Entity.Name: 'I_CurrencyStdVH', 
      Useforvalidation: true
    } ]
  }
  Currency,
  @Semantics: {
    User.Createdby: true
  }
  LocalCreatedBy,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  LocalCreatedAt,
  @Semantics: {
    User.Localinstancelastchangedby: true
  }
  LocalLastChangedBy,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LocalLastChangedAt,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LastChangedAt,
  _BaseEntity
}
