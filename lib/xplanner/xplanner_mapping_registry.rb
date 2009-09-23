require 'soap/mapping'

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsDbXplannerTechnoeticCom = "http://db.xplanner.technoetic.com"
  NsSoap = "http://xplanner.org/soap"
  NsXmlSoap = "http://xml.apache.org/xml-soap"

  EncodedRegistry.register(
    :class => MapItem,
    :schema_type => XSD::QName.new(NsXmlSoap, "mapItem"),
    :schema_element => [
      ["key", [nil, XSD::QName.new(nil, "key")]],
      ["value", [nil, XSD::QName.new(nil, "value")]]
    ]
  )

  EncodedRegistry.register(
    :class => ProjectData,
    :schema_type => XSD::QName.new(NsSoap, "ProjectData"),
    :schema_basetype => XSD::QName.new("http://domain.soap.xplanner.technoetic.com", "DomainData"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")]],
      ["lastUpdateTime", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "lastUpdateTime")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]]
    ]
  )

  EncodedRegistry.register(
    :class => IterationData,
    :schema_type => XSD::QName.new(NsSoap, "IterationData"),
    :schema_basetype => XSD::QName.new("http://domain.soap.xplanner.technoetic.com", "DomainData"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")]],
      ["lastUpdateTime", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "lastUpdateTime")]],
      ["actualHours", ["SOAP::SOAPDouble", XSD::QName.new(nil, "actualHours")]],
      ["addedHours", ["SOAP::SOAPDouble", XSD::QName.new(nil, "addedHours")]],
      ["adjustedEstimatedHours", ["SOAP::SOAPDouble", XSD::QName.new(nil, "adjustedEstimatedHours")]],
      ["daysWorked", ["SOAP::SOAPDouble", XSD::QName.new(nil, "daysWorked")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["endDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "endDate")]],
      ["estimatedHours", ["SOAP::SOAPDouble", XSD::QName.new(nil, "estimatedHours")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["overestimatedHours", ["SOAP::SOAPDouble", XSD::QName.new(nil, "overestimatedHours")]],
      ["postponedHours", ["SOAP::SOAPDouble", XSD::QName.new(nil, "postponedHours")]],
      ["projectId", ["SOAP::SOAPInt", XSD::QName.new(nil, "projectId")]],
      ["remainingHours", ["SOAP::SOAPDouble", XSD::QName.new(nil, "remainingHours")]],
      ["startDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "startDate")]],
      ["statusKey", ["SOAP::SOAPString", XSD::QName.new(nil, "statusKey")]],
      ["underestimatedHours", ["SOAP::SOAPDouble", XSD::QName.new(nil, "underestimatedHours")]]
    ]
  )

  EncodedRegistry.register(
    :class => UserStoryData,
    :schema_type => XSD::QName.new(NsSoap, "UserStoryData"),
    :schema_basetype => XSD::QName.new("http://domain.soap.xplanner.technoetic.com", "DomainData"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")]],
      ["lastUpdateTime", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "lastUpdateTime")]],
      ["actualHours", ["SOAP::SOAPDouble", XSD::QName.new(nil, "actualHours")]],
      ["adjustedEstimatedHours", ["SOAP::SOAPDouble", XSD::QName.new(nil, "adjustedEstimatedHours")]],
      ["completed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "completed")]],
      ["customerId", ["SOAP::SOAPInt", XSD::QName.new(nil, "customerId")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["dispositionName", ["SOAP::SOAPString", XSD::QName.new(nil, "dispositionName")]],
      ["estimatedHours", ["SOAP::SOAPDouble", XSD::QName.new(nil, "estimatedHours")]],
      ["estimatedOriginalHours", ["SOAP::SOAPDouble", XSD::QName.new(nil, "estimatedOriginalHours")]],
      ["iterationId", ["SOAP::SOAPInt", XSD::QName.new(nil, "iterationId")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["postponedHours", ["SOAP::SOAPDouble", XSD::QName.new(nil, "postponedHours")]],
      ["priority", ["SOAP::SOAPInt", XSD::QName.new(nil, "priority")]],
      ["remainingHours", ["SOAP::SOAPDouble", XSD::QName.new(nil, "remainingHours")]],
      ["trackerId", ["SOAP::SOAPInt", XSD::QName.new(nil, "trackerId")]]
    ]
  )

  EncodedRegistry.register(
    :class => TaskData,
    :schema_type => XSD::QName.new(NsSoap, "TaskData"),
    :schema_basetype => XSD::QName.new("http://domain.soap.xplanner.technoetic.com", "DomainData"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")]],
      ["lastUpdateTime", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "lastUpdateTime")]],
      ["acceptorId", ["SOAP::SOAPInt", XSD::QName.new(nil, "acceptorId")]],
      ["actualHours", ["SOAP::SOAPDouble", XSD::QName.new(nil, "actualHours")]],
      ["adjustedEstimatedHours", ["SOAP::SOAPDouble", XSD::QName.new(nil, "adjustedEstimatedHours")]],
      ["completed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "completed")]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "createdDate")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["dispositionName", ["SOAP::SOAPString", XSD::QName.new(nil, "dispositionName")]],
      ["estimatedHours", ["SOAP::SOAPDouble", XSD::QName.new(nil, "estimatedHours")]],
      ["estimatedOriginalHours", ["SOAP::SOAPDouble", XSD::QName.new(nil, "estimatedOriginalHours")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["remainingHours", ["SOAP::SOAPDouble", XSD::QName.new(nil, "remainingHours")]],
      ["storyId", ["SOAP::SOAPInt", XSD::QName.new(nil, "storyId")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]]
    ]
  )

  EncodedRegistry.register(
    :class => TimeEntryData,
    :schema_type => XSD::QName.new(NsSoap, "TimeEntryData"),
    :schema_basetype => XSD::QName.new("http://domain.soap.xplanner.technoetic.com", "DomainData"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")]],
      ["lastUpdateTime", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "lastUpdateTime")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["duration", ["SOAP::SOAPDouble", XSD::QName.new(nil, "duration")]],
      ["endTime", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "endTime")]],
      ["person1Id", ["SOAP::SOAPInt", XSD::QName.new(nil, "person1Id")]],
      ["person2Id", ["SOAP::SOAPInt", XSD::QName.new(nil, "person2Id")]],
      ["reportDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "reportDate")]],
      ["startTime", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "startTime")]],
      ["taskId", ["SOAP::SOAPInt", XSD::QName.new(nil, "taskId")]]
    ]
  )

  EncodedRegistry.register(
    :class => NoteData,
    :schema_type => XSD::QName.new(NsSoap, "NoteData"),
    :schema_basetype => XSD::QName.new("http://domain.soap.xplanner.technoetic.com", "DomainData"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")]],
      ["lastUpdateTime", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "lastUpdateTime")]],
      ["attachedToId", ["SOAP::SOAPInt", XSD::QName.new(nil, "attachedToId")]],
      ["attachmentId", ["SOAP::SOAPInt", XSD::QName.new(nil, "attachmentId")]],
      ["authorId", ["SOAP::SOAPInt", XSD::QName.new(nil, "authorId")]],
      ["body", ["SOAP::SOAPString", XSD::QName.new(nil, "body")]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(nil, "subject")]],
      ["submissionTime", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "submissionTime")]]
    ]
  )

  EncodedRegistry.register(
    :class => PersonData,
    :schema_type => XSD::QName.new(NsSoap, "PersonData"),
    :schema_basetype => XSD::QName.new("http://domain.soap.xplanner.technoetic.com", "DomainData"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")]],
      ["lastUpdateTime", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "lastUpdateTime")]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(nil, "email")]],
      ["initials", ["SOAP::SOAPString", XSD::QName.new(nil, "initials")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["phone", ["SOAP::SOAPString", XSD::QName.new(nil, "phone")]],
      ["userId", ["SOAP::SOAPString", XSD::QName.new(nil, "userId")]]
    ]
  )

  EncodedRegistry.set(
    ArrayOf_tns1_IterationData,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsSoap, "IterationData") }
  )

  EncodedRegistry.set(
    ArrayOf_tns1_UserStoryData,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsSoap, "UserStoryData") }
  )

  EncodedRegistry.set(
    ArrayOf_tns1_TaskData,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsSoap, "TaskData") }
  )

  EncodedRegistry.set(
    ArrayOf_tns1_TimeEntryData,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsSoap, "TimeEntryData") }
  )

  EncodedRegistry.set(
    ArrayOf_tns1_PersonData,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsSoap, "PersonData") }
  )

  EncodedRegistry.set(
    ArrayOf_tns1_ProjectData,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsSoap, "ProjectData") }
  )

  EncodedRegistry.set(
    ArrayOf_tns1_NoteData,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsSoap, "NoteData") }
  )

  EncodedRegistry.register(
    :class => QueryException,
    :schema_type => XSD::QName.new(NsDbXplannerTechnoeticCom, "QueryException"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => MapItem,
    :schema_type => XSD::QName.new(NsXmlSoap, "mapItem"),
    :schema_element => [
      ["key", [nil, XSD::QName.new(nil, "key")]],
      ["value", [nil, XSD::QName.new(nil, "value")]]
    ]
  )

  LiteralRegistry.register(
    :class => ProjectData,
    :schema_type => XSD::QName.new(NsSoap, "ProjectData"),
    :schema_basetype => XSD::QName.new("http://domain.soap.xplanner.technoetic.com", "DomainData"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")]],
      ["lastUpdateTime", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "lastUpdateTime")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]]
    ]
  )

  LiteralRegistry.register(
    :class => IterationData,
    :schema_type => XSD::QName.new(NsSoap, "IterationData"),
    :schema_basetype => XSD::QName.new("http://domain.soap.xplanner.technoetic.com", "DomainData"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")]],
      ["lastUpdateTime", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "lastUpdateTime")]],
      ["actualHours", ["SOAP::SOAPDouble", XSD::QName.new(nil, "actualHours")]],
      ["addedHours", ["SOAP::SOAPDouble", XSD::QName.new(nil, "addedHours")]],
      ["adjustedEstimatedHours", ["SOAP::SOAPDouble", XSD::QName.new(nil, "adjustedEstimatedHours")]],
      ["daysWorked", ["SOAP::SOAPDouble", XSD::QName.new(nil, "daysWorked")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["endDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "endDate")]],
      ["estimatedHours", ["SOAP::SOAPDouble", XSD::QName.new(nil, "estimatedHours")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["overestimatedHours", ["SOAP::SOAPDouble", XSD::QName.new(nil, "overestimatedHours")]],
      ["postponedHours", ["SOAP::SOAPDouble", XSD::QName.new(nil, "postponedHours")]],
      ["projectId", ["SOAP::SOAPInt", XSD::QName.new(nil, "projectId")]],
      ["remainingHours", ["SOAP::SOAPDouble", XSD::QName.new(nil, "remainingHours")]],
      ["startDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "startDate")]],
      ["statusKey", ["SOAP::SOAPString", XSD::QName.new(nil, "statusKey")]],
      ["underestimatedHours", ["SOAP::SOAPDouble", XSD::QName.new(nil, "underestimatedHours")]]
    ]
  )

  LiteralRegistry.register(
    :class => UserStoryData,
    :schema_type => XSD::QName.new(NsSoap, "UserStoryData"),
    :schema_basetype => XSD::QName.new("http://domain.soap.xplanner.technoetic.com", "DomainData"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")]],
      ["lastUpdateTime", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "lastUpdateTime")]],
      ["actualHours", ["SOAP::SOAPDouble", XSD::QName.new(nil, "actualHours")]],
      ["adjustedEstimatedHours", ["SOAP::SOAPDouble", XSD::QName.new(nil, "adjustedEstimatedHours")]],
      ["completed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "completed")]],
      ["customerId", ["SOAP::SOAPInt", XSD::QName.new(nil, "customerId")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["dispositionName", ["SOAP::SOAPString", XSD::QName.new(nil, "dispositionName")]],
      ["estimatedHours", ["SOAP::SOAPDouble", XSD::QName.new(nil, "estimatedHours")]],
      ["estimatedOriginalHours", ["SOAP::SOAPDouble", XSD::QName.new(nil, "estimatedOriginalHours")]],
      ["iterationId", ["SOAP::SOAPInt", XSD::QName.new(nil, "iterationId")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["postponedHours", ["SOAP::SOAPDouble", XSD::QName.new(nil, "postponedHours")]],
      ["priority", ["SOAP::SOAPInt", XSD::QName.new(nil, "priority")]],
      ["remainingHours", ["SOAP::SOAPDouble", XSD::QName.new(nil, "remainingHours")]],
      ["trackerId", ["SOAP::SOAPInt", XSD::QName.new(nil, "trackerId")]]
    ]
  )

  LiteralRegistry.register(
    :class => TaskData,
    :schema_type => XSD::QName.new(NsSoap, "TaskData"),
    :schema_basetype => XSD::QName.new("http://domain.soap.xplanner.technoetic.com", "DomainData"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")]],
      ["lastUpdateTime", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "lastUpdateTime")]],
      ["acceptorId", ["SOAP::SOAPInt", XSD::QName.new(nil, "acceptorId")]],
      ["actualHours", ["SOAP::SOAPDouble", XSD::QName.new(nil, "actualHours")]],
      ["adjustedEstimatedHours", ["SOAP::SOAPDouble", XSD::QName.new(nil, "adjustedEstimatedHours")]],
      ["completed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "completed")]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "createdDate")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["dispositionName", ["SOAP::SOAPString", XSD::QName.new(nil, "dispositionName")]],
      ["estimatedHours", ["SOAP::SOAPDouble", XSD::QName.new(nil, "estimatedHours")]],
      ["estimatedOriginalHours", ["SOAP::SOAPDouble", XSD::QName.new(nil, "estimatedOriginalHours")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["remainingHours", ["SOAP::SOAPDouble", XSD::QName.new(nil, "remainingHours")]],
      ["storyId", ["SOAP::SOAPInt", XSD::QName.new(nil, "storyId")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]]
    ]
  )

  LiteralRegistry.register(
    :class => TimeEntryData,
    :schema_type => XSD::QName.new(NsSoap, "TimeEntryData"),
    :schema_basetype => XSD::QName.new("http://domain.soap.xplanner.technoetic.com", "DomainData"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")]],
      ["lastUpdateTime", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "lastUpdateTime")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["duration", ["SOAP::SOAPDouble", XSD::QName.new(nil, "duration")]],
      ["endTime", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "endTime")]],
      ["person1Id", ["SOAP::SOAPInt", XSD::QName.new(nil, "person1Id")]],
      ["person2Id", ["SOAP::SOAPInt", XSD::QName.new(nil, "person2Id")]],
      ["reportDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "reportDate")]],
      ["startTime", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "startTime")]],
      ["taskId", ["SOAP::SOAPInt", XSD::QName.new(nil, "taskId")]]
    ]
  )

  LiteralRegistry.register(
    :class => NoteData,
    :schema_type => XSD::QName.new(NsSoap, "NoteData"),
    :schema_basetype => XSD::QName.new("http://domain.soap.xplanner.technoetic.com", "DomainData"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")]],
      ["lastUpdateTime", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "lastUpdateTime")]],
      ["attachedToId", ["SOAP::SOAPInt", XSD::QName.new(nil, "attachedToId")]],
      ["attachmentId", ["SOAP::SOAPInt", XSD::QName.new(nil, "attachmentId")]],
      ["authorId", ["SOAP::SOAPInt", XSD::QName.new(nil, "authorId")]],
      ["body", ["SOAP::SOAPString", XSD::QName.new(nil, "body")]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(nil, "subject")]],
      ["submissionTime", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "submissionTime")]]
    ]
  )

  LiteralRegistry.register(
    :class => PersonData,
    :schema_type => XSD::QName.new(NsSoap, "PersonData"),
    :schema_basetype => XSD::QName.new("http://domain.soap.xplanner.technoetic.com", "DomainData"),
    :schema_element => [
      ["id", ["SOAP::SOAPInt", XSD::QName.new(nil, "id")]],
      ["lastUpdateTime", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "lastUpdateTime")]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(nil, "email")]],
      ["initials", ["SOAP::SOAPString", XSD::QName.new(nil, "initials")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["phone", ["SOAP::SOAPString", XSD::QName.new(nil, "phone")]],
      ["userId", ["SOAP::SOAPString", XSD::QName.new(nil, "userId")]]
    ]
  )

  LiteralRegistry.register(
    :class => QueryException,
    :schema_type => XSD::QName.new(NsDbXplannerTechnoeticCom, "QueryException"),
    :schema_element => []
  )
end
