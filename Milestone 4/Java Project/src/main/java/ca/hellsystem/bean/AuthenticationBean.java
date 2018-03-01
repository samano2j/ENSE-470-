package ca.hellsystem.bean;

import java.io.IOException;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;

import org.omnifaces.util.Faces;
import org.omnifaces.util.Messages;

import ca.hellsystem.dao.UserDAO;
import ca.hellsystem.domain.User;

@ManagedBean
@SessionScoped
public class AuthenticationBean {
	private User user;
	private User loggedUser;

	public User getUser() {return user;}
	public void setUser(User user) {this.user = user;}

	public User getLoggedUser() {return loggedUser;}
	public void setLoggedUser(User loggedUser) {this.loggedUser = loggedUser;}

	@PostConstruct
	public void Instantiate(){
		user = new User();
	}
	
	public void SignIn(){
		try{
			UserDAO userDAO = new UserDAO();
			loggedUser = userDAO.autenticar(user.getUsername(), user.getPassword());
			
			if (loggedUser == null){
				Messages.addGlobalError("Invalid user and/or passowrd.");
				return;
			}
			switch(loggedUser.getType()) {
			case 'U':
				Faces.redirect("./pages/request.xhtml");
				break;
			case 'A':
				Faces.redirect("./pages/approverDashboard.xhtml");
				break;
			case 'N':
				Faces.redirect("./pages/analystDashboard.xhtml");
				break;
			default:
				Faces.redirect("./pages/request.xhtml");
				break;
			}
			
		}catch(IOException error){
			error.printStackTrace();
			Messages.addGlobalError("Error redirecting.");
		}
	}
	
	public void logoff(){
		try{			
			FacesContext.getCurrentInstance().getExternalContext().invalidateSession();
			Faces.redirect("./pages/authentication.xhtml");
			Messages.addGlobalInfo("Successful logout.");
			loggedUser = null;
		}catch(IOException error){
			error.printStackTrace();
			Messages.addGlobalError("Error redirecting.");
		}
	}
}
