class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
    @answer = coach_answer(@question)
  end

private


  def coach_answer(question)
    if question == "I am going to work right now!"
      return ""
    elsif question.include?("?")
      return "Silly question, get dressed and go to work!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end

#   def coach_answer_enhanced(question)
#     if question == "I AM GOING TO WORK RIGHT NOW!"
#       return ""
#     elsif question == question.upcase
#       return "I can feel your motivation! #{coach_answer(question)}"
#     else
#       return coach_answer(question)
#     end
#   end
end
