package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.FazendaDao;
import dao.PlataformaDao;
import dao.RssfDao;
import dao.util.Conexao;
import model.Fazenda;
import model.Plataforma;
import model.RssfDados;


/**
 * Servlet implementation class PlataformaController
 */
@WebServlet("/PlataformaController")
public class PlataformaController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public PlataformaController() {
		super();
		// TODO Auto-generated constructor stub
	}
	protected void processarRequisicao(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String s = request.getParameter("chave");

		if(s.equals("cadastro_plataforma")){
			cadastrar(request, response);
		}else if(s.equals("iniciar_plataforma")) {
			iniciarPlataforma(request, response);
		}else if(s.equals("alterar")) {
			alterar(request, response);
		}else if(s.equals("deletar")) {
			deletar(request, response);
		}else if(s.equals("dados_climaticos")) {
			dadosClimaticos(request, response);
		}

	}



	private void cadastrar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String localizacao = request.getParameter("localizacao");

		Plataforma plataforma = new Plataforma(localizacao);

		Connection con = Conexao.conseguirConexao();
		PlataformaDao dao = new PlataformaDao();
		dao.setConnection(con);

		try {
			dao.salvar(plataforma);
			RequestDispatcher rd = request.getRequestDispatcher("talhao.jsp");
			rd.forward(request, response);
		} catch (Exception e) {
			request.setAttribute("deucerto", "0");
			RequestDispatcher rd = request.getRequestDispatcher("cadastroPlataformas.jsp");
			rd.forward(request, response);
		} 	
	}

	protected void iniciarPlataforma(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection con = Conexao.conseguirConexao();
		PlataformaDao plataformaDao = new PlataformaDao();
		plataformaDao.setConnection(con);


		try {
			List<Plataforma> listPlataforma = plataformaDao.listar();
			request.setAttribute("plataform", listPlataforma);
			RequestDispatcher rd = request.getRequestDispatcher("plataforma.jsp");
			rd.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}

	protected void alterar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		long idPlataforma = Long.parseLong(request.getParameter("id_plataforma"));

		Connection con = Conexao.conseguirConexao();

		PlataformaDao plataformaDao = new PlataformaDao();
		plataformaDao.setConnection(con);

		try {
			plataformaDao.alterar(idPlataforma);
			RequestDispatcher rd = request.getRequestDispatcher("plataforma.jsp");
			rd.forward(request, response);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}


	protected void deletar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		long idPlataforma = Long.parseLong(request.getParameter("id_plataforma"));

		Connection con = Conexao.conseguirConexao();

		PlataformaDao plataformaDao = new PlataformaDao();
		plataformaDao.setConnection(con);

		try {
			plataformaDao.deletar(idPlataforma);
			RequestDispatcher rd = request.getRequestDispatcher("plataforma.jsp");
			rd.forward(request, response);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void dadosClimaticos(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection con = Conexao.conseguirConexao();
		RssfDao rssfDao = new RssfDao();
		rssfDao.setConnection(con);


		try {
			List<RssfDados> listDados = rssfDao.listarDados();
			request.setAttribute("rssfDados", listDados);
			RequestDispatcher rd = request.getRequestDispatcher("dadosClimaticos.jsp");
			rd.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processarRequisicao(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

}
