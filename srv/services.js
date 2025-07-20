const cds = require('@sap/cds')

class SpacefarerService extends cds.ApplicationService {
  /** Registering custom event handlers */
  init() {
    this.before('*', "Spacefarers", (req) => {
        if (req.user.attr.planet && req.data.originPlanet_ID !== req.user.attr.planet) {
          return req.reject(403, 'Access Denied for interplanetary data');
        }
      });
return super.init();
  }

  
}
module.exports = { SpacefarerService }
