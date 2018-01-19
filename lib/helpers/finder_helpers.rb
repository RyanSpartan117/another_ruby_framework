module FinderHelpers
    
    #Capybara doesn't have a built in parent node finder. Quick fix using xpath
    def findParentNode(element)
        element.find(:xpath, "..")
    end
end