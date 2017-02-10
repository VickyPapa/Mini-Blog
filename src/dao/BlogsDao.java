package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet. * ;  
import javax.servlet.http. * ;  
import java.io. * ;  
import java.util. * ;  
import java.lang. * ;  
import java.sql. * ;  

import bean.Blogs;

import tool.DatabaseConn;

public class BlogsDao {
	private DatabaseConn conn = new DatabaseConn();
	private InputStream in = null; //定义输入流\\r  
	public String M_EorrMenage = ""; //定义错误信息变量  
	
	/**
	 * 所有博文列表
	 * @return
	 */
	public ArrayList<String> getBlogsArrayList() {
		ArrayList<String> bl=new ArrayList<String>();
		String sql = "SELECT title FROM blog";
		ResultSet rs = conn.executeQuery(sql);
		try {
			while (rs != null && rs.next())
				bl.add(rs.getString(1));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		conn.close();
		return bl;
	}
	
	/**
	 * 查询下一个bid编号
	 * @param
	 * @return
	 */
	public int getNextbid(){
		int bid = -1;
		String sql = "SELECT max(bid) FROM blog";
		ResultSet rs = conn.executeQuery(sql);
		try {
			if (rs != null && rs.next()) {	
				bid=rs.getInt(1);
				bid=bid+1;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		conn.close();
		return bid;
	}
	
	/**
	 * 查询所有博文
	 * @param bid
	 * @return
	 */
	public Blogs getAllBlogs(String bid){
		Blogs blogs = null;
		blogs = new Blogs();
		String sql = "SELECT * FROM blog WHERE bid = " + bid;
		ResultSet rs = conn.executeQuery(sql);
		try {
			if (rs != null && rs.next()) {	
				blogs.setBid(rs.getInt(1));
				blogs.setTitle(rs.getString(2));
				blogs.setPosttime(rs.getTimestamp(3));
				blogs.setType(rs.getString(4));
				blogs.setContent(rs.getString(5));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		conn.close();
		return blogs;
	}
	
	/**
	 * 删除博文
	 * @param bid
	 */
	public void deleteBlog(String bid){
		String sql = "DELETE FROM blog WHERE bid = " + bid;
		conn.executeUpdate(sql);
		conn.close();
	}	
	
	/**
	 * 添加博文
	 * @param b
	 */
	public int addBlog(Blogs b){
		int i = 0;
		String sql = "INSERT into blog VALUES(" + b.getBid() + ",'" + b.getTitle() + "',  NOW(), '" + b.getType() + "','" + b.getContent() + "')";
		i = conn.executeUpdate(sql);
		conn.close();
		return i;
	}	
	
	/**
	 * 修改博文信息
	 * @param b
	 */
	public int updateBlog(Blogs b){
		int i = 0;
		String sql = "UPDATE blog SET title = '" + b.getTitle() + "', posttime = NOW(), type = '" + b.getType() + "',content = '" + b.getContent() + "' WHERE bid = " + b.getBid();
		i = conn.executeUpdate(sql);
		conn.close();
		return i;
	}	
	
	/**
	 * 返回博文信息
	 * @param bid
	 * @return
	 */
	public Blogs getBlogs(String bid){
		Blogs blogs = new Blogs();
		String sql="SELECT * FROM blog WHERE bid=" + bid;
		ResultSet rs=conn.executeQuery(sql);
		try {
			while(rs.next()){
				blogs.setBid(rs.getInt(1));
				blogs.setTitle(rs.getString(2));
				blogs.setPosttime(rs.getTimestamp(3));
				blogs.setType(rs.getString(4));
				blogs.setContent(rs.getString(5));		
			}
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		conn.close();
		return blogs;
	}
	
}
