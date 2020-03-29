class BlogController < ApplicationController
    http_basic_authenticate_with name: "desafiovamoscontodo", password: "XAHTJEAS23123%23", only: :dashboard
    def index
        if params[:title].present?
            @posts = Post.where('title = ?', params[:title])
        else
            @posts = Post.order(created_at: :desc)
        end
    end

    def create
        @post = Post.create(title: params[:title], content: params[:content], image_url: params[:image_url], created_at: params[:created_at])
    end

    def dashboard
    end

end