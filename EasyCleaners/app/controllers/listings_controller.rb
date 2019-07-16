# frozen_string_literal: true

class ListingsController < ApplicationController
  def index # find cleaner
    @profiles = Profile.all
  end

  def show; end

  def new; end

  def create; end

  def edit; end

  def update; end

  def delete; end

  def destroy; end
end
