package com.cafe24.suhajin07.Scheduler;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SchedulerController {
	
	
	@RequestMapping(value = "/addScheduler", method = RequestMethod.GET)
	public String addScheduler() {
		System.out.println("Scheduler_InsertForm 폼 요청");
		return "Scheduler/Scheduler_InsertForm";

	}
	
	@RequestMapping(value = "/Scheduler", method = RequestMethod.GET)
	public String calendar(Model model, HttpServletRequest request, Scheduler dateData) {
		System.out.println("Scheduler Controller");
		Calendar cal = Calendar.getInstance();
		Scheduler calendarData;
		// 검색 날짜
		if (dateData.getDate().equals("") && dateData.getMonth().equals("")) {
			dateData = new Scheduler(String.valueOf(cal.get(Calendar.YEAR)), String.valueOf(cal.get(Calendar.MONTH)),
					String.valueOf(cal.get(Calendar.DATE)), null);
		}
		// 검색 날짜 end

		Map<String, Integer> today_info = dateData.today_info(dateData);
		List<Scheduler> dateList = new ArrayList<Scheduler>();

		// 실질적인 달력 데이터 리스트에 데이터 삽입 시작.
		// 일단 시작 인덱스까지 아무것도 없는 데이터 삽입
		for (int i = 1; i < today_info.get("start"); i++) {
			calendarData = new Scheduler(null, null, null, null);
			dateList.add(calendarData);
		}

		// 날짜 삽입
		for (int i = today_info.get("startDay"); i <= today_info.get("endDay"); i++) {
			if (i == today_info.get("today")) {
				calendarData = new Scheduler(String.valueOf(dateData.getYear()), String.valueOf(dateData.getMonth()),
						String.valueOf(i), "today");
			} else {
				calendarData = new Scheduler(String.valueOf(dateData.getYear()), String.valueOf(dateData.getMonth()),
						String.valueOf(i), "normal_date");
			}
			dateList.add(calendarData);
		}

		// 달력 빈곳 빈 데이터로 삽입
		int index = 7 - dateList.size() % 7;

		if (dateList.size() % 7 != 0) {

			for (int i = 0; i < index; i++) {
				calendarData = new Scheduler(null, null, null, null);
				dateList.add(calendarData);
			}
		}
		System.out.println(dateList);

		// 배열에 담음
		model.addAttribute("dateList", dateList); // 날짜 데이터 배열
		model.addAttribute("today_info", today_info);
		return "Scheduler/Scheduler";
	}
}
