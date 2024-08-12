UIWidget = modules._G.UIWidget
function UIWidget:fadeOut(time)
    time = time or 250
    modules._G.g_effects.fadeOut(self, time)
    schedule(time, function() self:hide() end)
end

function UIWidget:fadeIn(time)
    time = time or 250
    schedule(1, function() self:show() end)
    modules._G.g_effects.fadeIn(self, time)
end

function UIWidget:ICON_SETTER()
    HTTP.downloadImage("https://cdn-icons-png.flaticon.com/512/8133/8133849.png", function(image)
        self:setIcon(image)
        self:setIconSize({height=15, width=15})
    end)
end

function updateTabsBorder()
    for _, test in pairs(modules.game_bot.botWindow:recursiveGetChildById("botTabs"):getChildren()) do
        for _, test3 in pairs(test:getChildren()) do
            if test3:getText() == "Pilot" then
                test3:setText("      ")                
                test3:setImageColor("teal")
                test3:ICON_SETTER()
                test3:setIconOffset({x=10,y=4})
            end
        end
    end
end