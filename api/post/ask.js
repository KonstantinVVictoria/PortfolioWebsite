const fetch = require("node-fetch");
require("dotenv").config();

const shovels_api_info = `https://app.shovels.ai/api/v1/contractors/activity/address?street={street}&city={city}&state={state}&zip={zip}&area_name={area name}&county={country}&jurisdiction={jurisdiction}&apn={apn}&latitude={latitude}&longitude={longitude}&radius={miles} --Finds contractors doing work within a defined radius of a given address optionally filtered by type of work

https://app.shovels.ai/api/v1/contractors/activity/zip?zip_codes={zip code}-- Finds contractors active in specified zip codes optionally filtered by type of work

https://app.shovels.ai/api/v1/contractors/business/address?street={street}&city={city}&state={ca}&zip={zip code}&area_name={area name}&county={country}&jurisdiction={jurisdiction}&apn={apn}&latitude={latitude}&longitude={longitude}&radius={miles} -- Finds contractors by their company address optionally filtered by type of work

https://app.shovels.ai/api/v1/contractors/business/zip?zip_codes={zip code} -- Finds contractors with a business address in a given zip code optionally filtered by type of work

https://app.shovels.ai/api/v1/contractors/business/license?license_id={id}&state={state} -- Finds contractors by their business license ID and state

https://app.shovels.ai/api/v1/contractors/{id} -- Find contractor by Shovels Id.

https://app.shovels.ai/api/v1/contractors/{id}/permits -- Get all permits associated with a single contractor.

https://app.shovels.ai/api/v1/contractors/123/metrics -- Get detailed metrics on a single contractor.

https://app.shovels.ai/api/v1/permits/address?street={street}&city={city}&state={state}&zip={zip}&area_name={area name}&county={county}&jurisdiction={jurisdiction}&apn={apn}&latitude={latitude}&longitude={longitude} -- Find permits by a given address.

https://app.shovels.ai/api/v1/permits/zip?zip_codes={zip} -- Find permits by a given zip code.

https://app.shovels.ai/api/v1/permits/state?state={ca} -- Find permits by a given state.

https://app.shovels.ai/api/v1/permits/contractor/{id} -- Find permits by the contractor Shovels ID.

https://app.shovels.ai/api/v1/permits/{id} -- Find permit by its permit Shovels ID.

https://app.shovels.ai/api/v1/markets/zip?zip_codes={zip}&start_date={ISO date}&end_date={ISO date} -- Get building contractor and permit activity statistics for a given zip code.

https://app.shovels.ai/api/v1/markets/msa?name={MSA name}&start_date={ISO date}&end_date={ISO date} -- Get building contractor and permit activity statistics for a given MSA.

https://app.shovels.ai/api/v1/markets/state?state={state}&start_date=2{ISO date}&end_date={ISO date} -- Get building contractor and permit activity statistics for a given state.

https://app.shovels.ai/api/v1/markets/jurisdiction?jurisdiction={jurisdiction}&start_date={ISO date}&end_date={ISO date} -- Get building contractor and permit activity statistics for a given permitting jurisdiction.

https://app.shovels.ai/api/v1/markets/jurisdiction/inspections?jurisdiction={jurisdiction} -- Get inspection statistics for a given permitting jurisdiction and permit tag.`;

const context = {
  role: "system",
  content: shovels_api_info,
};

module.exports = async function ask(request, response) {
  const query = request.body.query;
  const format = `\nReply with only an array of valid URIs in a JSON format: \n['uri 1', 'uri 2', ...]\nDo not reply with anything else. Omit unnecessary sections.`;

  const data = await fetch("https://api.openai.com/v1/chat/completions", {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
      Authorization: "Bearer " + process.env.OPENAI_KEY,
    },
    body: JSON.stringify({
      model: "gpt-4",
      messages: [context, { role: "user", content: query + format }],
    }),
  })
    .then((response) => response.json())
    .then((data) => JSON.parse(data.choices[0].message.content));
  let shovels_api_endpoint = data[0];
  let api_data = await fetch(shovels_api_endpoint, {
    method: "GET",
    headers: {
      accept: "application/json",
      api_key: process.env.SHOVELSAI_API_KEY,
    },
  }).then((response) => response.json());
  response.send(api_data);
};
