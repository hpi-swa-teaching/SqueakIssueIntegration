baseline
baseline: spec
    <baseline>
    spec
        for: #common
        do: [ 
		spec package: 'JSON' with: [ spec repository: 'http://www.squeaksource.com/JSON'].
		spec package: 'FFI' with: [ spec repository: 'http://source.squeakfoundation.org/FFI'].
		spec package: 'Applescript' with: [ spec repository: 'http://www.squeaksource.com/Applescript'].
		spec package: 'ExternalWebBrowser' with: [ spec repository: 'http://www.squeaksource.com/ExternalWebBrowser'].
		spec baseline: 'Signals' with: [
				spec repository: 'github://marceltaeumel/signals:master/repository'].
		spec baseline: 'Widgets' with: [
				spec repository: 'github://hpi-swa/widgets:master/repository'].
            spec
                package: 'ProjectXX-Core' with:[ spec requires: #('JSON' 'Widgets' 'Signals' 'FFI' 'Applescript' 'ExternalWebBrowser')];
                package: 'ProjectXX-Tests' with: [ spec requires: #('ProjectXX-Core') ].
            spec
                group: 'default' with: #('ProjectXX-Core');
                group: 'Tests' with: #('ProjectXX-Tests');
                group: 'TravisCI' with: #('Tests')
	]