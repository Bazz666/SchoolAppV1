json.extract! assessment, :id, :grade, :course_id, :user_id, :departament_id, :created_at, :updated_at
json.url assessment_url(assessment, format: :json)
