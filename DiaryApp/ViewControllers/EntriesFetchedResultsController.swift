//
//  EntriesFetchedResultsController.swift
//  DiaryApp
//
//  Created by Joshua Borck on 5/26/19.
//  Copyright © 2019 Joshua Borck. All rights reserved.
//

import CoreData

/// A subclass of NSFetchedResultsController of Entry
class EntriesFetchedResultsController: NSFetchedResultsController<Entry> {
    init(request: NSFetchRequest<Entry>, context: NSManagedObjectContext) {
        super.init(fetchRequest: request, managedObjectContext: context, sectionNameKeyPath: "sectionDate", cacheName: nil)
        
        fetch()
    }
    
    func fetch() {
        do {
            try performFetch()
        } catch {
            fatalError()
        }
    }
}
