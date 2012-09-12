Gofer new
  package: 'Mist';
  repository: (MCFileTreeRepository path: MetacelloBuilderTravisCI gitPath, '/mist/packages');
  load.

"Run the tests"
TravisCIHarness
  value: #( 'Mist' )
  value: 'TravisCISuccess.txt' 
  value: 'TravisCIFailure.txt'.
