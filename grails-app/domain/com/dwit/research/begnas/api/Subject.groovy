package com.dwit.research.begnas.api

class Subject {

    String subject

    static constraints = {
        subject (unique:true)
    }
}
