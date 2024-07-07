class Quiz {
  final String question;
  final List<String> options;
  final String answer;

  Quiz({required this.question, required this.options, required this.answer});
}

List<Quiz> quizBank = [
  Quiz(
    question: "What is Dart primarily used for?",
    options: [
      'Game development',
      'Web development',
      'Mobile app development',
      'Data analysis',
    ],
    answer: 'Mobile app development',
  ),
  Quiz(
    question: "Which programming paradigm is Dart based on?",
    options: [
      'Procedural',
      'Functional',
      'Object-Oriented',
      ' Logical',
    ],
    answer: 'Object-Oriented',
  ),
  Quiz(
    question: "In Dart, what is the main purpose of the 'main' function?",
    options: [
      'Declaring variables',
      'Handling exceptions',
      "Defining classes",
      "Starting the program's execution"
    ],
    answer: "Starting the program's execution",
  ),
  Quiz(
    question: "What keyword is used to declare a constant variable in Dart?",
    options: [
      " final",
      'var',
      'const',
      ' let',
    ],
    answer: 'const',
  ),
  Quiz(
    question: "Which data type is used for storing a single character in Dart?",
    options: [
      'char',
      'string',
      'int',
      'bool',
    ],
    answer: 'string',
  ),
  Quiz(
    question:
        "In Dart, what does the '=>'' symbol represent when used in a function",
    options: [
      ' An assignment operator',
      'A lambda expression',
      ' A comment',
      'A bitwise operation',
    ],
    answer:'A lambda expression',
  ),
  Quiz(
    question:
        "What is the purpose of the 'async' and 'await' keywords in Dart?",
    options: [
      'Defining classes',
      'Managing exceptions',
      'Handling asynchronous operations',
      'Creating constants',
    ],
    answer:'Handling asynchronous operations',
  ),
  Quiz(
    question: "Which collection type in Dart allows only unique values?",
    options: [
      'List',
      'Set',
      'Map',
      'Queue',
    ],
    answer:'Set',
  ),
  Quiz(
    question: "What is Dart primarily used for?",
    options: [
      '#include',
      'import',
      'include',
      'load',
    ],
    answer: 'import',
  ),
  Quiz(
    question: "What is the primary purpose of a constructor in Dart?",
    options: [
      'Initializing variables',
      'Creating loops',
      'Handling exceptions',
      'Defining classes',
    ],
    answer:  'Initializing variables',
  ),
];
