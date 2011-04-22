module RequestsHelper
  def request_type_select
    Request_Type.all.collect { |type| [type.name, type.id] }
  end
end
