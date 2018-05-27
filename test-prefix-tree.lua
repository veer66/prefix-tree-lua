local lunatest = require("lunatest")
local prefix_tree = require("prefix-tree")

function test_single_item()
   local words = {"A"}
   local tree = prefix_tree.build_from_words(words)
   local index, is_final, payload = tree.seek(0, 0, 'A')
   lunatest.assert_equal(0, payload)
   lunatest.assert_true(is_final)
   lunatest.assert_nil(tree.seek(0, 0, 'B'))
end

lunatest.run()
