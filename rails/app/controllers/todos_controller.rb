class TodosController < ApplicationController
  def index
    @todos = []
  end

  def create
    @todo = {description: params['description'], done: true.to_s == params['done']}
  end
end
