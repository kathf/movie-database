class CastMembersController < ApplicationController
  def index
    @cast_members = CastMember.all.order(:name)
  end

  def show
    @cast_member = CastMember.find(params[:id])
    @movies = @cast_member.movies.order(:title).page(params[:page]).per(12)
  end
end
