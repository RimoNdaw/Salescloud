/**
 * @File Name          : LWCExampleController.cls
 * @Description        : 
 * @Author             : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Group              : 
 * @Last Modified By   : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Last Modified On   : 2020-02-13 11 h 31 min 36 s
 * @Modification Log   : 
 * Ver       Date            Author      		    Modification
 * 1.0    2020-02-13   ChangeMeIn@UserSettingsUnder.SFDoc     Initial Version
**/
public with sharing class LWCExampleController {
    public LWCExampleController() {

    }
}
public inherited sharing class LWCExampleController {
    @AuraEnabled(Cacheable = true)
    public static list<Account> fetchAccounts(String strObjectName) {
        if(String.isNotBlank(strObjectName)) {
            return Database.query('SELECT Id, Name, Industry From ' + strObjectName + ' limit 10');
        }
        else {
            return null;
        }
    }
}

