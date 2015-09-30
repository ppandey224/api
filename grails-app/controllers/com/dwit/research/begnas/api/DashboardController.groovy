package com.dwit.research.begnas.api

class DashboardController {

    def index() {}

    def addQuestions(){

        String question=params.question
        if (question){
            String option1=params.option1
            String option2=params.option2
            String option3=params.option3
            String option4=params.option4

            Integer correct=(params.correct_answer).toInteger()

            Integer subjectId=(params.questionSubject).toInteger()
            def subj=Subject.get(subjectId)

            Question ques=new Question()
            Options opt=new Options()
            CorrectAnswer correctOpt=new CorrectAnswer()

            addToQuestionRel(ques, question, subj)
            addToOptionRel(opt, option1, option2, option3, option4, ques)
            addToCorrectAnswerRel(correctOpt, ques, correct)
        }
    }

    def addToQuestionRel(Question ques, String question, Subject subj){
        ques.question=question
        ques.subject=subj
        ques.save()
    }

    def addToOptionRel (Options opt, String option1, String option2, String option3, String option4, Question ques){
        opt.option1=option1
        opt.option2=option2
        opt.option3=option3
        opt.option4=option4
        opt.question=ques
        opt.save()
    }

    def addToCorrectAnswerRel(CorrectAnswer correctOpt, Question ques, Integer correct){
        correctOpt.question=ques
        correctOpt.correctOption=correct
        correctOpt.save()
    }
}
