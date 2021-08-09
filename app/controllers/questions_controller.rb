class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question] if params[:question]
    @answer = "I don't care, get dressed and go to work!"
    @answer = 'Silly question, get dressed and go to work!' if params[:question].include? '?'
    @answer = 'Great !' if params[:question].downcase == 'i am going to work'
  end
end
