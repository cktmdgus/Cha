package com.keduit.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.keduit.domain.BoardVO;
import com.keduit.mapper.BoardMapper;

import lombok.RequiredArgsConstructor;
import lombok.ToString;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@ToString
@RequiredArgsConstructor
public class BoardServiceImpl implements BoardService {
	
	private final BoardMapper mapper;
	
	@Override
	public void register(BoardVO boardVO) {
		log.info("----------register-------" + boardVO);
		
		mapper.insertSelectKey(boardVO);
	}

	@Override
	public BoardVO get(Long bno) {
		log.info("-------get------");
	
		return mapper.read(bno);
	}

	@Override
	public boolean modify(BoardVO boardVO) {
		log.info("------modify-----");		
		
		return mapper.update(boardVO) == 1;
	}

	@Override
	public boolean remove(Long bno) {
		log.info("-----remove-----");
		
		return mapper.delete(bno) == 1;
	}

	@Override
	public List<BoardVO> getList() {
		log.info("-----getList-----");
		
		mapper.getList();
		return mapper.getList();
	}

}
