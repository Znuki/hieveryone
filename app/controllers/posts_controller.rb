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
    def destroy
         # 하나를 삭제하는 아이
         @post = Post.find(params[:id])
         # 삭제한다.
         @post.destroy
         # 삭제했으니까 이제 목록을 보여줘라.
         redirect_to "/posts/index"
    end
    def edit # 특정 post를 수정하기 위한 것
         @post = Post.find(params[:id])
    end        
    def update # 수정된 내용을 실제로 DB에 저장하기 위한 것
        @new_post = Post.find(params[:id]) #1. 수정하기 위해서 그 전에 썼던 문장을 불러오는것.. (껍데기가 아니라 하나를 찾아라~)
        @new_post.title = params[:input_title] #2. title이란 곳에 params로 제목을 저장한다.
        @new_post.content = params[:input_content]#3. content란 곳에 params로 내용을 저장한다.
        @new_post.save #4. 완전히 저장한다.
        
        # 저장했으니까 여기로 가렴.
        redirect_to "/posts/show/#{@new_post.id}"
        
    end    
end
