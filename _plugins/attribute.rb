# # module Jekyll
# #   module AttributeFilter
# #     def attribute(name, type, optional=nil, notes=nil)
# #       "<dt>#{name}</dt>"
# #       "<dd>"
# #         "<strong>#{type}</strong>"
# #         ""
# #     end
# #   end
# # end

# # Liquid::Template.register_filter(Jekyll::AttributeFilter)


# # {% attr Name, string, required, description="Foo bar baz" }
# # 
# #    <dl class="dl-horizontal">
# #      <dt>message</dt>
# #      <dd>
# #        String
# #        <em>(required)</em>
# #        <p>The content of the notification sent to the current user on-call</p>
# #      </dd>
# #    </dl>

# module Jekyll
#   class AttributeTag < Liquid::Tag

#     def initialize(tag_name, text, tokens)
#       super
#       @text = text
#       @name, @type, @options = split_params(text)

#     end

#     def render(context)
#       output = ""
#       output << "<dt>#{@name}</dt><dd>"
#       output << "#{@type} <em>(#{@options['required'] ? "required" : "optional"})</em>"
#       output << "<p>#{@options['description']}</p>" if @options['description']
#       output << "</dd>"
#       output
#     end

#     def split_params(text)
#       params = @text.split(", ")
#       name = params.shift
#       type = params.shift
#       options = params.inject({}) do |options, option|
#         key, value = option.split("=")
#         # assume a key with no value is true
#         if value
#           options[key] = value.gsub(/\A("|')|("|')\Z/, '')
#         else
#           options[key] = true
#         end
#         options
#       end

#       return name, type, options
#     end
#   end
# end

# Liquid::Template.register_tag('attr', Jekyll::AttributeTag)