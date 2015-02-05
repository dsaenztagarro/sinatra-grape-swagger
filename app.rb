require 'sinatra'
require 'grape'
require 'grape-swagger'

require 'pry'

module API
  class V1 < Grape::API

    desc 'API Root'
    get do
      { annotate_url: '/annotate' }
    end

    desc 'Return a spline.'
    params do
      requires :id, type: Integer, desc: 'Spline id.'
    end
    get '/id' do
      "Spline #{params[:id]}"
    end

    desc 'Return a spline nexted.'
    # params do
    #   requires :id, type: Integer, desc: 'Spline id.'
    # end
    get '/id/:id' do
      "Spline #{params[:id]}"
    end

    desc 'Return hello'
    params do
      requires :text, type: :string, desc: 'Your name'
    end
    get '/text' do
      "Hello #{params[:text]}"
    end

    add_swagger_documentation
  end
end

module API
  class Root < Grape::API
    default_format :json

    mount API::V1 => '/v1'

    # add_swagger_documentation(
    #   base_path: '/v1/',
    #   hide_documentation_path: false
    # )
  end
end
