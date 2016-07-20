baseline
baseline: spec
    <baseline>
    spec
        for: #common
        do: [ 
		spec package: 'JSON' with: [ spec repository: 'http://www.squeaksource.com/JSON' ].
		spec configuration: 'ExternalWebBrowser' with: [ spec repository: 'http://www.squeaksource.com/MetacelloRepository' ].
		"Morphic Testing Framework:"
		spec baseline: 'Project12' with: [ spec repository: 'github://HPI-SWA-Teaching/Morphic-Testing-Framework:master/packages' ].
            spec
                package: 'IssueIntegration-Core' with: [ spec requires: #('JSON' 'ExternalWebBrowser') ];
                package: 'IssueIntegration-Tests' with: [ spec requires: #('IssueIntegration-Core' 'IssueIntegration-UI' 'IssueIntegration-Testserver' 'Project12') ];
                package: 'IssueIntegration-Testserver';
	 	    package: 'IssueIntegration-UI' with: [ spec requires: #('IssueIntegration-Core') ].
            spec
                group: 'default' with: #('IssueIntegration-UI');
		    group: 'Core' with: #('IssueIntegration-Core');
                group: 'Tests' with: #('IssueIntegration-Tests');
		    group: 'Testserver' with: #('IssueIntegration-Testserver');	
                group: 'TravisCI' with: #('Tests') ]