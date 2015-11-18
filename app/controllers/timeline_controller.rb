class TimelineController < ApplicationController
    before_action :authenticate_user!, except: :index
    def index
        @blogs = Blog.all.reverse
    end
    def fox
        @blogs = Blog.all.reverse
    end
    def wolf
        @blogs = Blog.all.reverse
    end
    def write
        Blog.create(user_id: current_user.id, content: params[:naeyong])
        redirect_to :root
    end
    def comment
        Comment.create(user_id: current_user.id, blog_id: params[:blog_id], msg: params[:comment])
        redirect_to :root
    end
    def blog_edit
        @blog = Blog.find(params[:id])
    end
    def comment_edit
        @comm = Comment.find(params[:id])
    end
    def blog_update
        blogu = Blog.find(params[:id])
        blogu.content = params[:naeyong]
        blogu.save
        redirect_to :root
    end
    def comment_update
        commu = Comment.find(params[:id])
        commu.msg = params[:comment]
        commu.save
        redirect_to :root
    end
    def blog_delete
        blogd = Blog.find(params[:id])
        blogd.destroy
        redirect_to :root
    end
    def comment_delete
        commd = Comment.find(params[:id])
        commd.destroy
        redirect_to :root
    end
    def myblog
        @myblogs = Blog.where(user_id: current_user.id)
    end
    def mycomment
        @mycomments = Comment.where(user_id: current_user.id)
        @belongblog = Blog.where(user_id: current_user.id)
        #@belongblog = Blog.where(user_id: @mycomments.blog_id)
    end
    def agree
        if params[:bloguseremail] == current_user.email then
        redirect_to :root
        elsif   params[:userexist] == 'true'      then
        redirect_to :root
        else
            Agree.create(user_id: current_user.id, blog_id: params[:blog_id])
            redirect_to :root
        end
    end
    
    def agreec
        if params[:commentuseremail] == current_user.email then
        redirect_to :root
        elsif   params[:userexist2] == 'true'      then
        redirect_to :root
        else
            Agreec.create(user_id: current_user.id, comment_id: params[:comment_id])
            redirect_to :root
        end        
    end
    def blog
        @pp = Blog.find(params[:id])
    end
end
