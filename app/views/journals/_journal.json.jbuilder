json.extract! journal, :id, :title, :abbreviation, :issn, :org_unit_id, :created_at, :updated_at
json.url journal_url(journal, format: :json)
