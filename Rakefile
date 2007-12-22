require "net/ssh"
require "rake/clean"

CLEAN.include "*.aux", "*.blg", "*.bbl", "*.dvi", "*.log", "*.ps"
CLOBBER.include "*.pdf"

rule '.dvi' => ['.tex'] do |task|
  sh %{latex #{task.source}}
  if File.exists? "#{task.source}.aux"
    sh %{bibtex #{task.source}}
    sh %{latex #{task.source}}
    sh %{latex #{task.source}}
  end
end

rule '.ps' => ['.dvi'] do |task|
  sh %{dvips -t letter -Ppdf -o #{task.name} #{task.source}}
end

rule '.pdf' => ['.ps'] do |task|
  sh %{ps2pdf #{task.source}}
end

task :deploy => "resume.pdf" do
  sh "scp resume.pdf samuel@xia.thoughtlocker.net:~/www/www.alieniloquent.com/htdocs/"
end
