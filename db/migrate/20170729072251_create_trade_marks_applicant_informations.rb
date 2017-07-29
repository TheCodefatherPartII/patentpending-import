class CreateTradeMarksApplicantInformations < ActiveRecord::Migration[5.1]
  def change
    create_table :trade_marks_applicant_informations do |t|
      t.bigint :ipa_applt_id
      t.string :tm_number
      t.string :appln_type
      t.string :name
      t.string :cleanname
      t.string :country
      t.bigint :australian
      t.bigint :entity
      t.bigint :ipa_id
      t.bigint :abn
      t.bigint :acn
      t.string :source
      t.bigint :big
      t.bigint :ultimate
      t.bigint :lat
      t.bigint :lon
      t.bigint :qg
      t.string :state
      t.bigint :postcode
      t.string :applicant_type
      t.bigint :sa2_main11
      t.string :sa2_name11
      t.string :gcc_code11
      t.string :gcc_name11

      t.timestamps
    end
  end
end
