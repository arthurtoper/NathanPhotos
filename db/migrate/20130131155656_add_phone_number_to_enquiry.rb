class AddPhoneNumberToEnquiry < ActiveRecord::Migration
  def change
    add_column :enquiries, :phone_number, :string
  end
end
