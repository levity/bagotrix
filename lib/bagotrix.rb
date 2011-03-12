require 'open-uri'

class Bagotrix

  class << self
    attr_accessor :user, :repo, :verbose
    
    NoUserMsg = 'you must set a github user with Bagotrix.use(username), or run "git config --global github.user"'
    
    def config(options = {})
      self.user ||= options[:user]
      self.repo = options[:repo] if options[:repo]
      self.verbose = options[:verbose]
    end
    
    def load(path)
      raise NoUserMsg if user == ''
      uri = "https://github.com/#{user}/#{repo}/raw/master/#{path}.rb"
      puts "loading #{uri}" if verbose
      Object.class_eval(open(uri).read)
    end
  end
end

Bagotrix.config :repo => 'bagotrix-repo', :user => (`git config --get github.user`.chomp rescue '')
