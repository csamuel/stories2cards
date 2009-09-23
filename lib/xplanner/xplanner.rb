require 'xsd/qname'

# {http://xml.apache.org/xml-soap}mapItem
#   key - (any)
#   value - (any)
class MapItem
  attr_accessor :key
  attr_accessor :value

  def initialize(key = nil, value = nil)
    @key = key
    @value = value
  end
end

# {http://domain.soap.xplanner.technoetic.com}DomainData
# abstract
#   id - SOAP::SOAPInt
#   lastUpdateTime - SOAP::SOAPDateTime
class DomainData
  attr_accessor :id
  attr_accessor :lastUpdateTime

  def initialize(id = nil, lastUpdateTime = nil)
    @id = id
    @lastUpdateTime = lastUpdateTime
  end
end

# {http://xplanner.org/soap}ProjectData
#   id - SOAP::SOAPInt
#   lastUpdateTime - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   name - SOAP::SOAPString
class ProjectData < DomainData
  attr_accessor :id
  attr_accessor :lastUpdateTime
  attr_accessor :description
  attr_accessor :name

  def initialize(id = nil, lastUpdateTime = nil, description = nil, name = nil)
    @id = id
    @lastUpdateTime = lastUpdateTime
    @description = description
    @name = name
  end
end

# {http://xplanner.org/soap}IterationData
#   id - SOAP::SOAPInt
#   lastUpdateTime - SOAP::SOAPDateTime
#   actualHours - SOAP::SOAPDouble
#   addedHours - SOAP::SOAPDouble
#   adjustedEstimatedHours - SOAP::SOAPDouble
#   daysWorked - SOAP::SOAPDouble
#   description - SOAP::SOAPString
#   endDate - SOAP::SOAPDateTime
#   estimatedHours - SOAP::SOAPDouble
#   name - SOAP::SOAPString
#   overestimatedHours - SOAP::SOAPDouble
#   postponedHours - SOAP::SOAPDouble
#   projectId - SOAP::SOAPInt
#   remainingHours - SOAP::SOAPDouble
#   startDate - SOAP::SOAPDateTime
#   statusKey - SOAP::SOAPString
#   underestimatedHours - SOAP::SOAPDouble
class IterationData < DomainData
  attr_accessor :id
  attr_accessor :lastUpdateTime
  attr_accessor :actualHours
  attr_accessor :addedHours
  attr_accessor :adjustedEstimatedHours
  attr_accessor :daysWorked
  attr_accessor :description
  attr_accessor :endDate
  attr_accessor :estimatedHours
  attr_accessor :name
  attr_accessor :overestimatedHours
  attr_accessor :postponedHours
  attr_accessor :projectId
  attr_accessor :remainingHours
  attr_accessor :startDate
  attr_accessor :statusKey
  attr_accessor :underestimatedHours

  def initialize(id = nil, lastUpdateTime = nil, actualHours = nil, addedHours = nil, adjustedEstimatedHours = nil, daysWorked = nil, description = nil, endDate = nil, estimatedHours = nil, name = nil, overestimatedHours = nil, postponedHours = nil, projectId = nil, remainingHours = nil, startDate = nil, statusKey = nil, underestimatedHours = nil)
    @id = id
    @lastUpdateTime = lastUpdateTime
    @actualHours = actualHours
    @addedHours = addedHours
    @adjustedEstimatedHours = adjustedEstimatedHours
    @daysWorked = daysWorked
    @description = description
    @endDate = endDate
    @estimatedHours = estimatedHours
    @name = name
    @overestimatedHours = overestimatedHours
    @postponedHours = postponedHours
    @projectId = projectId
    @remainingHours = remainingHours
    @startDate = startDate
    @statusKey = statusKey
    @underestimatedHours = underestimatedHours
  end
end

