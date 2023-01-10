package com.keduit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.keduit.domain.BoardVO;

public interface BoardMapper {
//	   @Select("select * from tbl_board order by bno desc")
	   public List<BoardVO> getList();
	   
//	   @Select("select sysdate from dual")
	   public String getTime();
	   
	   public void insert(BoardVO board);
	   
	   public void insertSelectKey(BoardVO board);
	   
	   public BoardVO read(Long bno);
	   
	   public int delete(Long bno); 
	   
	   public int update(BoardVO board);
}
