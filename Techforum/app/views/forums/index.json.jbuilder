json.array!(@forums) do |forum|
  json.extract! forum, :id, :qid, :question, :type, :emptech_id, :emp_login_id
  json.url forum_url(forum, format: :json)
end
