trigger LeadTrigger on Lead (before insert, after insert, before update, after update, before delete, after delete, after unDelete) {
    System.debug('Lead Trigger Starting');
	new LeadTriggerHandler().run();
}