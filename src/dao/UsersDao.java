package dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import bean.Users;

import tool.DatabaseConn;

public class UsersDao {
	private DatabaseConn conn = new DatabaseConn();
	
	/**
	 * ��ѯ��¼�û�
	 * @param name
	 * @return
	 */
	public String getLoginUser(String name){
		String pd = null;
		String sql = "SELECT password FROM users WHERE name = '" + name + "'";
		ResultSet rs = conn.executeQuery(sql);		
		try {
			if(rs != null && rs.next()){
				pd = rs.getString(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();			
		}
		conn.close();
		return pd;
	}
	
	/**
	 * �û����Ƿ��Ѿ�����
	 * @param name
	 * @return
	 */
	public int getUserName(String name){
		int i = 0;
		String sql = "SELECT name FROM users WHERE name = '" + name + "'";
		ResultSet rs = conn.executeQuery(sql);
		try {
			if(rs.next()){
				i = 1;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		conn.close();
		return i;
	}
	
	/**
	 * ע���û�
	 * @param u
	 */
	public void insertUser(Users u){
		String sql = "INSERT INTO users VALUES('" + u.getName() + "','" + u.getPassword()  + "','" + u.getMail() + "',1)";
		conn.executeUpdate(sql);
		conn.close();
	}
	
	
	/**
	 * ɾ���û�
	 * @param username
	 */
	public void deleteUser(String name){
		String sql = "DELETE FROM users WHERE username = '" + name + "'";
		conn.executeUpdate(sql);
		conn.close();
	}
	
	/**
	 * �޸��û���Ϣ
	 * @param u
	 * @return
	 */
	public int updateUser(Users u){
		int i = 0;
		String sql = "UPDATE users SET password = '" + u.getPassword() + "',mail = '" + u.getMail() + "',type = '" + u.getType() + "' WHERE name = '" + u.getName() + "'";
		i = conn.executeUpdate(sql);
		conn.close();
		return i;
	}		

}
