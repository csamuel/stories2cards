require 'soap/rpc/driver'

class XPlanner < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "http://pacdcdtadeva02:7070/soap/XPlanner"
  NsSoapXplannerTechnoeticCom = "http://soap.xplanner.technoetic.com"

  Methods = [
    [ XSD::QName.new(NsSoapXplannerTechnoeticCom, "getAttributes"),
      "",
      "getAttributes",
      [ ["in", "objectId", ["::SOAP::SOAPInt"]],
        ["retval", "getAttributesReturn", ["Hash", "http://xml.apache.org/xml-soap", "Map"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapXplannerTechnoeticCom, "update"),
      "",
      "update",
      [ ["in", "object", ["ProjectData", "http://xplanner.org/soap", "ProjectData"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapXplannerTechnoeticCom, "update"),
      "",
      "update",
      [ ["in", "object", ["IterationData", "http://xplanner.org/soap", "IterationData"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapXplannerTechnoeticCom, "update"),
      "",
      "update",
      [ ["in", "object", ["UserStoryData", "http://xplanner.org/soap", "UserStoryData"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapXplannerTechnoeticCom, "update"),
      "",
      "update",
      [ ["in", "object", ["TaskData", "http://xplanner.org/soap", "TaskData"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapXplannerTechnoeticCom, "update"),
      "",
      "update",
      [ ["in", "object", ["TimeEntryData", "http://xplanner.org/soap", "TimeEntryData"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapXplannerTechnoeticCom, "update"),
      "",
      "update",
      [ ["in", "note", ["NoteData", "http://xplanner.org/soap", "NoteData"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapXplannerTechnoeticCom, "update"),
      "",
      "update",
      [ ["in", "object", ["PersonData", "http://xplanner.org/soap", "PersonData"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapXplannerTechnoeticCom, "getAttribute"),
      "",
      "getAttribute",
      [ ["in", "objectId", ["::SOAP::SOAPInt"]],
        ["in", "key", ["::SOAP::SOAPString"]],
        ["retval", "getAttributeReturn", ["::SOAP::SOAPString"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapXplannerTechnoeticCom, "setAttribute"),
      "",
      "setAttribute",
      [ ["in", "objectId", ["::SOAP::SOAPInt"]],
        ["in", "key", ["::SOAP::SOAPString"]],
        ["in", "value", ["::SOAP::SOAPString"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapXplannerTechnoeticCom, "getNote"),
      "",
      "getNote",
      [ ["in", "id", ["::SOAP::SOAPInt"]],
        ["retval", "getNoteReturn", ["NoteData", "http://xplanner.org/soap", "NoteData"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapXplannerTechnoeticCom, "removeNote"),
      "",
      "removeNote",
      [ ["in", "id", ["::SOAP::SOAPInt"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapXplannerTechnoeticCom, "getPerson"),
      "",
      "getPerson",
      [ ["in", "id", ["::SOAP::SOAPInt"]],
        ["retval", "getPersonReturn", ["PersonData", "http://xplanner.org/soap", "PersonData"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapXplannerTechnoeticCom, "getIterations"),
      "",
      "getIterations",
      [ ["in", "projectId", ["::SOAP::SOAPInt"]],
        ["retval", "getIterationsReturn", ["ArrayOf_tns1_IterationData", "http://pacdcdtadeva02:7070/soap/XPlanner", "ArrayOf_tns1_IterationData"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapXplannerTechnoeticCom, "getCurrentIteration"),
      "",
      "getCurrentIteration",
      [ ["in", "projectId", ["::SOAP::SOAPInt"]],
        ["retval", "getCurrentIterationReturn", ["IterationData", "http://xplanner.org/soap", "IterationData"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapXplannerTechnoeticCom, "getUserStories"),
      "",
      "getUserStories",
      [ ["in", "containerId", ["::SOAP::SOAPInt"]],
        ["retval", "getUserStoriesReturn", ["ArrayOf_tns1_UserStoryData", "http://pacdcdtadeva02:7070/soap/XPlanner", "ArrayOf_tns1_UserStoryData"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapXplannerTechnoeticCom, "getTasks"),
      "",
      "getTasks",
      [ ["in", "containerId", ["::SOAP::SOAPInt"]],
        ["retval", "getTasksReturn", ["ArrayOf_tns1_TaskData", "http://pacdcdtadeva02:7070/soap/XPlanner", "ArrayOf_tns1_TaskData"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapXplannerTechnoeticCom, "getTimeEntries"),
      "",
      "getTimeEntries",
      [ ["in", "containerId", ["::SOAP::SOAPInt"]],
        ["retval", "getTimeEntriesReturn", ["ArrayOf_tns1_TimeEntryData", "http://pacdcdtadeva02:7070/soap/XPlanner", "ArrayOf_tns1_TimeEntryData"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapXplannerTechnoeticCom, "getCurrentTasksForPerson"),
      "",
      "getCurrentTasksForPerson",
      [ ["in", "personId", ["::SOAP::SOAPInt"]],
        ["retval", "getCurrentTasksForPersonReturn", ["ArrayOf_tns1_TaskData", "http://pacdcdtadeva02:7070/soap/XPlanner", "ArrayOf_tns1_TaskData"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {"QueryException_"=>{:use=>"encoded", :ns=>"http://pacdcdtadeva02:7070/soap/XPlanner", :encodingstyle=>"http://schemas.xmlsoap.org/soap/encoding/", :namespace=>"http://pacdcdtadeva02:7070/soap/XPlanner", :name=>"QueryException"}} }
    ],
    [ XSD::QName.new(NsSoapXplannerTechnoeticCom, "addTask"),
      "",
      "addTask",
      [ ["in", "task", ["TaskData", "http://xplanner.org/soap", "TaskData"]],
        ["retval", "addTaskReturn", ["TaskData", "http://xplanner.org/soap", "TaskData"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapXplannerTechnoeticCom, "getPeople"),
      "",
      "getPeople",
      [ ["retval", "getPeopleReturn", ["ArrayOf_tns1_PersonData", "http://pacdcdtadeva02:7070/soap/XPlanner", "ArrayOf_tns1_PersonData"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapXplannerTechnoeticCom, "getProject"),
      "",
      "getProject",
      [ ["in", "id", ["::SOAP::SOAPInt"]],
        ["retval", "getProjectReturn", ["ProjectData", "http://xplanner.org/soap", "ProjectData"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapXplannerTechnoeticCom, "getIteration"),
      "",
      "getIteration",
      [ ["in", "id", ["::SOAP::SOAPInt"]],
        ["retval", "getIterationReturn", ["IterationData", "http://xplanner.org/soap", "IterationData"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapXplannerTechnoeticCom, "getTask"),
      "",
      "getTask",
      [ ["in", "id", ["::SOAP::SOAPInt"]],
        ["retval", "getTaskReturn", ["TaskData", "http://xplanner.org/soap", "TaskData"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapXplannerTechnoeticCom, "getUserStory"),
      "",
      "getUserStory",
      [ ["in", "id", ["::SOAP::SOAPInt"]],
        ["retval", "getUserStoryReturn", ["UserStoryData", "http://xplanner.org/soap", "UserStoryData"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapXplannerTechnoeticCom, "getProjects"),
      "",
      "getProjects",
      [ ["retval", "getProjectsReturn", ["ArrayOf_tns1_ProjectData", "http://pacdcdtadeva02:7070/soap/XPlanner", "ArrayOf_tns1_ProjectData"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapXplannerTechnoeticCom, "addProject"),
      "",
      "addProject",
      [ ["in", "project", ["ProjectData", "http://xplanner.org/soap", "ProjectData"]],
        ["retval", "addProjectReturn", ["ProjectData", "http://xplanner.org/soap", "ProjectData"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapXplannerTechnoeticCom, "removeProject"),
      "",
      "removeProject",
      [ ["in", "id", ["::SOAP::SOAPInt"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapXplannerTechnoeticCom, "addIteration"),
      "",
      "addIteration",
      [ ["in", "iteration", ["IterationData", "http://xplanner.org/soap", "IterationData"]],
        ["retval", "addIterationReturn", ["IterationData", "http://xplanner.org/soap", "IterationData"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapXplannerTechnoeticCom, "removeIteration"),
      "",
      "removeIteration",
      [ ["in", "id", ["::SOAP::SOAPInt"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapXplannerTechnoeticCom, "addUserStory"),
      "",
      "addUserStory",
      [ ["in", "story", ["UserStoryData", "http://xplanner.org/soap", "UserStoryData"]],
        ["retval", "addUserStoryReturn", ["UserStoryData", "http://xplanner.org/soap", "UserStoryData"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapXplannerTechnoeticCom, "removeUserStory"),
      "",
      "removeUserStory",
      [ ["in", "id", ["::SOAP::SOAPInt"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapXplannerTechnoeticCom, "getPlannedTasksForPerson"),
      "",
      "getPlannedTasksForPerson",
      [ ["in", "personId", ["::SOAP::SOAPInt"]],
        ["retval", "getPlannedTasksForPersonReturn", ["ArrayOf_tns1_TaskData", "http://pacdcdtadeva02:7070/soap/XPlanner", "ArrayOf_tns1_TaskData"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {"QueryException_"=>{:use=>"encoded", :ns=>"http://pacdcdtadeva02:7070/soap/XPlanner", :encodingstyle=>"http://schemas.xmlsoap.org/soap/encoding/", :namespace=>"http://pacdcdtadeva02:7070/soap/XPlanner", :name=>"QueryException"}} }
    ],
    [ XSD::QName.new(NsSoapXplannerTechnoeticCom, "removeTask"),
      "",
      "removeTask",
      [ ["in", "id", ["::SOAP::SOAPInt"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapXplannerTechnoeticCom, "getTimeEntry"),
      "",
      "getTimeEntry",
      [ ["in", "id", ["::SOAP::SOAPInt"]],
        ["retval", "getTimeEntryReturn", ["TimeEntryData", "http://xplanner.org/soap", "TimeEntryData"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapXplannerTechnoeticCom, "addTimeEntry"),
      "",
      "addTimeEntry",
      [ ["in", "timeEntry", ["TimeEntryData", "http://xplanner.org/soap", "TimeEntryData"]],
        ["retval", "addTimeEntryReturn", ["TimeEntryData", "http://xplanner.org/soap", "TimeEntryData"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapXplannerTechnoeticCom, "removeTimeEntry"),
      "",
      "removeTimeEntry",
      [ ["in", "id", ["::SOAP::SOAPInt"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapXplannerTechnoeticCom, "addNote"),
      "",
      "addNote",
      [ ["in", "note", ["NoteData", "http://xplanner.org/soap", "NoteData"]],
        ["retval", "addNoteReturn", ["NoteData", "http://xplanner.org/soap", "NoteData"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapXplannerTechnoeticCom, "getNotesForObject"),
      "",
      "getNotesForObject",
      [ ["in", "attachedToId", ["::SOAP::SOAPInt"]],
        ["retval", "getNotesForObjectReturn", ["ArrayOf_tns1_NoteData", "http://pacdcdtadeva02:7070/soap/XPlanner", "ArrayOf_tns1_NoteData"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapXplannerTechnoeticCom, "addPerson"),
      "",
      "addPerson",
      [ ["in", "object", ["PersonData", "http://xplanner.org/soap", "PersonData"]],
        ["retval", "addPersonReturn", ["PersonData", "http://xplanner.org/soap", "PersonData"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapXplannerTechnoeticCom, "removePerson"),
      "",
      "removePerson",
      [ ["in", "id", ["::SOAP::SOAPInt"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapXplannerTechnoeticCom, "deleteAttribute"),
      "",
      "deleteAttribute",
      [ ["in", "objectId", ["::SOAP::SOAPInt"]],
        ["in", "key", ["::SOAP::SOAPString"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsSoapXplannerTechnoeticCom, "getAttributesWithPrefix"),
      "",
      "getAttributesWithPrefix",
      [ ["in", "objectId", ["::SOAP::SOAPInt"]],
        ["in", "prefix", ["::SOAP::SOAPString"]],
        ["retval", "getAttributesWithPrefixReturn", ["Hash", "http://xml.apache.org/xml-soap", "Map"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = DefaultMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = DefaultMappingRegistry::LiteralRegistry
    init_methods
  end

private

  def init_methods
    Methods.each do |definitions|
      opt = definitions.last
      if opt[:request_style] == :document
        add_document_operation(*definitions)
      else
        add_rpc_operation(*definitions)
        qname = definitions[0]
        name = definitions[2]
        if qname.name != name and qname.name.capitalize == name.capitalize
          ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
            __send__(name, *arg)
          end
        end
      end
    end
  end
end

