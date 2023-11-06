package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import principal.DAO.UsuarioDAO;
import model.Usuario;

@WebServlet("/UpdateController")
public class UpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("idUsuario"));
		
		try {
			UsuarioDAO usuarioDAO = new UsuarioDAO();
			Usuario usuarios = usuarioDAO.buscarUsuario(id);
			
			req.setAttribute("usuario", usuarios);
			
			RequestDispatcher rd = req.getRequestDispatcher("atualizarusuario.jsp");
			rd.forward(req, res);
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		
		
		
	}

	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		try {
			Usuario usuario = new Usuario();
			usuario.setIdUsuario(Integer.parseInt(req.getParameter("idUsuario")));
			usuario.setNome(req.getParameter("nome"));
			usuario.setLogin(req.getParameter("login"));
			usuario.setSenha(req.getParameter("senha"));
			usuario.setPermissaoDeAcesso(req.getParameter("permissaoDeAcesso"));
			
			
			UsuarioDAO usuarioDAO = new UsuarioDAO();
			usuarioDAO.atualizarUsuario(usuario);
			
			res.sendRedirect("ReadController");
		} catch (Exception e) {
			
		}
		
		
	}

}
