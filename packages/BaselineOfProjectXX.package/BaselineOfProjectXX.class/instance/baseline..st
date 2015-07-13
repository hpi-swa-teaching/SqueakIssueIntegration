baseline
baseline: spec
    <baseline>
    spec
        for: #common
        do: [ 
		spec package: 'JSON' with: [ spec repository: 'http://www.squeaksource.com/JSON'].
		spec configuration: 'FFI' with: [ spec repository: 'http://www.squeaksource.com/MetacelloRepository'].
		spec package: 'Applescript-Core' with: [ spec repository: 'http://www.squeaksource.com/Applescript'].
		spec configuration: 'ExternalWebBrowser' with: [ spec repository: 'http://www.squeaksource.com/MetacelloRepository'].
		spec package: 'Icons' with: [
			spec repository: 'http://www.hpi.uni-potsdam.de/hirschfeld/squeaksource/SwaUtilities'].
		spec baseline: 'Signals' with: [
				spec repository: 'github://marceltaeumel/signals:master/repository'].
		spec baseline: 'Widgets' with: [
				spec repository: 'github://hpi-swa/widgets:master/repository'].
            spec
                package: 'ProjectXX-Core' with:[ spec requires: #('JSON' 'Widgets' 'Signals' 'FFI' 'Applescript-Core' 'ExternalWebBrowser' 'Icons')];
                package: 'ProjectXX-Tests' with: [ spec requires: #('ProjectXX-Core') ].
            spec
                group: 'default' with: #('ProjectXX-Core');
                group: 'Tests' with: #('ProjectXX-Tests');
                group: 'TravisCI' with: #('Tests')
	]
