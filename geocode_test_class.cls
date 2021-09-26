@isTest 
public class TestAccountGeocodeAddress {
    static testMethod void testGeoCodeAddress() {
       //trigger executes when account is created
       //set up data test model
       Account acc = new Account();
        
       acc.Name = 'TestingGeo';
       acc.BillingStreet  = '1600 Amphitheatre Parkway';
       acc.BillingCity  = 'Mountain View';
       acc.BillingState  = 'CA';
       acc.BillingCountry = 'USA';
       acc.BillingPostalCode = '94043';

       Test.startTest();
       //mock call out
       StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
       mock.setStaticResource('GetGeocodeResourceUSA');
       mock.setStatusCode(200);
       mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
       Test.setMock(HttpCalloutMock.class, mock);
        
      
       insert acc;
       Test.stopTest();
  
    
      
        
       //assertion
       //System.assertEquals(37.4219493, acc.Location__latitude__s);
       //System.assertEquals(-122.0847727, acc.Location__longitude__s);
    }
}