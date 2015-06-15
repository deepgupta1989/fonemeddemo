module PatientsHelper
  def create_html_template(html, type)
    puts "#{html.inspect}============================="
    if type == 'header'
      create_html_header(html)    
    elsif type == 'content'
      #create_html_content(html)
      generate_table_from_data(html)
    elsif type == 'footer'
      create_html_footer(html)
    end
  end

  def create_html_header(html)
  	if html.children.present?
      html.html_content.gsub('</div>', (html.children.first.html_content + "</div>").html_safe ).html_safe
    end
  end

  def add_child_template(html)
  	
  end
  
  def create_html_content(html)
    str = "<table>
    <tr>
    <th>CallId</th>
    <th>Name</th>
    <th>DOB</th>
    <th>Call Received CT</th>
    <th>Call Type</th>
    </tr>".html_safe
    
    Call.all.each do |call|
    	str = str + "<tr>
    	<td>#{call.callerid}</td>
    	<td>#{call.patient_id}</td>
    	<td>#{call.created_at}</td>
    	<td>#{call.call_received_at}</td>
    	<td>#{call.calltype}</td>
    	</tr>".html_safe
    end

    str = str + "</table>".html_safe
  
  end

  def generate_table_from_data(html)
  	
  	str = "<table><thead><tr>".html_safe

      html.report_master.report_datas.order('id asc').map(&:column_name).each do |header|
      	str += "<th>#{header.capitalize}</th>".html_safe
      end
    str += "</tr></thead>".html_safe
    
    
    @calls.each_with_index do |call, index|
  		str += "<tr>".html_safe
  		call.attributes.values.each do |c|
  		  #raise "<td>#{c}</td>"
  		  str += "<td>#{c}</td>".html_safe
  		end
  		str += "</tr>".html_safe
  	end
  	str = str + "</table>".html_safe
  end

  def create_html_footer(html)
    "Printed on 5/25/2015 10:11:26 AM".html_safe
  end
end
