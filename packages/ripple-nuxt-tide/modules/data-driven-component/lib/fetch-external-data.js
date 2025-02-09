/**
 * This module is used when Drupal delivers a
 * Data-Driven Component as a Paragraph on a
 * landing page, such as a map with data layers.
 * The module fetches the required data and returns it.
 *
 * Returns a Promise the resolves when the data is fetched
 *
 * NOTE 12 Dec 18: This module is unused for now. The Map
 * fetches its own data, but it seems smart to leave the structure
 * in place for future data-driven components.
 */
const axios = require('axios')

export default async function fetchDataFromExternalSource (newConfig) {
  // TODO: Pass options in and merge with defaults
  // const options = Object.assign(defaults, this.options.tide, moduleOptions)

  // other sources could be added later, other data sets
  const config = {
    requestSource: 'gis',
    requestName: 'wifimap',
    apiUrl: 'https://prod-gis.myvictoria.vic.gov.au'
  }
  console.log(config)

  try {
    const res = await axios.get(config.apiUrl)
    console.log('response from module', res)
    return res
  } catch (err) {
    throw new Error(`${err.toString()}`)
  }
}
