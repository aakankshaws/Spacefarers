sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/spacefarers/test/integration/FirstJourney',
		'ns/spacefarers/test/integration/pages/SpacefarerList',
		'ns/spacefarers/test/integration/pages/SpacefarerObjectPage'
    ],
    function(JourneyRunner, opaJourney, SpacefarerList, SpacefarerObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/spacefarers') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheSpacefarerList: SpacefarerList,
					onTheSpacefarerObjectPage: SpacefarerObjectPage
                }
            },
            opaJourney.run
        );
    }
);