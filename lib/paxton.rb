class Paxton

  def parse
    path_to_pdf = Rails.root.join('paxton.pdf')
    file = File.open(path_to_pdf)
    document = Poppler::Document.new(file.read)
    text = document.map { |page| page.get_text }.join(';')

    text.split("\n")
  end
end


