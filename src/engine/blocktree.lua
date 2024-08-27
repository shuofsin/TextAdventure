require("src/engine/block")
require("src/engine/textblock")

BlockTree = {}

function BlockTree:init()
    local newTextBlock = TextBlock:createBlock("This is a new text block", nil, nil)
    BlockTree[#BlockTree + 1] = newTextBlock
end