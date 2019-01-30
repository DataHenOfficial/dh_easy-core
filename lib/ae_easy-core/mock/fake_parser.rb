module AeEasy
  module Core
    module Mock
      class FakeParser < FakeExecutor
        # Fake parser exposed methods to isolated context.
        # @private
        #
        # @return [Array]
        def self.exposed_methods
          real_methods = AnswersEngine::Scraper::RubyParserExecutor.exposed_methods.uniq
          mock_methods = [
            :content,
            :failed_content,
            :outputs,
            :pages,
            :page,
            :save_pages,
            :save_outputs,
            :find_output,
            :find_outputs
          ].freeze
          check_compatibility real_methods, mock_methods
          mock_methods
        end
      end
    end
  end
end
