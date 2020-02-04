require 'bundler/setup'
require 'pry'
Bundler.require

require_relative "../lib/pokemon"
require_relative "../lib/scraper"
require_relative "sql_runner"

@db = SQLite3::Database.new('../pokemon.db')
@db.execute("DROP TABLE IF EXISTS pokemon;")
@sql_runner = SQLRunner.new(@db)
@sql_runner.execute_schema_migration_sql
