public class AccountHandlerInfo {
    public static List<Account> insertNewAccount(List<String> myString) {
        Integer n = myString.size();
        List<Account> myAccounts = new List<Account>();
        for(Integer i=0;i<n;i++){
            if(myString[i]== ''){
                System.debug('Name cannot be null');
                return null;
            }else{
                Account acc = new Account();
                acc.Name = myString[i]; 
                myAccounts.add(acc);
            }
        }
        insert myAccounts;
        return myAccounts;
    }
    
}
