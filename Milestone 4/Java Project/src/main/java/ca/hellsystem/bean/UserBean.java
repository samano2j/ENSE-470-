package ca.hellsystem.bean;

import java.io.Serializable;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import javax.faces.event.ActionEvent;

import org.apache.shiro.crypto.hash.SimpleHash;
import org.omnifaces.util.Messages;

import ca.hellsystem.dao.UserDAO;
import ca.hellsystem.domain.User;

@SuppressWarnings("serial")
@ManagedBean
@ViewScoped
public class UserBean implements Serializable{
	private User usuario;
	private List<User> usuarios;

	public User getUsuario() {
		return usuario;
	}

	public void setUsuario(User usuario) {
		this.usuario = usuario;
	}
	
	@PostConstruct
	public void listar(){
		try {
			UserDAO usuarioDAO = new UserDAO();
			usuarios = usuarioDAO.listar();
		}catch (RuntimeException erro){
			Messages.addGlobalError("Ocorreu um erro ao listar os usuarios");
			erro.printStackTrace();
		}
	}
	
	public void novo() {
		usuario = new User();
	}	

	public List<User> getUsuarios() {
		return usuarios;
	}

	public void setUsuarios(List<User> usuarios) {
		this.usuarios = usuarios;
	}

	public void salvar() {
		try{
			UserDAO usuarioDAO = new UserDAO();
			
			SimpleHash hash = new SimpleHash("md5",usuario.getTempPassword());
			usuario.setPassword(hash.toHex());
			usuarioDAO.merge(usuario);
			
			usuario = new User();
			usuarios = usuarioDAO.listar();
			
			Messages.addGlobalInfo("Usuario salvo com sucesso!");
		}catch (RuntimeException erro){		
			Messages.addGlobalError("Ocorreu um erro ao salvar o usuario");
			erro.printStackTrace();
		}
	}
	
	public void excluir(ActionEvent evento){
		try{
			usuario = (User) evento.getComponent().getAttributes().get("usuarioSelecionado");
			
			UserDAO usuarioDAO = new UserDAO();
			usuarioDAO.excluir(usuario);
			
			usuarios = usuarioDAO.listar();
					
			Messages.addGlobalInfo("Usuario deletado com sucesso!");
		}catch (RuntimeException erro){
			Messages.addGlobalError("Ocorreu um erro ao excluir o usuario");
			erro.printStackTrace();
		}
	}
	
	public void editar(ActionEvent evento){
		usuario = (User) evento.getComponent().getAttributes().get("usuarioSelecionado");		
	}
}
