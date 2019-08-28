class TipsController < ApplicationController

  def create
    resp = Faraday.post('') do |req|
      req.params['oauth_token'] = session[:token]
      req.params['v'] = '20160201'
      req.params['venueId'] = params[:venue_id]
      req.params['text'] = params[:tip]
    end

    redirect_to tips_path
  end

end
