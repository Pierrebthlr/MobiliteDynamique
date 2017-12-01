import ResearchKit

public var TaxiSurveyTask: ORKOrderedTask {
    
    var steps = [ORKStep]()
    
    let instructionStep = ORKInstructionStep(identifier: "IntroStep")
    instructionStep.title = "Taxi Report"
    instructionStep.text = ""
    steps += [instructionStep]
    
    var questQuestionStepTitle = "How is the waiting time ? "
    var textChoices = [
        ORKTextChoice(text: "Excessive", value: 0 as NSCoding & NSCopying & NSObjectProtocol),
        ORKTextChoice(text: "Long", value: 1 as NSCoding & NSCopying & NSObjectProtocol),
        ORKTextChoice(text: "Medium", value: 2 as NSCoding & NSCopying & NSObjectProtocol),
        ORKTextChoice(text: "Short", value: 3 as NSCoding & NSCopying & NSObjectProtocol)
        
        
    ]
    var questAnswerFormat: ORKTextChoiceAnswerFormat = ORKAnswerFormat.choiceAnswerFormat(with: .singleChoice, textChoices: textChoices)
    var questQuestionStep = ORKQuestionStep(identifier: "WaitingQuestion", title: questQuestionStepTitle, answer: questAnswerFormat)
    steps += [questQuestionStep]
    
    questQuestionStepTitle = "How is the driving style ? "
    textChoices = [
        ORKTextChoice(text: "Dangerous", value: 0 as NSCoding & NSCopying & NSObjectProtocol),
        ORKTextChoice(text: "Risky", value: 1 as NSCoding & NSCopying & NSObjectProtocol),
        ORKTextChoice(text: "Moderate", value: 2 as NSCoding & NSCopying & NSObjectProtocol),
        ORKTextChoice(text: "Prudent", value: 3 as NSCoding & NSCopying & NSObjectProtocol)
        
        
    ]
    questAnswerFormat  = ORKAnswerFormat.choiceAnswerFormat(with: .singleChoice, textChoices: textChoices)
    questQuestionStep = ORKQuestionStep(identifier: "DrivingQuestion", title: questQuestionStepTitle, answer: questAnswerFormat)
    
    steps += [questQuestionStep]
    
    questQuestionStepTitle = "How is the pricing ?"
    textChoices = [
        ORKTextChoice(text: "Really expensive", value: 0 as NSCoding & NSCopying & NSObjectProtocol),
        ORKTextChoice(text: "Expensive", value: 1 as NSCoding & NSCopying & NSObjectProtocol),
        ORKTextChoice(text: "Cheap", value: 2 as NSCoding & NSCopying & NSObjectProtocol),
        ORKTextChoice(text: "Really Cheap", value: 3 as NSCoding & NSCopying & NSObjectProtocol)
        
        
    ]
    questAnswerFormat  = ORKAnswerFormat.choiceAnswerFormat(with: .singleChoice, textChoices: textChoices)
    questQuestionStep = ORKQuestionStep(identifier: "PricingQuestion", title: questQuestionStepTitle, answer: questAnswerFormat)
    
    steps += [questQuestionStep]
    
    
    questQuestionStepTitle = "How is the transit time ?"
    textChoices = [
        ORKTextChoice(text: "Really bad", value: 0 as NSCoding & NSCopying & NSObjectProtocol),
        ORKTextChoice(text: "Bad", value: 1 as NSCoding & NSCopying & NSObjectProtocol),
        ORKTextChoice(text: "Good", value: 2 as NSCoding & NSCopying & NSObjectProtocol),
        ORKTextChoice(text: "Really good", value: 3 as NSCoding & NSCopying & NSObjectProtocol)
        
        
    ]
    questAnswerFormat  = ORKAnswerFormat.choiceAnswerFormat(with: .singleChoice, textChoices: textChoices)
    questQuestionStep = ORKQuestionStep(identifier: "TicketCostQuestion", title: questQuestionStepTitle, answer: questAnswerFormat)
    
    steps += [questQuestionStep]
    
    
    let nameAnswerFormat = ORKTextAnswerFormat(maximumLength: 20)
    nameAnswerFormat.multipleLines = false
    let nameQuestionStepTitle = "Any suggestion?"
    let nameQuestionStep = ORKQuestionStep(identifier: "SuggestionStep", title: nameQuestionStepTitle, answer: nameAnswerFormat)
    steps += [nameQuestionStep]
    
    let summaryStep = ORKCompletionStep(identifier: "SummaryStep")
    summaryStep.title = "That's good!"
    summaryStep.text = "Thank you for your participation!"
    steps += [summaryStep]
    
    
    
    
    //TODO: add name question
    
    //TODO: add 'what is your quest' question
    
    //TODO: add color question step
    
    //TODO: add summary step
    
    return ORKOrderedTask(identifier: "BusTask", steps: steps)
}


