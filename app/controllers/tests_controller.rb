class TestsController < ApplicationController

  before_action :set_test, only: %i[ show edit ]

  def index
    @tests = Test.all
  end

  def show
    @questions = @test.questions
  end

  def new
    @test = Test.new
  end

  def edit; end

  private

  def set_test
    @test = Test.find(params[:id])
  end
  
end
