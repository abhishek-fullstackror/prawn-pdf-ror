# app/pdf/users_pdf.rb

class UsersPdf < Prawn::Document
  def initialize(users)
    super()
    @users = users
    user_table
  end

  def user_table
    data = [["SR","Name", "Email", "Phone"]]
    @users.each do |user|
      data << [user.id,user.name, user.email, user.phone]
    end

    table(data, header: true) do
      row(0).font_style = :bold
    end
  end
end
