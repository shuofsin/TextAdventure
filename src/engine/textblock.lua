TextBlock = {}

---Creates a new block object
---@return table -- new block object
function TextBlock:new(new)
    local newBlock = new or {}
    setmetatable(self, newBlock)
    self.__index = self
    return newBlock
end

--- Sets mandatory parameters for block object
---@param _text string -- text to be read
---@param _prev table -- table of blocks
---@param _next table -- table of blocks 
function TextBlock:init(_text, _prev, _next)
    self.text = _text
    self.prev = _prev
    self.next = _next
end

---Creates a new block and initlizes it
---@param _text string -- text to be read
---@param _prev table -- table of previous blocks 
---@param _next table -- table of next blocks 
---@return table -- new initilized table
function TextBlock:createBlock(_text, _prev, _next)
    local newBlock = self:new()
    newBlock:init(_text, _prev, _next)
    return newBlock
end

---Returns the text field
---@return string -- text field 
function TextBlock:getText() 
    return self.text
end 