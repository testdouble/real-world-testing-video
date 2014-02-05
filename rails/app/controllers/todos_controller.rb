class TodosController < ApplicationController
  def index
    @todos = []
  end

  def create
    @todo = {id: 1, description: params['description'], done: params['done']}
  end
end
