
import scala.io.Source
import java.io.File
import org.htmlcleaner.HtmlCleaner

/*
Right. So this thing is going to take incoming HTML and spit out smaller
Chunks of Stuff. This does *not* do any of the ML tasks required; this
thing should do everything to take an incoming web page and create
some kind of object ML can operate on.

Resources:
http://alvinalexander.com/scala/scala-html-parsing-htmlcleaner-parser
http://en.wikipedia.org/wiki/Document_Object_Model
*/

object DigestHTML {
  def main(args: Array[String]) = {
    val fpath = "./learning_data/raw_html/orangette-individual_post.html"
    val digest = new DigestHTML(fpath)
    
  }
}

class DigestHTML(filePath: String) {

  val data = loadAndParseFile(filePath)

  def loadAndParseFile(filePath: String) = {
    val cleaner = new HtmlCleaner
    cleaner.clean(filePath)
  }

}
