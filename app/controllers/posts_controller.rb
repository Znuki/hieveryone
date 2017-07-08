class PostsController < ApplicationController
    def new
        
    end
    def create
        @new_post = Post.new #1. post 껍데기를 만든다.
        @new_post.title = params[:input_title] #2. title이란 곳에 params로 제목을 저장한다.
        @new_post.content = params[:input_content]#3. content란 곳에 params로 내용을 저장한다.
        @new_post.save #4. 완전히 저장한다.
    end
end
