class ApiScore {
  //final bool faculty_sc;

  //ApiScore(this.faculty_sc);

  int researchPapers(int ppr,bool faculty_sc) {
    int sc1 = 0;
    if (faculty_sc) {
      sc1 = 8 * ppr;
      return sc1;
    } else if (!faculty_sc) {
      sc1 = 10 * ppr;
      return sc1;
    } else {
      return sc1;
    }
  }

  int booksScore(
    int noOfInternationBooks,
    int noOfNationBooks,
    int internationalBooksEdited,
    int nationBooksEdited,
    int eContentModules,
    int noOfMOOCsModules,
  ) {
    int bookScore = 10 * internationalBooksEdited +
        8 * nationBooksEdited +
        10 * noOfInternationBooks +
        8 * noOfNationBooks +
        5 * eContentModules +
        5 * noOfMOOCsModules;
    return bookScore;
  }

  int researchGuidanceScore(int noOfPhdDegreesSubmittedUnder,
      int noOfPhdThesisSubmittedUnder, int noOfMphilDegreesSubmittedUnder) {
    int guidanceScore = noOfPhdDegreesSubmittedUnder * 10 +
        noOfPhdThesisSubmittedUnder * 5 +
        2* noOfPhdThesisSubmittedUnder;
    return guidanceScore;
  }

  int researchProject(
      int projectCompletedAbove10Lac,
      int projectCompletedBelow10Lac,
      int projectOngoingAbove10Lac,
      int projectOnGoingBelow10Lac,
      int consult) {
    int score = projectCompletedAbove10Lac * 10 +
        projectCompletedBelow10Lac * 5 +
        projectOngoingAbove10Lac * 5 +
        projectOnGoingBelow10Lac * 2 +
        consult;
    return score;
  }

  int patents(int intPatents, int nationalPatents, int interPolicy,
      int nationalPolicy, int statePolicy) {
    int sc4 = intPatents * 10 +
        nationalPatents * 7 +
        interPolicy * 10 +
        nationalPolicy * 7 +
        statePolicy * 4;

    return sc4;
  }

  int invitePresentation(int internationOutsideCountry,
      int interNationInsideCountry, int nation, int stateUniversity) {
    int presentationScore = 7 * internationOutsideCountry +
        5 * interNationInsideCountry +
        3 * nation +
        2 * stateUniversity;
    return presentationScore;
  }
}

ApiScore apiscore = new ApiScore();