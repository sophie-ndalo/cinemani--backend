class Movie < ApplicationRecord
  def video_url_path
    if video_url.is_a?(String)
      video_url
    elsif video_url.attached?
      Rails.application.routes.url_helpers.url_for(video_url)
    end
  end
end
