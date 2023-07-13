trigger EventTriger on Error_Logging__e (after insert) {
    Exception_Log__c errLog = new Exception_Log__c();
    for(Error_Logging__e ex:Trigger.new){     
        errLog.Object_Name__c = ex.Error_Log__c;
        errLog.Error_Message__c = ex.Error_Message__c;
        errLog.File_Extension__c = ex.File_Extension__c;
        errLog.Log_Time__c = ex.Log_Time__c;
        errLog.Object_Name__c = ex.Object_Name__c;
        errLog.Record_Type_Name__c = ex.Record_Type_Name__c;
    }
    insert errLog;
}