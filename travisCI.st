[Scanner
  allowUnderscoreAsAssignment: false;
  prefAllowUnderscoreSelectors: true] on: Error do: ["Just for Squeak"].

Metacello new
  baseline: 'Mist';
  repository: 'filetree://', MetacelloBuilderTravisCI gitPath, '/mist/packages';
  load.

"Run the tests"
TravisCIHarness
  value: #( 'Mist' )
  value: 'TravisCISuccess.txt' 
  value: 'TravisCIFailure.txt'.
