class CreatePatentsApplicantInformations < ActiveRecord::Migration[5.1]
  def change
    create_table :patents_applicant_informations do |t|
      t.integer :ipa_applt_id
      t.string :australian_appl_no
      t.string :appln_type
      t.string :name
      t.string :cleanname
      t.string :country
      t.integer :australian
      t.integer :entity
      t.integer :ipa_id
      t.integer :abn
      t.integer :acn
      t.string :source
      t.integer :big
      t.integer :ultimate
      t.integer :lat
      t.integer :lon
      t.integer :qg
      t.string :state
      t.integer :postcode
      t.integer :patstat_appln_id
      t.string :applicant_type
      t.integer :sa2_main11
      t.string :sa2_name11
      t.string :gcc_code11
      t.string :gcc_name11

      t.timestamps
    end
  end
end
