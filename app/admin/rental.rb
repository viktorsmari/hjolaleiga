ActiveAdmin.register Rental do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
#permit_params :start_date, :end_date, :email, :bicycle
#
# or
#
permit_params do
  permitted = [:start_date, :end_date, :email, :bicycle]
  #permitted << :other if params[:action] == 'create' && current_user.admin?
  permitted
end


end
