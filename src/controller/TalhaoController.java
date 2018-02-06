package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TalhaoDao;
import dao.util.Conexao;
import model.Talhao;

/**
 * Servlet implementation class TalhaoController
 */
@WebServlet("/TalhaoController")
public class TalhaoController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public TalhaoController() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void processarRequisicao(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String s = request.getParameter("chave");

		if(s.equals("iniciar_cadastro_talhao")) {
			cadastrar(request, response);
		}else if(s.equals("iniciar_home")){
			iniciarHome(request, response);
		}
	}

	private void cadastrar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nome = request.getParameter("nome");
		String localizacao = request.getParameter("localizacao");
		String tipo = request.getParameter("tipo");

		Talhao talhao = new Talhao(nome, localizacao, tipo);    	
		Connection con = Conexao.conseguirConexao();

		TalhaoDao dao = new TalhaoDao();
		dao.setConnection(con);

		try {
			dao.salvar(talhao);
			request.setAttribute("deucerto", "1");
			RequestDispatcher rd = request.getRequestDispatcher("talhao.jsp");
			rd.forward(request, response);
		} catch (SQLException e) {
			request.setAttribute("deucerto", "0");
			RequestDispatcher rd = request.getRequestDispatcher("CadastraTalhao.jsp");
			rd.forward(request, response);
		}
	} 

	private void iniciarHome(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
		rd.forward(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processarRequisicao(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processarRequisicao(request, response);
	}

}
