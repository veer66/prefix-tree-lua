local seek = function(index,offset,ch)
   return 0, true, 0
end

local build_from_words = function (words)
   return {
	  seek = seek
   }
end

return {
   build_from_words = build_from_words
}
