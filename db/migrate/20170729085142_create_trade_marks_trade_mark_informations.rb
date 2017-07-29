class CreateTradeMarksTradeMarkInformations < ActiveRecord::Migration[5.1]
  def change
    create_table :trade_marks_trade_mark_informations do |t|
      t.integer :tm_number
      t.integer :status_code
      t.string :status_code_desc
      t.string :type_of_mark_code
      t.string :expedite_flag_ind
      t.string :non_use_flag_ind
      t.string :cpi_status_code
      t.string :live_or_dead_code
      t.string :trademark_type
      t.string :kind_colour_ind
      t.string :kind_scent_ind
      t.string :kind_shape_ind
      t.string :kind_sound_ind
      t.integer :divisional_number
      t.integer :part_assign_parent_number
      t.string :priority_number
      t.string :priority_country_code
      t.string :section45_application_code
      t.string :court_orders_ind
      t.integer :ir_number
      t.string :ir_number_extension_value
      t.integer :part_transform_parent_number
      t.integer :transform_ir_number
      t.string :transform_ir_extension_no
      t.string :act1955_reg_acpt_code
      t.string :revocation_acpt_pend_ind
      t.string :gs_assistance_ind
      t.string :lodgement_type_code
      t.date :lodgement_date
      t.date :priority_date
      t.date :divisional_date
      t.date :acceptance_due_date
      t.date :sealing_due_date
      t.date :registered_from_date
      t.date :sealing_date
      t.date :renewal_due_date
      t.date :ir_number_notify_date
      t.date :ir_renewal_due_date
      t.string :madrid_application_indicator

      t.timestamps
    end
  end
end
