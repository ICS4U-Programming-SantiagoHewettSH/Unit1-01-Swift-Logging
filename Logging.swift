//
//  Logging.swift
//
//  Created by Santiago Hewett
//  Created on 2025/02/14
//  Version 1.0
//  Copyright (c) Santiago Hewett. All rights reserved.
//
//  This program will calculate the maximum number of logs 
// that can fit into a truck based on their lengths.

// Import foundation
import Foundation

// Constants
let MAX_WEIGHT: Int = 1100
let QUARTER_LOG_LENGTH: Double = 0.25
let HALF_LOG_LENGTH: Double = 0.5
let FULL_LOG_LENGTH: Double = 1.0


func logging() {
   // Welcome message
   print("Welcome, this program will calculate the maximum number of logs that can fit into a truck based on certain lengths.")


   // Declare log length variable as double that holds nil
   var logLengthDouble: Double?


   // Repeat until valid input
   repeat {
       // Ask user for log length
       print("Please enter the length of the logs in meters (0.25, 0.5, or 1.0):")


       // Read user input with guard to make sure there is no invalid input
       guard let logLengthAsString = readLine() else {
           print("Invalid input. Please enter a valid log length.")
           // Continue the loop
           continue
       }


       // Safely convert user input to double
       guard let logLengthDoubleLoop = Double(logLengthAsString) else {
           print("Invalid input: \(logLengthAsString). Log length must be 0.25, 0.5, or 1.0.")
           // Continue to the next part of the loop
           continue
       }


       // Check if log length is valid
       if logLengthDoubleLoop == QUARTER_LOG_LENGTH || logLengthDoubleLoop == HALF_LOG_LENGTH
       || logLengthDoubleLoop == FULL_LOG_LENGTH {
           // Store valid log length
           logLengthDouble = logLengthDoubleLoop
           // Exit loop
           break
       } else {
           print("Invalid input: \(logLengthDoubleLoop). Log length must be 0.25, 0.5, or 1.0.")
       }
   } while true


   // Calculate weight per log and force unwrap because it is an optional variable that does not contain nil
   let weightPerLog: Double = logLengthDouble! * 20


   // Calculate the number of logs and make sure it is an integer
   let numLogsInt: Int = Int(Double(MAX_WEIGHT) / weightPerLog)


   // Display the max number of logs
   print("The maximum number of logs that can fit into a truck with \(logLengthDouble!)m logs is \(numLogsInt) logs.")
}


// Call function
logging()
