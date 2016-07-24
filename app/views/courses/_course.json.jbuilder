json.extract! course, :id, :Name, :Trainer, :Experience, :created_at, :updated_at
json.url course_url(course, format: :json)