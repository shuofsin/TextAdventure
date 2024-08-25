require("src/engine/textblock")

BlockTree = {}

function BlockTree:init()
    local newTextBlock = TextBlock:create_block("This is a new text block", nil, nil)
    BlockTree[#BlockTree + 1] = newTextBlock
end