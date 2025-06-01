package java_src;
public class login_proc {
	private String id;      
	private String pwd;     
	private String name;    
	private String email;   
	private String birth;   
	private String question; 
	
    public String getID(){
        return id;
    }
    public void setID(String id){
        this.id = id;
    }

    public String getPWD(){
        return pwd;
    }
    public void setPWD(String pwd){
        this.pwd = pwd;
    }
    
    public String getNAME(){
        return name;
    }
    public void setNAME(String name){
        this.name = name;
    }

    public String getEMAIL(){
        return email;
    }
    public void setEMAIL(String email){
        this.email = email;
    }
    
    public String getBIRTH() {
    	return birth;
    }
    public void setBIRTH(String birth) {
    	this.birth = birth;
    }
    
    public String getQUESTION() {
    	return question;
    }
    public void setQUESTION(String question) {
    	this.question = question;
    }
}
