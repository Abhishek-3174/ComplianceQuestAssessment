trigger PartTrigger on compliancequest__SQX_Part__c (before insert, before update, after insert, after update) {
    if(Trigger.isAfter)
    {
        if(Trigger.isInsert)
        {
            PartTriggerHandlerRunner.afterInsert(Trigger.new);
        }
        if(Trigger.isUpdate)
        {
            PartTriggerHandlerRunner.afterUpdate(Trigger.new,Trigger.oldMap);
        }
    }
}