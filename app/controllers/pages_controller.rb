class PagesController < ApplicationController
  def home
    @title = 'home'
  end
  
  def simple
    @title = 'simple js'
    @heading = 'simple js features'
  end
  
  def resources
    @title = 'resources'
    @heading = 'project resources'
  end
  
end
