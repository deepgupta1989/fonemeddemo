module PatientsHelper
	def create_html_template(html)
		
		puts "#{html.inspect}============================="
			
		if html.children.present?

			html.html_content.gsub('</div>', (html.children.first.html_content + "</div>").html_safe ).html_safe
		end
	end

	def create_html_content
	end
end
