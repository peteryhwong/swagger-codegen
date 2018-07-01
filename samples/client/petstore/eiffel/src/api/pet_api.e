note
 description:"[
		Swagger Petstore
 		This is a sample server Petstore server.  You can find out more about Swagger at [http://swagger.io](http://swagger.io) or on [irc.freenode.net, #swagger](http://swagger.io/irc/).  For this sample, you can use the api key `special-key` to test the authorization filters.
  		OpenAPI spec version: 1.0.0
 	    Contact: apiteam@swagger.io

  	NOTE: This class is auto generated by the swagger code generator program.

 		 Do not edit the class manually.
 	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS:"Eiffel swagger codegen", "src=https://github.com/swagger-api/swagger-codegen.git", "protocol=uri"

class
	PET_API

inherit

    API_I


feature -- API Access


	add_pet (body: PET)
			-- Add a new pet to the store
			-- 
			-- 
			-- argument: body Pet object that needs to be added to the store (required)
			-- 
			-- 
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			l_request.set_body(body)
			l_path := "/pet"


			if attached {STRING} api_client.select_header_accept (<<"application/xml", "application/json">>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type (<<"application/json", "application/xml">>),"Content-Type")
			l_request.set_auth_names (<<"petstore_auth">>)
			l_response := api_client.call_api (l_path, "Post", l_request, agent serializer, Void)
			if l_response.has_error then
				last_error := l_response.error
			end
		end	

	delete_pet (pet_id: INTEGER_64; api_key: STRING_32)
			-- Deletes a pet
			-- 
			-- 
			-- argument: pet_id Pet id to delete (required)
			-- 
			-- argument: api_key  (optional)
			-- 
			-- 
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			
			l_path := "/pet/{petId}"
			l_path.replace_substring_all ("{"+"petId"+"}", api_client.url_encode (pet_id.out))

			if attached api_key as l_api_key then
				l_request.add_header(l_api_key.out,"api_key");
			end

			if attached {STRING} api_client.select_header_accept (<<"application/xml", "application/json">>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type (<<>>),"Content-Type")
			l_request.set_auth_names (<<"petstore_auth">>)
			l_response := api_client.call_api (l_path, "Delete", l_request, agent serializer, Void)
			if l_response.has_error then
				last_error := l_response.error
			end
		end	

	find_pets_by_status (status: LIST [STRING_32]): detachable LIST [PET]
			-- Finds Pets by status
			-- Multiple status values can be provided with comma separated strings
			-- 
			-- argument: status Status values that need to be considered for filter (required)
			-- 
			-- 
			-- Result LIST [PET]
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			
			l_path := "/pet/findByStatus"
			l_request.fill_query_params(api_client.parameter_to_tuple("csv", "status", status));


			if attached {STRING} api_client.select_header_accept (<<"application/xml", "application/json">>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type (<<>>),"Content-Type")
			l_request.set_auth_names (<<"petstore_auth">>)
			l_response := api_client.call_api (l_path, "Get", l_request, Void, agent deserializer)
			if l_response.has_error then
				last_error := l_response.error
			elseif attached { LIST [PET] } l_response.data ({ LIST [PET] }) as l_data then
				Result := l_data
			else
				create last_error.make ("Unknown error: Status response [ " + l_response.status.out + "]")
			end
		end	

	find_pets_by_tags (tags: LIST [STRING_32]): detachable LIST [PET]
			-- Finds Pets by tags
			-- Multiple tags can be provided with comma separated strings. Use tag1, tag2, tag3 for testing.
			-- 
			-- argument: tags Tags to filter by (required)
			-- 
			-- 
			-- Result LIST [PET]
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			
			l_path := "/pet/findByTags"
			l_request.fill_query_params(api_client.parameter_to_tuple("csv", "tags", tags));


			if attached {STRING} api_client.select_header_accept (<<"application/xml", "application/json">>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type (<<>>),"Content-Type")
			l_request.set_auth_names (<<"petstore_auth">>)
			l_response := api_client.call_api (l_path, "Get", l_request, Void, agent deserializer)
			if l_response.has_error then
				last_error := l_response.error
			elseif attached { LIST [PET] } l_response.data ({ LIST [PET] }) as l_data then
				Result := l_data
			else
				create last_error.make ("Unknown error: Status response [ " + l_response.status.out + "]")
			end
		end	

	pet_by_id (pet_id: INTEGER_64): detachable PET
			-- Find pet by ID
			-- Returns a single pet
			-- 
			-- argument: pet_id ID of pet to return (required)
			-- 
			-- 
			-- Result PET
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			
			l_path := "/pet/{petId}"
			l_path.replace_substring_all ("{"+"petId"+"}", api_client.url_encode (pet_id.out))


			if attached {STRING} api_client.select_header_accept (<<"application/xml", "application/json">>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type (<<>>),"Content-Type")
			l_request.set_auth_names (<<"api_key">>)
			l_response := api_client.call_api (l_path, "Get", l_request, Void, agent deserializer)
			if l_response.has_error then
				last_error := l_response.error
			elseif attached { PET } l_response.data ({ PET }) as l_data then
				Result := l_data
			else
				create last_error.make ("Unknown error: Status response [ " + l_response.status.out + "]")
			end
		end	

	update_pet (body: PET)
			-- Update an existing pet
			-- 
			-- 
			-- argument: body Pet object that needs to be added to the store (required)
			-- 
			-- 
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			l_request.set_body(body)
			l_path := "/pet"


			if attached {STRING} api_client.select_header_accept (<<"application/xml", "application/json">>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type (<<"application/json", "application/xml">>),"Content-Type")
			l_request.set_auth_names (<<"petstore_auth">>)
			l_response := api_client.call_api (l_path, "Put", l_request, agent serializer, Void)
			if l_response.has_error then
				last_error := l_response.error
			end
		end	

	update_pet_with_form (pet_id: INTEGER_64; name: STRING_32; status: STRING_32)
			-- Updates a pet in the store with form data
			-- 
			-- 
			-- argument: pet_id ID of pet that needs to be updated (required)
			-- 
			-- argument: name Updated name of the pet (optional)
			-- 
			-- argument: status Updated status of the pet (optional)
			-- 
			-- 
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			
			l_path := "/pet/{petId}"
			l_path.replace_substring_all ("{"+"petId"+"}", api_client.url_encode (pet_id.out))

			if attached name as l_name then
				l_request.add_form(l_name,"name");
			end
			if attached status as l_status then
				l_request.add_form(l_status,"status");
			end

			if attached {STRING} api_client.select_header_accept (<<"application/xml", "application/json">>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type (<<"application/x-www-form-urlencoded">>),"Content-Type")
			l_request.set_auth_names (<<"petstore_auth">>)
			l_response := api_client.call_api (l_path, "Post", l_request, agent serializer, Void)
			if l_response.has_error then
				last_error := l_response.error
			end
		end	

	upload_file (pet_id: INTEGER_64; additional_metadata: STRING_32; file: detachable FILE): detachable API_RESPONSE
			-- uploads an image
			-- 
			-- 
			-- argument: pet_id ID of pet to update (required)
			-- 
			-- argument: additional_metadata Additional data to pass to server (optional)
			-- 
			-- argument: file file to upload (optional)
			-- 
			-- 
			-- Result API_RESPONSE
		require
		local
  			l_path: STRING
  			l_request: API_CLIENT_REQUEST
  			l_response: API_CLIENT_RESPONSE
		do
			reset_error
			create l_request
			
			l_path := "/pet/{petId}/uploadImage"
			l_path.replace_substring_all ("{"+"petId"+"}", api_client.url_encode (pet_id.out))

			if attached additional_metadata as l_additional_metadata then
				l_request.add_form(l_additional_metadata,"additionalMetadata");
			end
			if attached file as l_file then
				l_request.add_form(l_file,"file");
			end

			if attached {STRING} api_client.select_header_accept (<<"application/json">>)  as l_accept then
				l_request.add_header(l_accept,"Accept");
			end
			l_request.add_header(api_client.select_header_content_type (<<"multipart/form-data">>),"Content-Type")
			l_request.set_auth_names (<<"petstore_auth">>)
			l_response := api_client.call_api (l_path, "Post", l_request, Void, agent deserializer)
			if l_response.has_error then
				last_error := l_response.error
			elseif attached { API_RESPONSE } l_response.data ({ API_RESPONSE }) as l_data then
				Result := l_data
			else
				create last_error.make ("Unknown error: Status response [ " + l_response.status.out + "]")
			end
		end	


end
