package y1;
import java.sql.*;
import java.util.*;

public class MysqlDemo {
	
	static String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
	static String DB_URL = "jdbc:mysql://47.100.235.29:3306/ssms";
	static String username="zjy";
	static String password="zjy123456789";
	Connection con=null;
	Statement st=null;
	PreparedStatement psmt=null;
	public MysqlDemo()
	{
		
		try {
			Class.forName(JDBC_DRIVER);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		try {
			con = DriverManager.getConnection(DB_URL,username,password);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			st=con.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public ResultSet select(String sql) throws ClassNotFoundException, SQLException
	{
		ResultSet rs=st.executeQuery(sql);
		return rs;
	}
	public void update(String sql)
	{
		//i表示受影响的行数，此处不用返回它
		try {
			int i=st.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public ResultSet searchforsafe(String sql,String[] params)
	{
		ResultSet rs=null;
		try {
			psmt=con.prepareStatement(sql);
			for(int i=0;i<params.length;i++) {
				psmt.setString(i+1, params[i]);
			}
			rs=psmt.executeQuery();	
			return rs;
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
			return rs;
		}		
	}
	//添加字符
	public void addMessage(String sql,String[] params) {
		try {
			psmt=con.prepareStatement(sql);
			for(int i=0;i<params.length;i++) {
				psmt.setString(i+1, params[i]);
			}
			psmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
	}
	//添加成绩
	public void addInt(String sql,String[] par,int[] params) {
		try {
			psmt=con.prepareStatement(sql);
			for(int i=0;i<par.length;i++) {
				psmt.setString(i+1, par[i]);
			}
			for(int j=0;j<params.length;j++)
				psmt.setInt(j+2, params[j]);
			psmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
	}
	//查看ResultSet所有元素
	public List convertList(ResultSet rs) throws SQLException{
		List list = new ArrayList();
		ResultSetMetaData md = rs.getMetaData();//获取键名
		int columnCount = md.getColumnCount();//获取行的数量
		while (rs.next()) {
		Map rowData = new HashMap();//声明Map
		for (int i = 1; i <= columnCount; i++) {
		rowData.put(md.getColumnName(i), rs.getObject(i));//获取键名及值
		}
		list.add(rowData);
		}
		return list;
		}
}
