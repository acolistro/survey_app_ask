class QuestionsController < ApplicationController

  def new
    @ask = Ask.find(params[:ask_id])
    @question = @ask.questions.new
    render :new
  end

  def create
    @ask = Ask.find(params[:ask_id])
    @question = @ask.questions.new(question_params)
    if @question.save
      redirect_to ask_path(@ask)
    else
      render :new
    end
  end

  def edit
    @ask = Ask.find(params[:ask_id])
    @question = Question.find(params[:id])
    render :edit
  end

  def show
    @ask = Ask.find(params[:ask_id])
    @question = Question.find(params[:id])
    render :show
  end

  def update
    @question = Question.find(params[:id])
    if @question.update(question_params)
      redirect_to ask_path(@question.ask)
    else
      render :edit
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to ask_path(@question.ask)
  end

  private
  def question_params
    params.require(:question).permit(:text, :answer_1, :answer_2, :answer_3, :answer_4)
  end

end
