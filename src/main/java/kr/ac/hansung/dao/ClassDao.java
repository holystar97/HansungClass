package kr.ac.hansung.dao;

import java.sql.ResultSet;

import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import kr.ac.hansung.model.ClassInfo;


@Component("classDao")
public class ClassDao {

	private JdbcTemplate jdbcTemplate;

	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	public int getRowCount() {
		String sqlStatement = "select count(*) from class";
		return jdbcTemplate.queryForObject(sqlStatement, Integer.class);

	}

	// query and return a single object
	public ClassInfo getClass(String name) {

		String sqlStatement = "select * from class where name=?";
		return jdbcTemplate.queryForObject(sqlStatement, new Object[] { name },
				new RowMapper<ClassInfo>() {

			@Override
			public ClassInfo mapRow(ResultSet rs, int rowNum) throws SQLException {

				ClassInfo ClassInfo = new ClassInfo();

				ClassInfo.setCno(rs.getInt("cno"));
				ClassInfo.setYear(rs.getInt("year"));
				ClassInfo.setSemester(rs.getInt("semester"));
				ClassInfo.setName(rs.getString("name"));
				ClassInfo.setClassfication(rs.getString("classfication"));
				ClassInfo.setProf(rs.getString("prof"));
				ClassInfo.setAmount(rs.getInt("amount"));
				
				return ClassInfo;

			}
		});
	}

	//query and return multiple objects
	// cRud Method
	public List<ClassInfo> getClasses() {

		String sqlStatement = "select * from class";
		return jdbcTemplate.query(sqlStatement, new RowMapper<ClassInfo>() {

			@Override
			public ClassInfo mapRow(ResultSet rs, int rowNum) throws SQLException {

				ClassInfo ClassInfo = new ClassInfo();

				ClassInfo.setCno(rs.getInt("cno"));
				ClassInfo.setYear(rs.getInt("year"));
				ClassInfo.setSemester(rs.getInt("semester"));
				ClassInfo.setName(rs.getString("name"));
				ClassInfo.setClassfication(rs.getString("classfication"));
				ClassInfo.setProf(rs.getString("prof"));
				ClassInfo.setAmount(rs.getInt("amount"));

				return ClassInfo;

			}
		});
	}
	
	public List<ClassInfo> getCertainClasses(int year, int semester) {

		String sqlStatement = "select * from class where year=? and semester=?";
		return jdbcTemplate.query(sqlStatement,new Object[] {year, semester}, new RowMapper<ClassInfo>() {
			
			@Override
			public ClassInfo mapRow(ResultSet rs, int rowNum) throws SQLException {

				ClassInfo ClassInfo = new ClassInfo();

				ClassInfo.setCno(rs.getInt("cno"));
				ClassInfo.setYear(rs.getInt("year"));
				ClassInfo.setSemester(rs.getInt("semester"));
				ClassInfo.setName(rs.getString("name"));
				ClassInfo.setClassfication(rs.getString("classfication"));
				ClassInfo.setProf(rs.getString("prof"));
				ClassInfo.setAmount(rs.getInt("amount"));

				return ClassInfo;

			}
		});
	}
	
	public boolean insert(ClassInfo ClassInfo) {
		
		int year = ClassInfo.getYear();
		int semester = ClassInfo.getSemester();
		String name = ClassInfo.getName();
		String classfication = ClassInfo.getClassfication();
		String prof = ClassInfo.getProf();
		int amount = ClassInfo.getAmount();
		
		String sqlStatement = "insert into class (year, semester, name,classfication, prof, amount) values (?, ?, ?, ?, ?, ?)";
		
		return (jdbcTemplate.update(sqlStatement, new Object[] {year, semester, name, classfication, prof, amount}) == 1);
		}

	

}
