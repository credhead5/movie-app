class Api::ActorsController < ApplicationController
  def actor_action
    @actor = Actor.last
    render "actor.json.jb"
  end
end

