module BookFile
  extend self

  def parse(file)
    hsh = JSON.parse(file.read)
    build_book_attributes(hsh)
  end

  private

    def build_book_attributes(hsh)
      book = hsh["book"]
      {
        :title => book["title"],
        :book_code => book["bookCode"],
        :publisher_attributes => {
          :publisher_code => book["publisherCode"],
          :name => book["publisherName"]
        },
        :chapters_attributes => book["chapters"].map do |chapter|
          { :title => chapter["title"] }
        end
      }
    end
end
