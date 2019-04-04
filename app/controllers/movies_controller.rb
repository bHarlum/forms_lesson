class MoviesController < ApplicationController
    def create
        if session[:movies] == nil
            session[:movies] = []
        end
        session[:movies].push(params[:movie])

        redirect_to movies_path
    end

    def new

    end

    def index
        @movies = session[:movies]
        @movies ||= []
    end

    def show
        
    end

    def update
        @movie_id = params[:id].to_i
        session[:movies][@movie_id] = params[:movie]
        redirect_to movies_path
    end

    def edit
        @movie_id = params[:id].to_i
        @movie = session[:movies][@movie_id]
    end
end