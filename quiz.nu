def main [
  ...jsons:path # you can pass and combine multiple quizzes. Default is './questions/exam2022.json'
]: {
  let jsons = if ($jsons | is-empty) {
    [./questions/exam2022.json]
  } else { $jsons }
  print $jsons
  let quiz = $jsons | each { open $in } | flatten
  mut total_questions = 0
  mut points_possible = 0
  mut points = 0
  let questions = $quiz | shuffle
  for i in $questions {
    print $i.question
    let options = $i.options | shuffle
    let selected = $options | input list --multi --display answer
    let also_correct = $options | where is_correct | filter {|i| not ($selected | any { $in.answer == $i.answer }) }
    $selected | each { |i|
      let status = if $i.is_correct { $'(ansi green)right(ansi reset)' } else { $'(ansi red)wrong(ansi reset)' }
      print $' - ($status): ($i.answer)'
    }
    if ($also_correct | is-not-empty) {
      if ($selected | where is_correct | is-empty) {
        if ($also_correct | length) == 1 { print 'Answer:' } else { print 'Answers:' }
      } else { print 'Other answers:' }
      $also_correct | each {|i|
        print $' - ($i.answer)'
      }
    }
    $points_possible += $options | where is_correct | length
    $points += $selected | where is_correct | length
    $total_questions += 1
    print $"\n (ansi yellow)> press 'enter' for next, anything else to quit(ansi reset)" --no-newline
    if (input listen | get code) != enter {
      print ''
      break
    }

    print $"\r(ansi erase_line)" --no-newline
    1..(term size | get columns) | each { print '-' --no-newline }
    print "\n"
  }
  let percentage_correct = 100 * $points / $points_possible | math round
  let color = if $percentage_correct < 50 { ansi red } else if $percentage_correct < 80 { ansi yellow }  else if $percentage_correct < 100 { '' } else { ansi green }
  print $"\nYou answered ($total_questions) and got ($color)($percentage_correct)%(ansi reset) correct."  
}
