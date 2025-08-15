public class Sample {
    public Account acct {get;set;}
    
    public Sample() {
       acct = [SELECT Name, Industry FROM Account LIMIT 1];
    }
}