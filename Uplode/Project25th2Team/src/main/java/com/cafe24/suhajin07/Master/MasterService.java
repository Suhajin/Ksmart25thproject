package com.cafe24.suhajin07.Master;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MasterService {


	@Autowired
	private MasterDao masterdao;

	public int listCountCriteria(Criteria cri) throws Exception {

		return masterdao.countPaging(cri);
	}
	

}
