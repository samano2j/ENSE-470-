package ca.hellsystem.domain;

import javax.persistence.Column;
import javax.persistence.Entity;

@SuppressWarnings("serial")
@Entity
public class Software extends GenericDomain{
	
	@Column(length = 100, nullable = false, unique = true)
	private String name;
	
	@Column(length = 10, nullable = false)
	private String acronym;

	public String getName() {return name;}
	public void setName(String name) {this.name = name;}

	public String getAcronym() {return acronym;}
	public void setAcronym(String acronym) {this.acronym = acronym;}
}
