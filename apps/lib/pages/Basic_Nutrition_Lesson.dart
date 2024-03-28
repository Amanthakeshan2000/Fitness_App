import 'package:flutter/material.dart';

class Basic_Nutrition extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Question & Answer',
      theme: ThemeData(
        primaryColorDark: Colors.blue,
      ),
      home: QuestionPage(),
    );
  }
}

class QuestionPage extends StatefulWidget {
  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  final List<Question> _questions = [
    Question(
      question: 'I heard that MyPyramid has been replaced. Is that true?',
      answer: 'Yes. The MyPlate food guidance system replaced MyPyramid in 2011. MyPlate focuses on portion control and using the food groups to create a balanced diet.',
    ),
    Question(
      question: 'What is a "healthy diet"?',
      answer: 'A healthy eating pattern is one that provides enough of each essential nutrient from nutrient-dense foods, contains a variety of foods from all of the basic food groups, and focuses on balancing calories consumed with calories expended to help you achieve and sustain a healthy weight. This eating pattern limits intake of solid fats, sugar, salt (sodium) and alcohol. The Dietary Guidelines for Americans consumer pamphlet, Start Simple with MyPlate, provides guidance for creating a healthy eating pattern to reduce the risk of chronic diseases such as diabetes, cancer, and osteoporosis.',
    ),
    Question(
      question: 'I would like to get advice about my eating habits. Who should I talk to?',
      answer: 'Registered Dietitian Nutritionists (RDN) are health professionals who are trained to provide counseling on nutrition and eating habits. An RDN can provide personalized dietary advice taking into consideration your health status, lifestyle, and food likes and dislikes. The Academy of Nutrition and Dietetics has a Find a Nutrition Expert online search tool that allows you to locate an RDN in your geographical area. Be advised that this list may not include all RDNs in your area.',
    ),
    Question(
      question: 'How many servings from each food group do I need each day?',
      answer: 'The number of servings you need each day from each food group depends on your calorie needs. To determine your calorie needs and find the number of servings that is right for you, please visit the MyPlate Plan.',
    ),
    Question(
      question: 'How is food digested?',
      answer: 'The Food and Nutrition Board (FNB) defines the Tolerable Upper Intake Level (UL) as the highest level of daily nutrient intake that is likely to pose no risk of adverse health effects to almost all individuals in the general population. This level is different for each nutrient. To view the UL for Vitamins and Elements (also referred to as minerals or electrolytes), please refer to the Tolerable Upper Intake Levels table from the FNB.',
    ),
    Question(
      question: 'How do I know if nutrition information I find on the Internet is reliable?',
      answer: 'Digestion begins in the mouth, when we chew and swallow, and is completed in the small intestine. Digestion involves the mixing of food, its movement through the digestive tract, and the breakdown of food into smaller molecules. The digestive process varies for different kinds of food. The National Digestive Diseases Information Clearinghouse website, Your Digestive System and How It Works, explains how food is digested and why digestion is important. This resource is also available in Spanish.',
    ),
    Question(
      question: 'Is there a high blood pressure diet?',
      answer: 'MedlinePlus Evaluating Internet Health Information: A Tutorial offer tips for evaluating the quality of health information on websites.',
    ),
    Question(
      question: 'What foods cause gas and bloating?',
      answer: 'Nutrition.gov’s High Blood Pressure page provides nutrition tips for managing high blood pressure, also known as hypertension. You can also read more about salt, how it affects the body, and how to eat less on the Salt and Sodium page.',
    ),
    Question(
      question: 'What are the most common foods that people are allergic to?',
      answer: 'Causes of digestive discomfort vary from person to person. If you are concerned, talk to your doctor. They can help you find out why you are having symptoms and how you can make them better.',
    ),
    Question(
      question: 'How can I get nutrition advice about a medical condition?',
      answer: 'The Food and Drug Administrations (FDA) Food Allergies page lists the most common foods to cause allergies as milk, eggs, fish, crab, lobster, shrimp, almonds and other tree nuts, and peanuts (one of the chief foods responsible for severe anaphylaxis).',
    ),
    Question(
      question: 'What foods can I eat to manage my diabetes or pre-diabetes?',
      answer: 'Talk with your doctor or other health professional about referring you to a registered dietitian nutritionist (RDN). An RDN can provide personalized dietary advice taking into consideration your health status (such as other medical conditions), lifestyle, and food likes and dislikes.',
    ),
    // Add more questions here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Question & Answer',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.black, // Change app bar color to black
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/home1.jpg'), // Change path to your image file
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.builder(
          itemCount: _questions.length,
          itemBuilder: (context, index) {
            return QuestionWidget(question: _questions[index]);
          },
        ),
      ),
    );
  }
}

class Question {
  final String question;
  final String answer;

  Question({required this.question, required this.answer});
}

class QuestionWidget extends StatefulWidget {
  final Question question;

  QuestionWidget({required this.question});

  @override
  _QuestionWidgetState createState() => _QuestionWidgetState();
}

class _QuestionWidgetState extends State<QuestionWidget> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Column(
        children: [
          ListTile(
            title: Text(
              widget.question.question,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            trailing: Icon(
              _isExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down,
              size: 30,
              color: Colors.blue,
            ),
            onTap: () {
              setState(() {
                _isExpanded = !_isExpanded;
              });
            },
          ),
          if (_isExpanded)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                widget.question.answer,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
        ],
      ),
    );
  }
}
