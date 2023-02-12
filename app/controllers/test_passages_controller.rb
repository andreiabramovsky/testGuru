class TestPassagesController < ApplicationController

  before_action :authenticate_user!
  before_action :set_test_passage, only: %i[ result show update ]

  def show; end

  def result; end

  def update
    @test_passage.accept!(params[:answer_ids])

    if @test_passage.completed?
      TestsMailer.completed_test(@test_passage).deliver_now
      redirect_to result_test_passage_path(@test_passage)
    else
      render :show
    end
  end

end
