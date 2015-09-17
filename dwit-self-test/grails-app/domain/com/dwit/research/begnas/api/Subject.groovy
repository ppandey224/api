package com.dwit.research.begnas.api

class Subject {

    static constraints = {
    }
	
	String subjectName
    static hasMany=[questions:Question]
}
