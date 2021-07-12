%dw 2.0
output application/java
fun format(d: DateTime) = d as String {format: "yyyy-MM-dd'T'HH:mm:ss.SSS"} 
---
[{
	Id: payload.caseId,
	Comments: payload.comments,
	External_Comments__c: payload.comments,
	External_Status__c: payload.externalStatus,
	External_Owner__c: payload.externalOwner,
	External_Priority__c: payload.externalPriority,
	priority: payload.priority,
	status: payload.status,
	//External_System_Last_Updated__c: payload.externalSystemLastUpdated as Date { format: "MM/dd/yyyy"} 
	External_System_Last_Updated__c: format(payload.lastModifiedDate) as DateTime
}]