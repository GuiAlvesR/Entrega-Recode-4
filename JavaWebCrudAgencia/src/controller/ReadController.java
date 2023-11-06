package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import principal.DAO.UsuarioDAO;
import model.Usuario;

@WebServlet("/ReadController")
public class ReadController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		try {
			UsuarioDAO usuarioDAO = new UsuarioDAO();
			List<Usuario> usuarios = usuarioDAO.listarUsuarios();
			req.setAttribute("usuario", usuarios);
			
			RequestDispatcher rd = req.getRequestDispatcher("listagemdeusuarios.jsp");
			rd.forward(req, res);
			
			usuarioDAO.fecharConexao();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
