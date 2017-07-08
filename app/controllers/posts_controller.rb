class PostsController < ApplicationController
    def new
        
    end
    def create
        @new_post = Post.new #1. post 껍데기를 만든다.
        @new_post.title = params[:input_title] #2. title이란 곳에 params로 제목을 저장한다.
        @new_post.content = params[:input_content]#3. content란 곳에 params로 내용을 저장한다.
        @new_post.save #4. 완전히 저장한다.
        
        # 저장했으니까 여기로 가렴.
        redirect_to "/posts/show/#{@new_post.id}"
    end
    def index # 모든 게시글을 보여주는 것
        @posts = Post.all
    
    end
    
    
    def show # 하나의 게시글을 보여주는 것
        @post = Post.find(params[:id])

    end
end
