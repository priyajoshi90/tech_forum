json.array!(@replies) do |reply|
  json.extract! reply, :id, :nestreply_id, :answer, :emp_login_id, :forum_id
  json.url reply_url(reply, format: :json)
end
