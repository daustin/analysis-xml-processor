$VERBOSE = true
require 'test/unit'

%w(../lib ../ext).each do |path|
  $LOAD_PATH.unshift(File.expand_path(File.join(File.dirname(__FILE__), path)))
end

require 'nokogiri'

module Nokogiri
  class TestCase < Test::Unit::TestCase
    ASSETS_DIR = File.join(File.dirname(__FILE__), 'files')
    XML_FILE = File.join(ASSETS_DIR, 'staff.xml')
    XSLT_FILE = File.join(ASSETS_DIR, 'staff.xslt')
    HTML_FILE = File.join(ASSETS_DIR, 'tlm.html')

    unless RUBY_VERSION >= '1.9'
      undef :default_test
    end

    def teardown
      if ENV['NOKOGIRI_GC']
        STDOUT.putc '!'
        GC.start 
      end
    end
  end

  module SAX
    class TestCase < Nokogiri::TestCase
      class Doc < XML::SAX::Document
        attr_reader :start_elements, :start_document_called
        attr_reader :end_elements, :end_document_called
        attr_reader :data, :comments, :cdata_blocks

        def start_document
          @start_document_called = true
          super
        end

        def end_document
          @end_document_called = true
          super
        end

        def start_element *args
          (@start_elements ||= []) << args
          super
        end

        def end_element *args
          (@end_elements ||= []) << args
          super
        end

        def characters string
          @data ||= []
          @data += [string]
          super
        end

        def comment string
          @comments ||= []
          @comments += [string]
          super
        end

        def cdata_block string
          @cdata_blocks ||= []
          @cdata_blocks += [string]
          super
        end
      end
    end
  end
end