# {http://xplanner.org/soap}UserStoryData
#   id - SOAP::SOAPInt
#   lastUpdateTime - SOAP::SOAPDateTime
#   actualHours - SOAP::SOAPDouble
#   adjustedEstimatedHours - SOAP::SOAPDouble
#   completed - SOAP::SOAPBoolean
#   customerId - SOAP::SOAPInt
#   description - SOAP::SOAPString
#   dispositionName - SOAP::SOAPString
#   estimatedHours - SOAP::SOAPDouble
#   estimatedOriginalHours - SOAP::SOAPDouble
#   iterationId - SOAP::SOAPInt
#   name - SOAP::SOAPString
#   postponedHours - SOAP::SOAPDouble
#   priority - SOAP::SOAPInt
#   remainingHours - SOAP::SOAPDouble
#   trackerId - SOAP::SOAPInt
class UserStoryData < DomainData
  attr_accessor :id
  attr_accessor :lastUpdateTime
  attr_accessor :actualHours
  attr_accessor :adjustedEstimatedHours
  attr_accessor :completed
  attr_accessor :customerId
  attr_accessor :description
  attr_accessor :dispositionName
  attr_accessor :estimatedHours
  attr_accessor :estimatedOriginalHours
  attr_accessor :iterationId
  attr_accessor :name
  attr_accessor :postponedHours
  attr_accessor :priority
  attr_accessor :remainingHours
  attr_accessor :trackerId

  def initialize(id = nil, lastUpdateTime = nil, actualHours = nil, adjustedEstimatedHours = nil, completed = nil, customerId = nil, description = nil, dispositionName = nil, estimatedHours = nil, estimatedOriginalHours = nil, iterationId = nil, name = nil, postponedHours = nil, priority = nil, remainingHours = nil, trackerId = nil)
    @id = id
    @lastUpdateTime = lastUpdateTime
    @actualHours = actualHours
    @adjustedEstimatedHours = adjustedEstimatedHours
    @completed = completed
    @customerId = customerId
    @description = description
    @dispositionName = dispositionName
    @estimatedHours = estimatedHours
    @estimatedOriginalHours = estimatedOriginalHours
    @iterationId = iterationId
    @name = name
    @postponedHours = postponedHours
    @priority = priority
    @remainingHours = remainingHours
    @trackerId = trackerId
  end
end

# {http://xplanner.org/soap}TaskData
#   id - SOAP::SOAPInt
#   lastUpdateTime - SOAP::SOAPDateTime
#   acceptorId - SOAP::SOAPInt
#   actualHours - SOAP::SOAPDouble
#   adjustedEstimatedHours - SOAP::SOAPDouble
#   completed - SOAP::SOAPBoolean
#   createdDate - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   dispositionName - SOAP::SOAPString
#   estimatedHours - SOAP::SOAPDouble
#   estimatedOriginalHours - SOAP::SOAPDouble
#   name - SOAP::SOAPString
#   remainingHours - SOAP::SOAPDouble
#   storyId - SOAP::SOAPInt
#   type - SOAP::SOAPString
class TaskData < DomainData
  attr_accessor :id
  attr_accessor :lastUpdateTime
  attr_accessor :acceptorId
  attr_accessor :actualHours
  attr_accessor :adjustedEstimatedHours
  attr_accessor :completed
  attr_accessor :createdDate
  attr_accessor :description
  attr_accessor :dispositionName
  attr_accessor :estimatedHours
  attr_accessor :estimatedOriginalHours
  attr_accessor :name
  attr_accessor :remainingHours
  attr_accessor :storyId
  attr_accessor :type

  def initialize(id = nil, lastUpdateTime = nil, acceptorId = nil, actualHours = nil, adjustedEstimatedHours = nil, completed = nil, createdDate = nil, description = nil, dispositionName = nil, estimatedHours = nil, estimatedOriginalHours = nil, name = nil, remainingHours = nil, storyId = nil, type = nil)
    @id = id
    @lastUpdateTime = lastUpdateTime
    @acceptorId = acceptorId
    @actualHours = actualHours
    @adjustedEstimatedHours = adjustedEstimatedHours
    @completed = completed
    @createdDate = createdDate
    @description = description
    @dispositionName = dispositionName
    @estimatedHours = estimatedHours
    @estimatedOriginalHours = estimatedOriginalHours
    @name = name
    @remainingHours = remainingHours
    @storyId = storyId
    @type = type
  end
end

