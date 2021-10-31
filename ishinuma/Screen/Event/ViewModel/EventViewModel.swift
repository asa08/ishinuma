//
//  EventViewModel.swift
//  ishinuma
//
//  Created by maiko morisaki on 2021/10/31.
//

import Foundation

protocol EventViewModelInputs {
    
}

protocol EventViewModelOutputs {
    
}

protocol EventViewModelType {
    var input: EventViewModelInputs { get }
    var output: EventViewModelInputs { get }
}

class EventViewModel: EventViewModelType, EventViewModelInputs, EventViewModelOutputs {
    
    // MARK: Properties
    var input: EventViewModelInputs { return self }
    var output: EventViewModelOutputs { return self }
}
