# this is the bootstrap file

APP_PATH = File.dirname(__FILE__)
$:.unshift(File.join(APP_PATH,'lib'))
require 'guide'
guide = Guide.new('resturants.txt')
guide.launch!