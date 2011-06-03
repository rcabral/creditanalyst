package br.estacio.hermes.util;

import java.util.Calendar;

public class Util {

	public static int diffOfDays(Calendar date1, Calendar date2) {
		// Get date in milliseconds
		long milisecond1 = date1.getTimeInMillis();
		long milisecond2 = date2.getTimeInMillis();

		// Find date difference in milliseconds
		long diffInMSec = milisecond2 - milisecond1;

		// Find date difference in days
		// (24 hours 60 minutes 60 seconds 1000 millisecond)
		int diffOfDays = (int)(diffInMSec / (24 * 60 * 60 * 1000));

		return diffOfDays;

	}
	
	public static int diffOfYears(Calendar startDate, Calendar endDate) {  
		  Calendar date = (Calendar) startDate.clone(); 
		  Calendar date2 = (Calendar) endDate.clone();
		  int yearsBetween = -1;  
		  while (date2.before(date)) {  
			  date2.add(1,Calendar.YEAR);  
			  yearsBetween++;  
		  }  
		  return yearsBetween;  
	}  

}
