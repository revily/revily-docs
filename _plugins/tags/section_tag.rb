module Jekyll
  class SectionTag < Liquid::Tag
    # {% section List all incidents }
    # 
    #     <div class="row-fluid">
    #       <div class="span12">
    #         <h3>List incidents</h3>
    #       </div>
    #     </div>
    #
    def initialize(tag_name, text, tokens)
      super
      @text = text
    end

    def render(context)
      "<div class='row-fluid'><div class='span12'><h3>#{@text}</h3></div></div>"
    end

  end
end

Liquid::Template.register_tag('section', Jekyll::SectionTag)
