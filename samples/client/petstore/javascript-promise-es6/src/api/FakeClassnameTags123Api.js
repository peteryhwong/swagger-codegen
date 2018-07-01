/**
 * Swagger Petstore
 * This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\
 *
 * OpenAPI spec version: 1.0.0
 * Contact: apiteam@swagger.io
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 *
 */


import ApiClient from "../ApiClient";
import Client from '../model/Client';

/**
* FakeClassnameTags123 service.
* @module api/FakeClassnameTags123Api
* @version 1.0.0
*/
export default class FakeClassnameTags123Api {

    /**
    * Constructs a new FakeClassnameTags123Api. 
    * @alias module:api/FakeClassnameTags123Api
    * @class
    * @param {module:ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }



    /**
     * To test class name in snake case
     * @param {module:model/Client} body client model
     * @return {Promise} a {@link https://www.promisejs.org/|Promise}, with an object containing data of type {@link module:model/Client} and HTTP response
     */
    testClassnameWithHttpInfo(body) {
      let postBody = body;

      // verify the required parameter 'body' is set
      if (body === undefined || body === null) {
        throw new Error("Missing the required parameter 'body' when calling testClassname");
      }


      let pathParams = {
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['api_key_query'];
      let contentTypes = ['application/json'];
      let accepts = ['application/json'];
      let returnType = Client;

      return this.apiClient.callApi(
        '/fake_classname_test', 'PATCH',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType
      );
    }

    /**
     * To test class name in snake case
     * @param {module:model/Client} body client model
     * @return {Promise} a {@link https://www.promisejs.org/|Promise}, with data of type {@link module:model/Client}
     */
    testClassname(body) {
      return this.testClassnameWithHttpInfo(body)
        .then(function(response_and_data) {
          return response_and_data.data;
        });
    }


}
