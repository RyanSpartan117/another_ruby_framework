module FinderHelpers
    
    #Capybara doesn't have a built in parent node finder. Workaround with xpath
    def findParentNode(element)
        element.find(:xpath, "..")
    end
end