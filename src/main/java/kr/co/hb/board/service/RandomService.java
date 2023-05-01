package kr.co.hb.board.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.hb.board.dao.RandomDAO;
import kr.co.hb.board.dto.RandomDTO;

@Service
public class RandomService {

	@Autowired RandomDAO dao;
	Logger logger = LoggerFactory.getLogger(this.getClass());
	public ArrayList<RandomDTO> profileList(HashMap<String, String> params) {
	
		logger.info("검색 조건 : " + params);
		
		return dao.profileList(params);

	}
	
}
