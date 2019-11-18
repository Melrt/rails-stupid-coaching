class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @ask = params[:question]

    if @ask == 'I am going to work' # => http://localhost:3000/answer?question=I+am+going+to+work
      @answer = 'Great!'
    elsif @ask.include?('?') # => http://localhost:3000/answer?question=%3F
      # "Silly question, get dressed and go to work!"
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
