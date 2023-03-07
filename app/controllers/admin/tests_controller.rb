class Admin::TestsController < Admin::BaseController
  
  before_action :set_test, only: %i[ show edit update destroy start ]

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

  def create
    @test = current_user.authored_tests.new(test_params)

    if @test.save
      redirect_to admin_test_path(@test), notice: t('.success')
    else
      render :new, status: :unprocessable_entity
    end

    create_gist(@test)
  end

  def update
    if @test.update(test_params)
      redirect_to admin_test_path(@test), notice: t('.update')
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @test.destroy
    redirect_to admin_tests_path, notice: t('.delete')
  end

  private

  def set_test
    @test = Test.find(params[:id])
  end
  
  def test_params
    params.require(:test).permit(:title, :level, :category_id)
  end

  def create_gist(test)
    client = Octokit::Client.new(:access_token => ENV['GITHUB_ACCESS_TOKEN'])
    responce = client.create_gist({description: "string", files: {"file1.txt": {content: "test.title"}}})
    
  end
end


=begin
  {:url=>"https://api.github.com/gists/e32457bc05756096ec055eb0f357fcb7",
  :forks_url=>
   "https://api.github.com/gists/e32457bc05756096ec055eb0f357fcb7/forks",
  :commits_url=>
   "https://api.github.com/gists/e32457bc05756096ec055eb0f357fcb7/commits",
  :id=>"e32457bc05756096ec055eb0f357fcb7",
  :node_id=>"G_kwDOA8VDnNoAIGUzMjQ1N2JjMDU3NTYwOTZlYzA1NWViMGYzNTdmY2I3",
  :git_pull_url=>"https://gist.github.com/e32457bc05756096ec055eb0f357fcb7.git",
  :git_push_url=>"https://gist.github.com/e32457bc05756096ec055eb0f357fcb7.git",
  :html_url=>"https://gist.github.com/e32457bc05756096ec055eb0f357fcb7",
  :files=>
   {:"file1.txt"=>
     {:filename=>"file1.txt",
      :type=>"text/plain",
      :language=>"Text",
      :raw_url=>
       "https://gist.githubusercontent.com/andreiabramovsky/e32457bc05756096ec055eb0f357fcb7/raw/e103c423c10a3a6cf7f21efa2f162ad2f138c15d/file1.txt",
      :size=>10,
      :truncated=>false,
      :content=>"test.title"}},
  :public=>false,
  :created_at=>2023-03-05 21:01:43 UTC,
  :updated_at=>2023-03-05 21:01:43 UTC,
  :description=>"string",
  :comments=>0,
  :user=>nil,
  :comments_url=>
   "https://api.github.com/gists/e32457bc05756096ec055eb0f357fcb7/comments",
  :owner=>
   {:login=>"andreiabramovsky",
    :id=>63259548,
    :node_id=>"MDQ6VXNlcjYzMjU5NTQ4",
    :avatar_url=>"https://avatars.githubusercontent.com/u/63259548?v=4",
    :gravatar_id=>"",
    :url=>"https://api.github.com/users/andreiabramovsky",
    :html_url=>"https://github.com/andreiabramovsky",
    :followers_url=>"https://api.github.com/users/andreiabramovsky/followers",
    :following_url=>
     "https://api.github.com/users/andreiabramovsky/following{/other_user}",
    :gists_url=>"https://api.github.com/users/andreiabramovsky/gists{/gist_id}",
    :starred_url=>
     "https://api.github.com/users/andreiabramovsky/starred{/owner}{/repo}",
    :subscriptions_url=>
     "https://api.github.com/users/andreiabramovsky/subscriptions",
    :organizations_url=>"https://api.github.com/users/andreiabramovsky/orgs",
    :repos_url=>"https://api.github.com/users/andreiabramovsky/repos",
    :events_url=>
     "https://api.github.com/users/andreiabramovsky/events{/privacy}",
    :received_events_url=>
     "https://api.github.com/users/andreiabramovsky/received_events",
    :type=>"User",
    :site_admin=>false},
  :forks=>[],
  :history=>
   [{:user=>
      {:login=>"andreiabramovsky",
       :id=>63259548,
       :node_id=>"MDQ6VXNlcjYzMjU5NTQ4",
       :avatar_url=>"https://avatars.githubusercontent.com/u/63259548?v=4",
       :gravatar_id=>"",
       :url=>"https://api.github.com/users/andreiabramovsky",
       :html_url=>"https://github.com/andreiabramovsky",
       :followers_url=>
        "https://api.github.com/users/andreiabramovsky/followers",
       :following_url=>
        "https://api.github.com/users/andreiabramovsky/following{/other_user}",
       :gists_url=>
        "https://api.github.com/users/andreiabramovsky/gists{/gist_id}",
       :starred_url=>
        "https://api.github.com/users/andreiabramovsky/starred{/owner}{/repo}",
       :subscriptions_url=>
        "https://api.github.com/users/andreiabramovsky/subscriptions",
       :organizations_url=>"https://api.github.com/users/andreiabramovsky/orgs",
       :repos_url=>"https://api.github.com/users/andreiabramovsky/repos",
       :events_url=>
        "https://api.github.com/users/andreiabramovsky/events{/privacy}",
       :received_events_url=>
        "https://api.github.com/users/andreiabramovsky/received_events",
       :type=>"User",
       :site_admin=>false},
     :version=>"849b087ebed7b1dff2122c46390bc8c072d3e1b7",
     :committed_at=>2023-03-05 21:01:43 UTC,
     :change_status=>{:total=>1, :additions=>1, :deletions=>0},
     :url=>
      "https://api.github.com/gists/e32457bc05756096ec055eb0f357fcb7/849b087ebed7b1dff2122c46390bc8c072d3e1b7"}],
  :truncated=>false}
=end
