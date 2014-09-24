class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end
  def question_list
  end

  def upload
  	ProcessFile.save(params[:script])
  	@job = Job.create(filepath: File.join("/public/data", params[:script].original_filename),
  	    article_id: params[:article_id],
  	    p_id: Digest::SHA1.hexdigest(Job.order("created_at").last.p_id || 1))
  	@job.save
  	respond_to do |format|
  		format.js
  	end
  end

  def show
    @article = Article.find(params[:id])
  end
  def index
    @articles = Article.all
  end

	def create
		@article = Article.new(article_params)
	 
		if @article.save
		  redirect_to articles_path
		else
		  render 'new'
		end
	end
	def edit
		@article = Article.find(params[:id])
	end
	def update
		@article = Article.find(params[:id])
	 
		if @article.update(article_params)
		  redirect_to @article
		else
		  render 'edit'
		end
	end
	def destroy
		@article = Article.find(params[:id])
		@article.destroy
	 
		redirect_to articles_path
	end

	private
		def article_params
		  params.require(:article).permit(:title, :text)
		end

end
