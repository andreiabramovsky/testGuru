class Admin::QuestionsController < Admin::BaseController

  before_action :find_question, only: %i[show destroy]
  before_action :find_test, only: %i[create]

  rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_question_not_found

  def show; end

  def new
    @question = @test.questions.build
  end

  def edit; end

  def create
    @question = @test.questions.build(question_params)

    if @question.save
      redirect_to @question, notice: 'Question was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @question.destroy

    render plain: 'Question was successfully deleted'
  end

  private

  def find_test
    @test = Test.find(params[:test_id])
  end

  def find_question
    @question = Question.find(params[:id])
  end

  def question_params
    params.require(:question).permit(:body)
  end

  def rescue_with_question_not_found
    render plain: "Question not found."
  end  

end
