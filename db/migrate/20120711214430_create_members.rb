class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.belongs_to :state

      t.string :person_id
      t.string :title
      t.string :prefix
      t.string :first_name
      t.string :last_name
      t.string :mid_name
      t.string :nick_name
      t.string :legal_name
      t.string :state
      t.string :legislator_type
      t.string :chamber
      t.string :party_code
      t.string :district
      t.string :district_id
      t.string :family
      t.string :religion
      t.string :email
      t.string :website
      t.string :webform
      t.string :weblog
      t.string :blog
      t.string :facebook
      t.string :twitter
      t.string :youtube
      t.string :photo_path
      t.string :photo_file
      t.string :gender
      t.string :party_code
      t.string :birth_place
      t.string :spouse
      t.string :marital_status
      t.string :residence
      t.string :school_1_name
      t.string :school_1_date
      t.string :school_1_degree
      t.string :school_2_name
      t.string :school_2_date
      t.string :school_2_degree
      t.string :school_3_name
      t.string :school_3_date
      t.string :school_3_degree
      t.string :military_1_branch
      t.string :military_1_rank
      t.string :military_1_dates
      t.string :military_2_branch
      t.string :military_2_rank
      t.string :military_2_dates
      t.string :mail_name
      t.string :mail_title
      t.string :mail_address_1
      t.string :mail_address_2
      t.string :mail_address_3
      t.string :mail_address_4
      t.string :mail_address_5
      t.date   :born_on
      t.text   :know_who_data
      t.text   :biography

      t.timestamps
    end
  end
end
