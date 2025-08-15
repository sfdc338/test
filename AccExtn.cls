public with sharing class AccExtn {
    public Account acc {get; set;}
    public AccExtn(ApexPages.StandardController controller) {
    acc = (Account)controller.getRecord();
    }
    public PageReference saveAndNew()
    {
        insert acc;
        PageReference pr = new PageReference('/apex/newActionStatus');
        pr.setRedirect(true);
        return pr;
    }
}