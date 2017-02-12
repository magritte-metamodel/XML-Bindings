baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				project: 'XMLParser'
					with: [ spec
						className: #ConfigurationOfXMLParser;
						versionString: #stable;
						repository: 'http://smalltalkhub.com/mc/PharoExtras/XMLParser/main/' ];
				project: 'Magritte'
					with: [ spec
						className: #ConfigurationOfMagritte3;
						versionString: #stable;
						repository: 'http://smalltalkhub.com/mc/Magritte/Magritte3/main/' ];
				package: 'Magritte-Tests-XMLBinding';
				package: 'Magritte-XMLBinding' with: [ spec requires: #(XMLParser Magritte) ];
				group: 'default' with: #('Magritte-XMLBinding' 'Magritte-Tests-XMLBinding') ]