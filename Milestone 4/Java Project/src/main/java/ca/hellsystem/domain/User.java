package ca.hellsystem.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Transient;

@SuppressWarnings("serial")
@Entity
public class User extends GenericDomain{
	
	@Column(length = 30, nullable = false, unique = true)
	private String username;
	
	@Column(length = 80, nullable = false)
	private String name;
	
	@Column(length = 32, nullable = false)
	private String password;
	
	@Column(nullable = false)
	private Character type;
	
	@Column(length = 80, nullable = false)
	private String email;

	
	@Transient
	private String tempPassword;

	public String getUsername() {return username;}
	public void setUsername(String username) {this.username = username;}

	public String getName() {return name;}
	public void setName(String name) {this.name = name;}

	public String getPassword() {return password;}
	public void setPassword(String password) {this.password = password;}

	public Character getType() {return type;}
	public void setType(Character type) {this.type = type;}

	public String getTempPassword() {return tempPassword;}
	public void setTempPassword(String tempPassword) {this.tempPassword = tempPassword;}
	
	public String getEmail() {return email;}
	public void setEmail(String email) {this.email = email;}
}
