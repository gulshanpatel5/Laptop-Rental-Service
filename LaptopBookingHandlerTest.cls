@isTest
private class LaptopBookingHandlerTest {
  @isTest
    static void testSendEmailNotification(){
        Laptop_Bookings__c testBooking=new Laptop_Bookings__c(
            gulshanpatel044_gmail_com__c='gulshanpatel044@gmail.com',
            Name='SnapDeal',
            Amount__c=500,
            core_types__c='i7',
            Laptop_names__c='Dell'
        );
        insert testBooking;
        Test.startTest();
        LaptopBookingHandler.sendEmailNotification(new List<Laptop_Bookings__c>{testBooking});
        Test.stopTest();
    }
}