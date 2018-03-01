package ca.hellsystem.domain;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@SuppressWarnings("serial")
@Entity
public class SoftwareApprover extends GenericDomain{
	
	@ManyToOne
	@JoinColumn(nullable = false)
	private Software software;
		
	@ManyToOne
	@JoinColumn(nullable = false)
	private User approver;

	public Software getSoftware() {return software;}
	public void setSoftware(Software software) {this.software = software;}

	public User getApprover() {return approver;}
	public void setApprover(User approver) {this.approver = approver;}
}
