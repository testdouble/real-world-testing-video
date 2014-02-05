class TodosController < ApplicationController
  def index
    @todos = []
  end

  def create
    @todo = {description: params['description'], done: params['done']}
  end
end
