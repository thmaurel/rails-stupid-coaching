class QuestionsController < ApplicationController
  def ask
  end

  def answer
    if params[:question].blank?
      @answer = "I don't care, get dressed and go to work!"
    else
      a = 'Silly question, get dressed and go to work!'
      b = "I don't care, get dressed and go to work!"
      params[:question].include?('?') ? @answer = a : @answer = b
      @answer = 'Great !' if params[:question] == 'I am going to work'
    end
  end
end
