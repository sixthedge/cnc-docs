module ApplicationHelper
  class CodeRayify < Redcarpet::Render::HTML
    def block_code(code, language)
      CodeRay.scan(code, language).div
    end

    # def codespan(code)
    #   CodeRay.scan(code)
    # end
  end

  def markdown(text)
    # Build the RedCarpet HTML renderer with CodeRayify to make code blocks with color and style
    # All options passed are RedCarpet Renderer options
    # see https://github.com/vmg/redcarpet#darling-i-packed-you-a-couple-renderers-for-lunch for all options
    coderayified = CodeRayify.new(
      filter_html:     true, # Do not allow user inputted HTML
      hard_wrap:       true, # Insert <br> tags inside paragraphs based on orginal document
      with_toc_data:   true, # Add id anchors to each header to allow linking
    )

    # Define what Markdown extensions to use with Redcarpet
    # see https://github.com/vmg/redcarpet#and-its-like-really-simple-to-use for all extensions
    options = {
      disable_indented_code_blocks: true, # do not parse usual markdown code blocks with 4 spaces because we use fenced
      fenced_code_blocks:           true, # parse fenced code blocks, used in conjuction with CodeRayify
      no_intra_emphasis:            true, # do not parse emphasis inside of words such as foo_bar_baz
      autolink:                     true, # parse links even when they are not enclosed
    }

    redcarpet = Redcarpet::Markdown.new(coderayified, options)
    return redcarpet.render(text).html_safe
  end


  def get_toc(body)
    if body
      links          = []
      header_objects = []
      body.lines.each do |line|
        if line.starts_with?("#")
          match = /(?<header>^[#]{1,6})(?<title>.*)/.match(line)
          header_objects.push({level: match[:header].length.to_i, title: match[:title].strip, children: []})
        end
      end

      string = ""
      header_objects.each do |header|
        string += "<li class='toc_list-item h#{header[:level]}'>"
        string += "<a href=##{header[:title].parameterize}>"
        string += header[:title]
        string += "</a>"
        string += "</li>"
      end
      string
    end
  end
end
