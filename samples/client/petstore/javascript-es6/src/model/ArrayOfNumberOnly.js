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


import ApiClient from '../ApiClient';





/**
* The ArrayOfNumberOnly model module.
* @module model/ArrayOfNumberOnly
* @version 1.0.0
*/
export default class ArrayOfNumberOnly {
    /**
    * Constructs a new <code>ArrayOfNumberOnly</code>.
    * @alias module:model/ArrayOfNumberOnly
    * @class
    */

    constructor() {
        

        
        

        

        
    }

    /**
    * Constructs a <code>ArrayOfNumberOnly</code> from a plain JavaScript object, optionally creating a new instance.
    * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
    * @param {Object} data The plain JavaScript object bearing properties of interest.
    * @param {module:model/ArrayOfNumberOnly} obj Optional instance to populate.
    * @return {module:model/ArrayOfNumberOnly} The populated <code>ArrayOfNumberOnly</code> instance.
    */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ArrayOfNumberOnly();

            
            
            

            if (data.hasOwnProperty('ArrayNumber')) {
                obj['ArrayNumber'] = ApiClient.convertToType(data['ArrayNumber'], ['Number']);
            }
        }
        return obj;
    }

    /**
    * @member {Array.<Number>} ArrayNumber
    */
    ArrayNumber = undefined;








}


