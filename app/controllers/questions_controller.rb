class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = ''
    @question = params[:question]
    if @question == 'I am going to work'
      @answer = 'Great!'
    elsif @question.include?('?')
      @answer = 'Stupid question, fuck off and go to work you nonce'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
