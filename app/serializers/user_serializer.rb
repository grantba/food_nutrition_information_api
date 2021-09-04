class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :email, :reason_for_use
end
