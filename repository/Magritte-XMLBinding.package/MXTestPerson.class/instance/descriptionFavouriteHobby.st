accessing-description
descriptionFavouriteHobby
	<magritteDescription>
	^ MASingleOptionDescription new
		accessor: #favouriteHobby;
		label: 'Favourite hobby';
		options: self class allHobbies;
		beXmlElement;
		priority: 30;
		yourself