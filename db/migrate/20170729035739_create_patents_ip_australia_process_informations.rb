class CreatePatentsIpAustraliaProcessInformations < ActiveRecord::Migration[5.1]
  def change
    create_table :patents_ip_australia_process_informations do |t|
      t.string :australian_appl_no
      t.string :source_data_key_code
      t.string :patent_type
      t.string :pct_application_ind
      t.string :requested_exam_type
      t.string :exam_status_type
      t.string :examination_section_name
      t.string :acceptance_postponed_ind
      t.integer :accepted_claims_count
      t.string :patent_status_type
      t.date :application_date
      t.date :npe_date
      t.date :filing_date
      t.date :opi_date
      t.date :expiry_date
      t.date :search_completed_date
      t.date :exam_request_date
      t.date :exam_request_filing_date
      t.date :deferement_request_date
      t.date :first_report_issue_date
      t.date :further_report_issue_date
      t.date :search_results_received_date
      t.date :thrd_prty_exam_request_date
      t.date :earliest_priority_date
      t.date :acceptance_published_date
      t.date :sealing_date
      t.date :wipo_publication_date
      t.date :effective_patent_date
      t.date :opi_published_in_journal_date
      t.date :continue_renew_fee_paid_date
      t.date :in_force_to_date

      t.timestamps
    end
  end
end
