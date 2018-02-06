package controller;

import java.sql.Connection;
import java.util.List;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.FazendaDao;
import dao.TalhaoDao;
import dao.util.Conexao;
import model.Fazenda;
import model.Talhao;

/**
 * Servlet implementation class FazendaController
 */
@WebServlet("/FazendaController")
public class FazendaController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FazendaController() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void processarRequisicao(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String s = request.getParameter("chave");

		if(s.equals("cadastro_fazenda")){
			cadastrar(request, response);
		} else if(s.equals("iniciar_talhao")){
			iniciarTalhao(request, response);
		} else if(s.equals("iniciar_fazenda")){
			iniciarFazenda(request, response);
		} 

	}

	// http://localhost:8080/Deriva/FazendaControle?chave=iniciar_fazenda

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

	private void iniciarTalhao(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println(request.getParameter("id_fazenda"));
		int idFazenda = Integer.parseInt(request.getParameter("id_fazenda"));

		Connection con = Conexao.conseguirConexao();
		TalhaoDao talhaoDao = new TalhaoDao();
		talhaoDao.setConnection(con);

		try {					
			Fazenda fazenda = talhaoDao.buscarFazenda(idFazenda);
			request.setAttribute("fazenda",fazenda);
			
			List<Talhao> talhaos =  talhaoDao.listar(idFazenda); 
			request.setAttribute("talhoes",talhaos);
			
			RequestDispatcher rd = request.getRequestDispatcher("talhao.jsp");
			rd.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private void cadastrar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String nome = request.getParameter("nome");
		String registro = request.getParameter("registro");
		String cidade = request.getParameter("cidade");
		String estado = request.getParameter("estado");
		String tamanho = request.getParameter("tamanho");

		Fazenda fazenda = new Fazenda(nome, registro, cidade, estado, tamanho);    	
		Connection con = Conexao.conseguirConexao();

		FazendaDao dao = new FazendaDao();
		dao.setConnection(con);

		try {
			dao.salvar(fazenda);
			List<Fazenda> fazendas = dao.listar();
			request.setAttribute("fazs",fazendas);
			RequestDispatcher rd = request.getRequestDispatcher("fazenda.jsp");
			rd.forward(request, response);
		} catch (Exception e) {
			request.setAttribute("deucerto", "0");
			RequestDispatcher rd = request.getRequestDispatcher("cadastroFazenda.jsp");
			rd.forward(request, response);
		} 	


	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processarRequisicao(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processarRequisicao(request, response);
	}

}