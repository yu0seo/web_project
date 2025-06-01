package java_src;
public class login_proc {
	private String userID;
	private String userPW;
	private String userNAME;
	private String userMAIL;
	private String userBIRTH;
	private String userQST;
	
    public String getUserID(){
        return userID;
    }
    public void setUserID(String userID){
        this.userID = userID;
    }

    public String getUserPW(){
        return userPW;
    }
    public void setUserPW(String userPW){
        this.userPW = userPW;
    }
    
    public String getUserNAME(){
        return userNAME;
    }
    public void setUserNAME(String userNAME){
        this.userNAME = userNAME;
    }

    public String getUserMAIL(){
        return userMAIL;
    }
    public void setUserMAIL(String userMAIL){
        this.userMAIL = userMAIL;
    }
    
    public String getUserBIRTH() {
    	return userBIRTH;
    }
    public void setUserBIRTH(String userBIRTH) {
    	this.userBIRTH = userBIRTH;
    }
    
    public String getUserQST() {
    	return userQST;
    }
    public void setUserQST(String userQST) {
    	this.userQST = userQST;
    }
}
