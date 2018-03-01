package ca.hellsystem.util;

import javax.faces.event.PhaseEvent;
import javax.faces.event.PhaseId;
import javax.faces.event.PhaseListener;

import org.omnifaces.util.Faces;

import ca.hellsystem.bean.AuthenticationBean;
import ca.hellsystem.domain.User;

@SuppressWarnings("serial")
public class AccessControl implements PhaseListener {

	@Override
	public void afterPhase(PhaseEvent event) {
		
		String paginaAtual = Faces.getViewId();
		if (!paginaAtual.contains("authentication.xhtml")){
			AuthenticationBean authenticationBean = Faces.getSessionAttribute("authenticationBean");
			if (authenticationBean == null){
				Faces.navigate("/pages/authentication.xthml");
				return;
			}
			User user = authenticationBean.getLoggedUser(); 
			if (user == null){
				Faces.navigate("/pages/authentication.xthml");
				return;
			}
		}
	}

	@Override
	public void beforePhase(PhaseEvent event) {}

	@Override
	public PhaseId getPhaseId() {
		return PhaseId.RESTORE_VIEW;
	}

}
