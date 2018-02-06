package controller;

import java.sql.Connection;
import java.util.List;

import javax.servlet.RequestDispatcher;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.FazendaDao;
import dao.UsuarioDao;
import dao.util.Conexao;
import model.Fazenda;
import model.Usuario;

/**
 * Servlet implementation class UsuarioController
 */
@WebServlet("/UsuarioController")
public class UsuarioController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UsuarioController() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void processarRequisicao(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String s = request.getParameter("chave");


		if(s.equals("iniciar_criar_conta")){
			iniciarCriarConta(request, response);
		} else if(s.equals("iniciar_entrar")){
			iniciarEntrar(request, response);
		} else if(s.equals("cadastrar_plataforma")){
			iniciarCadastroPlataformas(request, response);
		} else if(s.equals("iniciar_home")){
			iniciarHome(request, response); 
		} else if(s.equals("iniciar_cadastro_fazenda")){
			iniciarCadastroFazenda(request, response);
		} else if(s.equals("iniciar_cadastro_talhao")){
			iniciarCadastroTalhao(request, response);
		}  else if(s.equals("criar_conta")){
			cadastrar(request, response);
		} else if(s.equals("aposlogin")){
			iniciarFazenda(request, response);
		}
	}

	private void cadastrar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String nome = request.getParameter("nome");
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");
		/*String senha = request.getParameter("password"); */

		Usuario usuario = new Usuario(nome, email, senha);    	
		Connection con = Conexao.conseguirConexao();

		UsuarioDao dao = new UsuarioDao();
		dao.setConnection(con);

		try {
			dao.salvar(usuario);
			request.setAttribute("deucerto", "1");
			RequestDispatcher rd = request.getRequestDispatcher("criarConta.jsp");
			rd.forward(request, response);
		} catch (Exception e) {
			request.setAttribute("deucerto", "0");
			RequestDispatcher rd = request.getRequestDispatcher("criarConta.jsp");
			rd.forward(request, response);
		} 	

	}

	private void iniciarCriarConta(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("criarConta.jsp");
		rd.forward(request, response);
	}

	private void iniciarEntrar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("entrar.jsp");
		rd.forward(request, response);
	}

	private void iniciarCadastroPlataformas(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("cadastroPlataformas.jsp");
		rd.forward(request, response);
	}

	private void iniciarHome(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
		rd.forward(request, response);
	}



	private void iniciarCadastroFazenda(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("cadastroFazenda.jsp");
		rd.forward(request, response);
	}

	private void iniciarCadastroTalhao(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("cadastroTalhao.jsp");
		rd.forward(request, response);
	}

	private void iniciarFazenda(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection con = Conexao.conseguirConexao();

		FazendaDao dao = new FazendaDao();
		dao.setConnection(con);

		try {
			List<Fazenda> fazendas = dao.listar();
			request.setAttribute("fazs",fazendas);
			RequestDispatcher rd = request.getRequestDispatcher("fazenda.jsp");
			rd.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		} 

	}

	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processarRequisicao(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processarRequisicao(request, response);
	}

}
