class ReviewsController < ApplicationController

  before_filter :authenticate_reviewer!

  # GET /reviews
  # GET /reviews.json
  def index
    @reviews = Review.all
  end

  # GET /reviews/1
  # GET /reviews/1.json
  def show
    @review = Review.find(params[:id])
  end

  # GET /reviews/new
  # GET /reviews/new.json
  def new
    @review = Review.new
    @project = Project.new
    @projects = Project.all
  end

  # GET /reviews/1/edit
  def edit
    @review = Review.find(params[:id])
    @project = Project.new
    @projects = Project.all
  end

  # POST /reviews
  # POST /reviews.json
  def create
    review = Review.new(params[:review])
    review.save
    redirect_to review, notice: 'Review was successfully created.'
  end

  # PUT /reviews/1
  # PUT /reviews/1.json
  def update
    @review = Review.find(params[:id])
    redirect_to @review, notice: 'Review was successfully updated.'
  end


end
