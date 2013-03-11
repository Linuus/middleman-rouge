require "middleman-core"
require "redcarpet"
require "middleman-rouge/version"

::Middleman::Extensions.register(:rouge_syntax) do
  require "middleman-rouge/extension"
  ::Middleman::MiddlemanRouge
end