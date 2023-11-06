package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import principal.DAO.UsuarioDAO;

@WebServlet("/DeleteController")
public class DeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		int id = Integer.parseInt(req.getParameter("idUsuario"));

		try {
			UsuarioDAO usuarioDAO = new UsuarioDAO();
			usuarioDAO.excluirUsuario(id);

			res.sendRedirect("ReadController");
		} catch (Exception e) {

			e.printStackTrace();
		}

	}

}
