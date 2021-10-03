json.extract! assessment, :id, :grade, :course, :user, :departament, :created_at, :updated_at
json.url assessment_url(assessment, format: :json)
