def reverser(str, &block)
  reversed = block.call(str.reverse)
  reversed
end