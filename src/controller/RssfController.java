package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.RssfDao;
import model.RssfDados;
import serial.RssfUsb;

/**
 * Servlet implementation class RssfController
 */
@WebServlet("/RssfController")
public class RssfController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RssfController() {
		super();
		// TODO Auto-generated constructor stub
	}

	//Funcao responsavel por abrir a porta serial COM4 e receber aos dados e armazenar no Banco de dados
	public void RecebeDados() {
		RssfUsb rssfUsb = new RssfUsb("COM4");

		Thread thread = new Thread(){
			@Override
			public void run() {
				rssfUsb.initialize();

				while (true) {  

					String[] dados = rssfUsb.read().split(";\\s");

					//   lbDados.setText(arduinoSerial.read());

					if (rssfUsb.read() != null) {
						RssfDao rssfDao = new RssfDao();
						RssfDados rssfDados = new RssfDados();
						SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy");

						try {
							rssfDados.setSensorTemperatura(Double.parseDouble(dados[0]));
							rssfDados.setSensorUmidade(Double.parseDouble(dados[1]));
							rssfDados.setSensorUltrassonico(Double.parseDouble(dados[2]));
							rssfDados.setSensorAnemometro(Double.parseDouble(dados[3]));
							rssfDados.setGpsLongitude(Double.parseDouble(dados[4]));
							rssfDados.setGpsLatitude(Double.parseDouble(dados[5]));
							rssfDados.setGpsVelocidade(Double.parseDouble(dados[6]));
							rssfDados.setGpsDatahora(formato.parse(dados[7]));
		

							rssfDao.salvar(rssfDados);
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
						catch (ParseException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					}
				}            
			}      
		};

		thread.start();

	}
	//************************************************************************************************************
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
