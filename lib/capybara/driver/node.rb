module Capybara
  module Driver
    class Node
      attr_reader :driver, :node

      def initialize(driver, node)
        @driver = driver
        @node = node
      end

      def text
        raise NotImplementedError
      end

      def [](name)
        raise NotImplementedError
      end

      def value
        self[:value]
      end

      def set(value)
        raise NotImplementedError
      end

      def select_option(option)
        raise NotImplementedError
      end

      def unselect_option(option)
        raise NotImplementedError
      end

      def click
        raise NotImplementedError
      end

      def drag_to(element)
        raise NotImplementedError
      end

      def tag_name
        raise NotImplementedError
      end

      def visible?
        raise NotImplementedError
      end

      def path
        raise NotSupportedByDriverError
      end
      
      def trigger(event)
        raise NotSupportedByDriverError
      end
    end
  end
end
