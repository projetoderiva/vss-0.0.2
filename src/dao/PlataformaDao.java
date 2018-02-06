package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.sun.corba.se.spi.orbutil.fsm.Guard.Result;

import model.Fazenda;
import model.Plataforma;
import model.Talhao;
import sun.security.action.GetIntegerAction;

public class PlataformaDao {
	private Connection connection;

	public void setConnection(Connection connection) {
		this.connection = connection;
	}

	public void salvar(Plataforma plataforma) throws SQLException{

		String sql = 
				"insert into plataforma (localizacao, data) " +
						" values (?, ?)";
		PreparedStatement ps = connection.prepareStatement(sql);

		ps.setString(1, plataforma.getLocalizacao());
		//ps.setDate(2, (Date) plataforma.getDataInstalacao().getTime());	
		ps.execute();

	}

	public List<Plataforma>listar() throws SQLException{
		
		String sql = "select * from plataforma";
		PreparedStatement ps = connection.prepareStatement("sql");
		
	
		
		ResultSet rs = ps.executeQuery();
		
		Plataforma plataforma = null;
		List<Plataforma> listPlataforma = new ArrayList<>();
		
		while(rs.next()) {
			plataforma = new Plataforma();
			plataforma.setId(rs.getInt("id"));
			plataforma.setLocalizacao(rs.getString("localizacao"));
			listPlataforma.add(plataforma);
		}
		return listPlataforma;
	}
	
	public void alterar (long id) throws SQLException {
		String sql = "update plataforma set localizacao = ? where id = ?";
		PreparedStatement ps = connection.prepareStatement(sql);
				
		Plataforma plataforma = new Plataforma();
		ps.setString(1, plataforma.getLocalizacao());
		ps.execute();
				
	}

	public void deletar(long id) throws SQLException {
		
		String sql = "delete from plataforma where id =?";
		PreparedStatement ps = connection.prepareStatement(sql);
		
		Plataforma plataforma = new Plataforma();
		ps.setLong(1, plataforma.getId());
		ps.execute();
		ps.close();
		
	}

}
