/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import utils.Conexao;

public class Cliente {
    private int idcliente;
    private String cpfcliente;
    private String nome;
    private String email;
    private String numeroCartao;
    
    
    
    public boolean salvar(){
       String sql = "insert into cliente(cpfcliente, email, nome, numeroCartao)";
                  sql += "values(?,?,?,?)";
       Connection con = Conexao.conectar();
       
       try {
           PreparedStatement stm = con.prepareStatement(sql);
           stm.setString(1, this.cpfcliente);
           stm.setString(2, this.email);
           stm.setString(3, this.nome);
           stm.setString(4, this.numeroCartao);
           
           stm.execute();           
       } catch (SQLException ex) {
           System.out.println("Erro: " + ex.getMessage());
           return false;
       }        
       return true;
   }

    public boolean alterar(){
       Connection con = Conexao.conectar();
       String sql = "update cliente set ";
              sql +="cpfcliente = ?,";
              sql +="nome = ?,";
              sql +="email = ?,";
              sql +="numeroCartao = ?";
              sql +=" where idcliente = ?";
       try {
           PreparedStatement stm = con.prepareStatement(sql);
           stm.setString(1, this.cpfcliente);
           stm.setString(2, this.nome);
           stm.setString(3, this.email);
           stm.setString(4, this.numeroCartao);
           stm.setInt(5, this.getIdcliente());
           
           
           stm.execute();           
       } catch (SQLException ex) {
           System.out.println("Erro: " + ex.getMessage());
           return false;
       }        
       return true;
   } 
    
    
    public Cliente consultar(int idcliente){
      Connection con = Conexao.conectar();
      String sql = "select idcliente, cpfcliente, nome, email, numeroCartao"
                 + " from cliente where idcliente = ?";
      Cliente cliente = null;
       try {
           PreparedStatement stm = con.prepareStatement(sql);
           stm.setInt(1, idcliente);
           ResultSet rs = stm.executeQuery();
           if(rs.next()){
             cliente = new Cliente();
             cliente.setIdcliente(rs.getInt("idcliente"));
             cliente.setCpfcliente(rs.getString("cpfcliente"));
             cliente.setNome(rs.getString("nome"));
             cliente.setEmail(rs.getString("email"));
             cliente.setNumeroCartao(rs.getString("numeroCartao"));            
           }
           
       } catch (SQLException ex) {
           System.out.println("Erro: " + ex.getMessage());
       }      
     return cliente;  
   }  
    public List<Cliente> consultar() throws SQLException{
        List<Cliente> lista = new ArrayList<>();
      
        Connection con = Conexao.conectar();
        String sql = "select idcliente, cpfcliente, nome, email,"
              + " numerocartao"
              + " from cliente";
      
       try {
           PreparedStatement stm = con.prepareStatement(sql);
           ResultSet rs = stm.executeQuery();
           
           while(rs.next()){
             Cliente cliente = new Cliente();
             cliente.setIdcliente(rs.getInt("idcliente"));
             cliente.setCpfcliente(rs.getString("cpfcliente"));
             cliente.setNome(rs.getString("nome"));
             cliente.setEmail(rs.getString("email"));
             cliente.setNumeroCartao(rs.getString("numerocartao"));
            
             lista.add(cliente);
            }
                
        } catch (SQLException ex) {
           System.out.println("Erro: " + ex.getMessage());
        }      
        return lista;
   }
    public boolean excluir(){
       Connection con = Conexao.conectar();
       String sql = "delete from cliente ";
              sql +=" where idcliente = ?";
       try {
           PreparedStatement stm = con.prepareStatement(sql);
           stm.setInt(1, this.idcliente);
           stm.execute();           
       } catch (SQLException ex) {
           System.out.println("Erro: " + ex.getMessage());
           return false;
       }        
       return true;
   }
  
    
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getNumeroCartao() {
        return numeroCartao;
    }

    public void setNumeroCartao(String numeroCartao) {
        this.numeroCartao = numeroCartao;
    }

    public int getIdcliente() {
        return idcliente;
    }

    public void setIdcliente(int idcliente) {
        this.idcliente = idcliente;
    }

    public String getCpfcliente() {
        return cpfcliente;
    }

    public void setCpfcliente(String cpfcliente) {
        this.cpfcliente = cpfcliente;
    }
   
}