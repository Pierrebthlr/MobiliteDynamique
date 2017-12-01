import ResearchKit

public var TrainSurveyTask: ORKOrderedTask {
    
    var steps = [ORKStep]()
    
    let instructionStep = ORKInstructionStep(identifier: "IntroStep")
    instructionStep.title = "Train Report"
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
    
    questQuestionStepTitle = "How is the crowding ? "
    textChoices = [
        ORKTextChoice(text: "Overcrowed", value: 0 as NSCoding & NSCopying & NSObjectProtocol),
        ORKTextChoice(text: "Very Crowed", value: 1 as NSCoding & NSCopying & NSObjectProtocol),
        ORKTextChoice(text: "Crowed", value: 2 as NSCoding & NSCopying & NSObjectProtocol),
        ORKTextChoice(text: "Not Crowed", value: 3 as NSCoding & NSCopying & NSObjectProtocol)
        
        
    ]
    questAnswerFormat  = ORKAnswerFormat.choiceAnswerFormat(with: .singleChoice, textChoices: textChoices)
    questQuestionStep = ORKQuestionStep(identifier: "CrowdingQuestion", title: questQuestionStepTitle, answer: questAnswerFormat)
    
    steps += [questQuestionStep]
    
    questQuestionStepTitle = "Ticket Cost "
    textChoices = [
        ORKTextChoice(text: "Really expensive", value: 0 as NSCoding & NSCopying & NSObjectProtocol),
        ORKTextChoice(text: "Expensive", value: 1 as NSCoding & NSCopying & NSObjectProtocol),
        ORKTextChoice(text: "Cheap", value: 2 as NSCoding & NSCopying & NSObjectProtocol),
        ORKTextChoice(text: "Really Cheap", value: 3 as NSCoding & NSCopying & NSObjectProtocol)
        
        
    ]
    questAnswerFormat  = ORKAnswerFormat.choiceAnswerFormat(with: .singleChoice, textChoices: textChoices)
    questQuestionStep = ORKQuestionStep(identifier: "TicketCostQuestion", title: questQuestionStepTitle, answer: questAnswerFormat)
    
    steps += [questQuestionStep]
    
    questQuestionStepTitle = "How is cleanliness? "
    textChoices = [
        ORKTextChoice(text: "Really dirty", value: 0 as NSCoding & NSCopying & NSObjectProtocol),
        ORKTextChoice(text: "Dirty", value: 1 as NSCoding & NSCopying & NSObjectProtocol),
        ORKTextChoice(text: "Clean Enough", value: 2 as NSCoding & NSCopying & NSObjectProtocol),
        ORKTextChoice(text: "Really Clean", value: 3 as NSCoding & NSCopying & NSObjectProtocol)
        
        
    ]
    questAnswerFormat  = ORKAnswerFormat.choiceAnswerFormat(with: .singleChoice, textChoices: textChoices)
    questQuestionStep = ORKQuestionStep(identifier: "CleanlinessQuestion", title: questQuestionStepTitle, answer: questAnswerFormat)
    
    steps += [questQuestionStep]
    
    questQuestionStepTitle = "How are the vehicle conditions? "
    textChoices = [
        ORKTextChoice(text: "Really bad condition", value: 0 as NSCoding & NSCopying & NSObjectProtocol),
        ORKTextChoice(text: "Bad condition", value: 1 as NSCoding & NSCopying & NSObjectProtocol),
        ORKTextChoice(text: "Medium condition", value: 2 as NSCoding & NSCopying & NSObjectProtocol),
        ORKTextChoice(text: "Good condition", value: 3 as NSCoding & NSCopying & NSObjectProtocol)
        
        
    ]
    questAnswerFormat  = ORKAnswerFormat.choiceAnswerFormat(with: .singleChoice, textChoices: textChoices)
    questQuestionStep = ORKQuestionStep(identifier: "VehicleConditionQuestion", title: questQuestionStepTitle, answer: questAnswerFormat)
    
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
    
    return ORKOrderedTask(identifier: "TrainTask", steps: steps)
}