# {http://xplanner.org/soap}TimeEntryData
#   id - SOAP::SOAPInt
#   lastUpdateTime - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   duration - SOAP::SOAPDouble
#   endTime - SOAP::SOAPDateTime
#   person1Id - SOAP::SOAPInt
#   person2Id - SOAP::SOAPInt
#   reportDate - SOAP::SOAPDateTime
#   startTime - SOAP::SOAPDateTime
#   taskId - SOAP::SOAPInt
class TimeEntryData < DomainData
  attr_accessor :id
  attr_accessor :lastUpdateTime
  attr_accessor :description
  attr_accessor :duration
  attr_accessor :endTime
  attr_accessor :person1Id
  attr_accessor :person2Id
  attr_accessor :reportDate
  attr_accessor :startTime
  attr_accessor :taskId

  def initialize(id = nil, lastUpdateTime = nil, description = nil, duration = nil, endTime = nil, person1Id = nil, person2Id = nil, reportDate = nil, startTime = nil, taskId = nil)
    @id = id
    @lastUpdateTime = lastUpdateTime
    @description = description
    @duration = duration
    @endTime = endTime
    @person1Id = person1Id
    @person2Id = person2Id
    @reportDate = reportDate
    @startTime = startTime
    @taskId = taskId
  end
end

# {http://xplanner.org/soap}NoteData
#   id - SOAP::SOAPInt
#   lastUpdateTime - SOAP::SOAPDateTime
#   attachedToId - SOAP::SOAPInt
#   attachmentId - SOAP::SOAPInt
#   authorId - SOAP::SOAPInt
#   body - SOAP::SOAPString
#   subject - SOAP::SOAPString
#   submissionTime - SOAP::SOAPDateTime
class NoteData < DomainData
  attr_accessor :id
  attr_accessor :lastUpdateTime
  attr_accessor :attachedToId
  attr_accessor :attachmentId
  attr_accessor :authorId
  attr_accessor :body
  attr_accessor :subject
  attr_accessor :submissionTime

  def initialize(id = nil, lastUpdateTime = nil, attachedToId = nil, attachmentId = nil, authorId = nil, body = nil, subject = nil, submissionTime = nil)
    @id = id
    @lastUpdateTime = lastUpdateTime
    @attachedToId = attachedToId
    @attachmentId = attachmentId
    @authorId = authorId
    @body = body
    @subject = subject
    @submissionTime = submissionTime
  end
end

# {http://xplanner.org/soap}PersonData
#   id - SOAP::SOAPInt
#   lastUpdateTime - SOAP::SOAPDateTime
#   email - SOAP::SOAPString
#   initials - SOAP::SOAPString
#   name - SOAP::SOAPString
#   phone - SOAP::SOAPString
#   userId - SOAP::SOAPString
class PersonData < DomainData
  attr_accessor :id
  attr_accessor :lastUpdateTime
  attr_accessor :email
  attr_accessor :initials
  attr_accessor :name
  attr_accessor :phone
  attr_accessor :userId

  def initialize(id = nil, lastUpdateTime = nil, email = nil, initials = nil, name = nil, phone = nil, userId = nil)
    @id = id
    @lastUpdateTime = lastUpdateTime
    @email = email
    @initials = initials
    @name = name
    @phone = phone
    @userId = userId
  end
end

# {http://db.xplanner.technoetic.com}QueryException
class QueryException < ::StandardError
  def initialize
  end
end

# {http://pacdcdtadeva02:7070/soap/XPlanner}ArrayOf_tns1_IterationData
class ArrayOf_tns1_IterationData < ::Array
end

# {http://pacdcdtadeva02:7070/soap/XPlanner}ArrayOf_tns1_UserStoryData
class ArrayOf_tns1_UserStoryData < ::Array
end

# {http://pacdcdtadeva02:7070/soap/XPlanner}ArrayOf_tns1_TaskData
class ArrayOf_tns1_TaskData < ::Array
end

# {http://pacdcdtadeva02:7070/soap/XPlanner}ArrayOf_tns1_TimeEntryData
class ArrayOf_tns1_TimeEntryData < ::Array
end

# {http://pacdcdtadeva02:7070/soap/XPlanner}ArrayOf_tns1_PersonData
class ArrayOf_tns1_PersonData < ::Array
end

# {http://pacdcdtadeva02:7070/soap/XPlanner}ArrayOf_tns1_ProjectData
class ArrayOf_tns1_ProjectData < ::Array
end

# {http://pacdcdtadeva02:7070/soap/XPlanner}ArrayOf_tns1_NoteData
class ArrayOf_tns1_NoteData < ::Array
end
