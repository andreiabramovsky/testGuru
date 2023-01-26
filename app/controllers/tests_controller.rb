class TestsController < ApplicationController
  def index
    
  end

  def show
    @questions = @test.questions
  end

  def new
    @test = Test.new
  end

  def edit
  end
end
