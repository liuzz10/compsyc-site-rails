json.extract! video, :id, :title, :key_word, :upload_at, :created_at, :updated_at
json.url video_url(video, format: :json)
