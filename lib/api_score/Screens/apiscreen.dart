import 'package:flutter/material.dart';
import 'package:gradcon/api_score/Screens/resultScreen.dart';
import 'package:gradcon/api_score/api_calulation.dart';
import 'package:gradcon/utils/global_variable.dart';

import '../../widgets/text_field_input.dart';

class apiScreen extends StatefulWidget {
  @override
  State<apiScreen> createState() => _apiScreenState();
}

class _apiScreenState extends State<apiScreen> {
  int _currentStep = 0;
  bool faculty_sc = true;
  final TextEditingController _ppr = TextEditingController();
  final TextEditingController _noOfInternationBooks = TextEditingController();
  final TextEditingController _noOfNationBooks = TextEditingController();
  final TextEditingController _internationalBooksEdited =
      TextEditingController();
  final TextEditingController _nationBooksEdited = TextEditingController();
  final TextEditingController _eContentModules = TextEditingController();
  final TextEditingController _noOfMOOCsModules = TextEditingController();
  final TextEditingController _noOfPhdDegreesSubmittedUnder =
      TextEditingController();
  final TextEditingController _noOfPhdThesisSubmittedUnder =
      TextEditingController();
  final TextEditingController _noOfMphilDegreesSubmittedUnder =
      TextEditingController();
  final TextEditingController _projectCompletedAbove10Lac =
      TextEditingController();
  final TextEditingController _projectCompletedBelow10Lac =
      TextEditingController();
  final TextEditingController _projectOngoingAbove10Lac =
      TextEditingController();
  final TextEditingController _projectOnGoingBelow10Lac =
      TextEditingController();
  final TextEditingController _consult = TextEditingController();
  final TextEditingController _intPatents = TextEditingController();
  final TextEditingController _nationalPatents = TextEditingController();
  final TextEditingController _interPolicy = TextEditingController();
  final TextEditingController _nationalPolicy = TextEditingController();
  final TextEditingController _statePolicy = TextEditingController();
  final TextEditingController _internationOutsideCountry =
      TextEditingController();
  final TextEditingController _interNationInsideCountry =
      TextEditingController();
  final TextEditingController _nation = TextEditingController();
  final TextEditingController _stateUniversity = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: (Container(
            padding: MediaQuery.of(context).size.width > webScreenSize
                ? EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width / 3)
                : const EdgeInsets.symmetric(horizontal: 32),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('Answer the questions to get Api Score',
                    style:
                        TextStyle(fontWeight: FontWeight.w300, fontSize: 20)),
                Stepper(
                  steps: [
                    Step(
                      title: const Text('Research Papers Published'),
                      content: Column(
                        children: [
                          const SizedBox(
                            height: 8,
                          ),
                          TextFieldInput(
                              textEditingController: _ppr,
                              hintText: 'Research Papers Published',
                              textInputType: TextInputType.number),
                        ],
                      ),
                    ),
                    Step(
                      title: Text('Books Published'),
                      content: Column(
                        children: [
                          const SizedBox(
                            height: 8,
                          ),
                          TextFieldInput(
                              textEditingController: _noOfInternationBooks,
                              hintText: 'international publishers books',
                              textInputType: TextInputType.number),
                          const SizedBox(
                            height: 8,
                          ),
                          TextFieldInput(
                              textEditingController: _noOfNationBooks,
                              hintText: 'national publishers books',
                              textInputType: TextInputType.number),
                          const SizedBox(
                            height: 8,
                          ),
                          TextFieldInput(
                              textEditingController: _internationalBooksEdited,
                              hintText: 'international books edited',
                              textInputType: TextInputType.number),
                          const SizedBox(
                            height: 8,
                          ),
                          TextFieldInput(
                              textEditingController: _nationBooksEdited,
                              hintText: 'national books edited',
                              textInputType: TextInputType.number),
                          const SizedBox(
                            height: 8,
                          ),
                          TextFieldInput(
                              textEditingController: _eContentModules,
                              hintText: 'eContent Modules',
                              textInputType: TextInputType.number),
                          const SizedBox(
                            height: 8,
                          ),
                          TextFieldInput(
                              textEditingController: _noOfMOOCsModules,
                              hintText: 'No. of MOOCs Modules',
                              textInputType: TextInputType.number),
                        ],
                      ),
                    ),
                    Step(
                      title: Text('Research Projects'),
                      content: Column(
                        children: [
                          const SizedBox(
                            height: 8,
                          ),
                          TextFieldInput(
                              textEditingController:
                                  _projectCompletedAbove10Lac,
                              hintText: 'Projects Completed Above 10 Lac',
                              textInputType: TextInputType.number),
                          const SizedBox(
                            height: 8,
                          ),
                          TextFieldInput(
                              textEditingController:
                                  _projectCompletedBelow10Lac,
                              hintText: 'Projects Completed Below 10 Lac',
                              textInputType: TextInputType.number),
                          const SizedBox(
                            height: 8,
                          ),
                          TextFieldInput(
                              textEditingController: _projectOngoingAbove10Lac,
                              hintText: 'Projects Ongoing Above 10 Lac',
                              textInputType: TextInputType.number),
                          const SizedBox(
                            height: 8,
                          ),
                          TextFieldInput(
                              textEditingController: _projectOnGoingBelow10Lac,
                              hintText: 'Projects Ongoing Below 10 Lac',
                              textInputType: TextInputType.number),
                          const SizedBox(
                            height: 8,
                          ),
                          TextFieldInput(
                              textEditingController: _consult,
                              hintText: 'No of Projects Consulted',
                              textInputType: TextInputType.number),
                        ],
                      ),
                    ),
                    Step(
                      title: const Text('Patents'),
                      content: Column(
                        children: [
                          const SizedBox(
                            height: 8,
                          ),
                          TextFieldInput(
                              textEditingController: _intPatents,
                              hintText: 'No of International Patents',
                              textInputType: TextInputType.number),
                          const SizedBox(
                            height: 8,
                          ),
                          TextFieldInput(
                              textEditingController: _nationalPatents,
                              hintText: 'No of National Patents',
                              textInputType: TextInputType.number),
                          const SizedBox(
                            height: 8,
                          ),
                          TextFieldInput(
                              textEditingController: _interPolicy,
                              hintText: 'No of International Policies',
                              textInputType: TextInputType.number),
                          const SizedBox(
                            height: 8,
                          ),
                          TextFieldInput(
                              textEditingController: _nationalPolicy,
                              hintText: 'No of National Policies',
                              textInputType: TextInputType.number),
                          const SizedBox(
                            height: 8,
                          ),
                          TextFieldInput(
                              textEditingController: _statePolicy,
                              hintText: 'No of State Policies',
                              textInputType: TextInputType.number),
                        ],
                      ),
                    ),
                    Step(
                      title: const Text('Research Guidance'),
                      content: Container(
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 8,
                            ),
                            TextFieldInput(
                                textEditingController:
                                    _noOfPhdDegreesSubmittedUnder,
                                hintText: 'No of Phd Degrees Under You',
                                textInputType: TextInputType.number),
                            const SizedBox(
                              height: 8,
                            ),
                            TextFieldInput(
                                textEditingController:
                                    _noOfPhdThesisSubmittedUnder,
                                hintText: 'No of Phd Thesis Under You',
                                textInputType: TextInputType.number),
                            const SizedBox(
                              height: 8,
                            ),
                            TextFieldInput(
                                textEditingController:
                                    _noOfMphilDegreesSubmittedUnder,
                                hintText:
                                    'No of Mphil/P.G dissertation Under You',
                                textInputType: TextInputType.number),
                          ],
                        ),
                      ),
                    ),
                    Step(
                      title: const Text('Presentations Invited'),
                      content: Column(
                        children: [
                          const SizedBox(
                            height: 8,
                          ),
                          TextFieldInput(
                              textEditingController: _internationOutsideCountry,
                              hintText: 'International (Abroad) Presentations',
                              textInputType: TextInputType.number),
                          const SizedBox(
                            height: 8,
                          ),
                          TextFieldInput(
                              textEditingController: _interNationInsideCountry,
                              hintText:
                                  'International (within country) Presentations',
                              textInputType: TextInputType.number),
                          const SizedBox(
                            height: 8,
                          ),
                          TextFieldInput(
                              textEditingController: _nation,
                              hintText: 'National Presentations',
                              textInputType: TextInputType.number),
                          const SizedBox(
                            height: 8,
                          ),
                          TextFieldInput(
                              textEditingController: _stateUniversity,
                              hintText: 'State/University Level Presentations',
                              textInputType: TextInputType.number),
                        ],
                      ),
                    ),
                  ],
                  onStepTapped: (int newIndex) {
                    setState(() {
                      _currentStep = newIndex;
                    });
                  },
                  currentStep: _currentStep,
                  onStepContinue: () {
                    if (_currentStep != 5) {
                      setState(() {
                        _currentStep += 1;
                      });
                    } else if (_currentStep == 5) {
                      ApiScore apiscore = new ApiScore();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResultsPage(
                              apiResult: apiscore.researchPapers(
                                      int.parse(_ppr.text),faculty_sc) +
                                  apiscore.booksScore(
                                    int.parse(_noOfInternationBooks.text),
                                    int.parse(_noOfNationBooks.text),
                                    int.parse(_internationalBooksEdited.text),
                                    int.parse(_nationBooksEdited.text),
                                    int.parse(_eContentModules.text),
                                    int.parse(_noOfMOOCsModules.text),
                                  ) +
                                  apiscore.researchProject(
                                      int.parse(_projectOngoingAbove10Lac.text),
                                      int.parse(
                                          _projectCompletedBelow10Lac.text),
                                      int.parse(_projectOnGoingBelow10Lac.text),
                                      int.parse(
                                          _projectCompletedAbove10Lac.text),
                                      int.parse(_consult.text)) +
                                  apiscore.researchGuidanceScore(
                                      int.parse(
                                          _noOfMphilDegreesSubmittedUnder.text),
                                      int.parse(
                                          _noOfPhdThesisSubmittedUnder.text),
                                      int.parse(_noOfMphilDegreesSubmittedUnder
                                          .text)) +
                                  apiscore.patents(
                                      int.parse(_intPatents.text),
                                      int.parse(_nationalPatents.text),
                                      int.parse(_interPolicy.text),
                                      int.parse(_nationalPolicy.text),
                                      int.parse(_statePolicy.text)) +
                                  apiscore.invitePresentation(
                                      int.parse(
                                          _internationOutsideCountry.text),
                                      int.parse(_interNationInsideCountry.text),
                                      int.parse(_nation.text),
                                      int.parse(_stateUniversity.text))),
                        ),
                      );
                    }
                  },
                  onStepCancel: () {
                    if (_currentStep != 0) {
                      setState(() {
                        _currentStep -= 1;
                      });
                    }
                    else if(_currentStep ==0){
                      Navigator.pop(context);
                    }
                  },
                )
              ],
            ),
          )),
        ),
      ),
    );
  }
}
