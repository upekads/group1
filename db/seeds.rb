# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

###################################

KnowledgeArea.create(
    name: 'Integration Management'
)

KnowledgeArea.create(
    name: 'Scope Management'
)

KnowledgeArea.create(
    name: 'Time Management'
)


KnowledgeArea.create(
    name: 'Cost Management'
)

KnowledgeArea.create(
    name: 'Quality Management'
)

KnowledgeArea.create(
    name: 'Human Resource Management'
)

KnowledgeArea.create(
    name: 'Communication Management'
)

KnowledgeArea.create(
    name: 'Procurement Management'
)

KnowledgeArea.create(
    name: 'Stakeholder Management'
)

###################################

ProjectRole.create(
    rolename: 'Project Manager'
)

ProjectRole.create(
    rolename: 'Project Member'
)

###################################

PmbokDoc.create(
    name: 'Project Management Plan'

)

PmbokDoc.create(
    name: 'Activity Resource Requirements'

)
PmbokDoc.create(
    name: 'Change Requests'

)
PmbokDoc.create(
    name: 'Human Resources Management Plan'

)
PmbokDoc.create(
    name: 'Issue Log'

)
PmbokDoc.create(
    name: 'Performance Reports'

)
PmbokDoc.create(
    name: 'Project Staff Assignments'

)
PmbokDoc.create(
    name: 'Resource Calendars'

)
PmbokDoc.create(
    name: 'Team Performance Assessments'

)
PmbokDoc.create(
    name: 'Work Performance Reports'

)

#######################################################3
ProcessGroup.create(
    name: 'Initiation Process Group'

)

ProcessGroup.create(
    name: 'Planning Process Group'

)
ProcessGroup.create(
    name: 'Execution Process Group'

)
ProcessGroup.create(
    name: 'Monitor and Control Process Group'

)
ProcessGroup.create(
    name: 'Closing Process Group'

)


