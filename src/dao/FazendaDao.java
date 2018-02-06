package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Fazenda;

public class FazendaDao {

	private Connection connection;

	public void setConnection(Connection connection) {
		this.connection = connection;
	}
	
	public void salvar(Fazenda fazenda) throws SQLException{
		
		String sql = 
				"insert into fazenda (nome, registro, cidade, estado, tamanho) " +
						" values (?, ?, ?, ?, ?)";
		PreparedStatement ps = connection.prepareStatement(sql);
		ps.setString(1, fazenda.getNome());
		ps.setString(2, fazenda.getRegistro());
		ps.setString(3, fazenda.getCidade());
		ps.setString(4, fazenda.getEstado());
		ps.setString(5, fazenda.getTamanho());
		ps.execute();
		
	}
	
	
	public List<Fazenda> listar() throws SQLException{
		
		String sql = "select * from fazenda";
		PreparedStatement ps = connection.prepareStatement(sql);
		
		ResultSet rs = ps.executeQuery();
		
		Fazenda fazenda = null;
		List<Fazenda> fazendas = new ArrayList<Fazenda>();
		
		while (rs.next()){
			fazenda = new Fazenda();
			fazenda.setId(rs.getInt("id"));
			fazenda.setCidade(rs.getString("cidade"));
			fazenda.setEstado(rs.getString("estado"));
			fazenda.setNome(rs.getString("nome"));
			fazenda.setTamanho(rs.getString("tamanho"));
			fazendas.add(fazenda);
		}
		
		
		return fazendas;
	}
}