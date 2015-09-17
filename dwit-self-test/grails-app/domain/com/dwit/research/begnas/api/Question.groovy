package com.dwit.research.begnas.api

class Question {

    String questionDetail
	Boolean isSkipped



	static hasMany = [options: Options]
	//Boolean enabled

	static constraints={
		questionDetail(nullable: false, unique: true)
		isSkipped()
	}

	String toString(){
		return "${questionDetail}"
	}
	
}
