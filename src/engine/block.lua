Block = {}
Block.__index = Block

---Creates a new block object
---@return table
function Block:new()
    local newBlock = {}
    setmetatable(newBlock, Block)
    return newBlock
end

--- Sets mandatory parameters for block object
---@param _text string 
---@param _prev table
---@param _next table
function Block:init(_text, _prev, _next)
    self.text = _text
    self.prev = _prev
    self.next = _next
end

---Creates a new block and initlizes it
---@param _text string
---@param _prev table
---@param _next table
---@return table
function Block:create_block(_text, _prev, _next)
    local newBlock = self:new()
    newBlock:init(_text, _prev, _next)
    return newBlock
end
