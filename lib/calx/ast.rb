# frozen_string_literal: true

module Calx
  module AST
    class NodeTypeError < StandardError; end

    class Node
    end

    class Literal < Node
      @@type = nil
      attr_reader :value

      def initialize(value)
        raise NodeTypeError unless validate value

        @value = value
      end

      def validate(v)
        v.instance_of?(@@type)
      end
    end

    class Integer < Literal
      @@type = ::Integer
    end
  end
end
