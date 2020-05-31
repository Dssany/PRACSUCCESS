package member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import member.memberDTO;


public class memberDAO {
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String user = "java";
	private String pwd = "1234";
	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public memberDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	public ArrayList<memberDTO> memberView(){
		String sql = "select name,part,rank from member";
		ArrayList<memberDTO> memberlist = new ArrayList<memberDTO>();
		
		try {
			con = DriverManager.getConnection(url,user,pwd);
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
					memberDTO dto = new memberDTO();
					dto.setName(rs.getString("name"));
					dto.setPart(rs.getString("part"));
					dto.setRank(rs.getString("rank"));
					memberlist.add(dto);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return memberlist;
	}
	
	
	public ArrayList<memberDTO> memberInfo(String id){
		String sql = "select * from member where id='" + id + "'" ;
		ArrayList<memberDTO> memberlist = new ArrayList<memberDTO>();
		
		try {
			con = DriverManager.getConnection(url,user,pwd);
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
					memberDTO dto = new memberDTO();
					dto.setId(rs.getString("id"));
					dto.setPw(rs.getString("pw"));
					dto.setName(rs.getString("name"));
					dto.setPart(rs.getString("part"));
					dto.setRank(rs.getString("rank"));
					memberlist.add(dto);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return memberlist;
	}
	
	
	public int loginchk(String id,String pw){
		String sql = "select * from member where id='" + id + "'";
		System.out.println(id);
		System.out.println(pw);
		memberDTO member = new memberDTO();
		int chk =0;
		try {
			con = DriverManager.getConnection(url,user,pwd);
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
					if(id.equals(rs.getString("id")) && pw.equals(rs.getString("pw"))) {
						System.out.println("로그인성공");
			

						return 1;
					}else if(id.equals(rs.getString("id")) && !pw.equals(rs.getString("pw"))) {
						System.out.println("비밀번호가 틀립니다");
						return 2;
					}else {
						System.out.println("아이디가 존재하지 않습니다");
						return 3;
					}
					
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return 3;
		
		
	}
	
	
	public void insert(memberDTO member) {
		String sql = "insert into member values(?,?,?,?,?)";
		
		try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, member.getId());
			ps.setString(2, member.getPw());
			ps.setString(3, member.getName());
			ps.setString(4, member.getPart());
			ps.setString(5, member.getRank());
			ps.executeUpdate();
			
		} catch (Exception e) {		
			e.printStackTrace();
		}
		
	}
	

	
}
