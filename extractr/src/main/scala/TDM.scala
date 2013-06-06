
package com.meanrecipes

class TDM(args: String) {

  def buildTDM(rawDataList: List[String]) = {
    // So this is one of the main party elements... maybe. 

    /*
     I may not need this. But if I do, this will represent
     a Term Document Matrix -- Terms (words) x Documents, where the values
     are counts. That can then be fed into a Naive Bayes classifier -- unless
     I can find a way better way to do this. 

     ...which may require Hadoop? Oh good.

     1. Break each chunk of text into words and only words; normalize case
     2. Group by, produce count
     */
      
  }

}
