package ca.hellsystem.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@SuppressWarnings("serial")
@Entity
public class Request extends GenericDomain{
	
	@ManyToOne
	@JoinColumn(nullable = false)
	private Software software;
	
	@ManyToOne
	@JoinColumn(nullable = false)
	private User requester;
	
	@ManyToOne
	@JoinColumn(nullable = false)
	private User approver;
	
	@ManyToOne
	@JoinColumn(nullable = false)
	private User analyst;
	
	@Column(nullable = false)
	private Character status;

	public Software getSoftware() {return software;}
	public void setSoftware(Software software) {this.software = software;}

	public User getRequester() {return requester;}
	public void setRequester(User requester) {this.requester = requester;}

	public User getApprover() {return approver;}
	public void setApprover(User approver) {this.approver = approver;}

	public User getAnalyst() {return analyst;}
	public void setAnalyst(User analyst) {this.analyst = analyst;}

	public Character getStatus() {return status;}
	public void setStatus(Character status) {this.status = status;}
}
