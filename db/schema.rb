ActiveRecord::Schema.define(version: 20_250_819_171_041) do
  create_table 'teams', force: :cascade do |t|
    t.string 'name'
    t.string 'coach'
    t.string 'pg'
    t.string 'sg'
    t.string 'pf'
    t.string 'sf'
    t.string 'c'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end
end
