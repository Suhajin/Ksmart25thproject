package com.cafe24.suhajin07.Action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ActionService {

	@Autowired
	ActionDao actionDao;
	
	/*public void addAction(Action action) {
		actionDao.insertAction(action);
	}*/
}
