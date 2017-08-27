class ParseController < ApplicationController
  def parse
    x = Roo::Spreadsheet.open('data/movie.xlsx')
    x.sheets
    x.sheet('movie_metadata.csv').row(2)
    x.sheet('movie_metadata.csv').column(2)
    x.sheet('movie_metadata.csv').cell(3, 'C')
    # first_row, last_row, first_column, last_column
    x.sheet('movie_metadata.csv').each(title: 'movie_title', year: 'title_year') do |hash|
      p hash
    end
  end

  def upload
  end

  def single
    f = params[:woof]
    e = Roo::Spreadsheet.open(f.tempfile)
    @hashes = e.sheet('movie_metadata.csv').each(title: 'movie_title', year: 'title_year').map{|h| h}
    render 'receive'
  end

  def multi
    files = params[:purr]
    sheets = files.map{|f| Roo::Spreadsheet.open(f.tempfile)}
    binding.pry
  end
end
