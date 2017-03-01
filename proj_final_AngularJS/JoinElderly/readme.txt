Adaptar el projecte modificant el path dels fitxers:
	- backend: paths.php
	    SITE_PATH -> define('SITE_PATH', 'https://' . $_SERVER['HTTP_HOST'] . PROJECT); //https
	- apiconnector.js

API Documentation
	https://projects-alumnes-yomogan.c9users.io/proj_final_AngularJS/JoinElderly/documentation/phpdocs

uib-pagination
    - Angular directives for Bootstrap - AngularUI
    - UI Bootstrap components written in pure AngularJS by the AngularUI Team
    - https://angular-ui.github.io/bootstrap/
    - En app.js: ['ui.bootstrap']);

Users - modules:
	- client: main, contact, ofertas, signup, signin, recover, signin fb/tw, profile, logout
	- admin: main, contact, ofertas, signup, signin, recover, signin fb/tw, profile, logout, admin_users

Cookies - modules:
	- session -> module users -> no persistent
	- accept_cookies  -> module cookies -> persistent
	
LocalStorage - modules:
	- users  -> module users -> encriptat
		[{"usuario":"eW9tb2dhbg==","avatar":"https://projects-alumnes-yomogan.c9users.io/proj_final_AngularJS/JoinElderly/backend/media/3.jpg",
		"tipo":"YWRtaW4=","nombre":"eW9tb2dhbg==","id":1},
		{"usuario":"eW9tb2dhbg==","avatar":"https://projects-alumnes-yomogan.c9users.io:80/proj_final_AngularJS/JoinElderly/backend/media/3.jpg",
		"tipo":"Y2xpZW50","nombre":"eW9tb2dhbg==","id":2},
		
	- users_accept_cookies -> module cookies -> no encriptat
		[{"usuario":{"ip":"85.55.99.70","country_code":"ES","country_name":"Spain","region_code":"VC","region_name":"Valencia",
		"city":"Valencia","zip_code":"46001","time_zone":"Europe/Madrid","latitude":39.4698,"longitude":-0.3774,"metro_code":0},
		"browser":"Chrome","id":1},
		{"usuario":{"ip":"85.55.99.70","country_code":"ES","country_name":"Spain","region_code":"VC",
		"region_name":"Valencia","city":"Valencia","zip_code":"46001","time_zone":"Europe/Madrid","latitude":39.4698,
		"longitude":-0.3774,"metro_code":0},"browser":"Chrome","id":2},





//////////////////////////////////////////////////////////// Exemple //////////////////////////////////////////////
Project: "NFU Nos falta uno"

You can use NFU if You can never make your favorite sport because you can not find people who practice it ?
"Nos falta uno" will help you find it.
Just a simple parameter setting , "Nos falta uno" will provide information for people who like you need a teammate to a next distance.

////////////////////////////////////////////// Rol Users //////////////////////////////////////////////
This project has three types of users , unregistered user ,user registration, user admin.
- If you are not registered you can access the home , Sign In, Sign Up , Sports facilities , Contact.
- If you are a registered user , you can access the home , my profile, my games , record games , sports facilities, contact.
- If you're an admin, you can try with user "laura " password " Lau11499 " can also access administration. This project is completed the user CRUD.
In angular the jquery pluguins not work good.

////////////////////////////////////////////// Database //////////////////////////////////////////////
If you want to import the database, you can find it in "/app_model/database/"
You must modify parameters in:  "/model/bd.ini" you connect to your database

////////////////////////////////////////////// write_permissions //////////////////////////////////////////////
You must not forget to give permissions to the folder and files:
backend/log/user/Site_Users_errors.log
backend/log/general/Site_General_errors.log
backend/media

////////////////////////////////////////////// localhost //////////////////////////////////////////////
If you want to get it running on localhost , in facilities, in json_encode you must add
JSON_PARTIAL_OUTPUT_ON_ERROR, and games, the same.

////////////////////////////////////////////// Documentation //////////////////////////////////////////////
http://51.254.97.198/NFU/backend/output/

////////////////////////////////////////////// Endpoints //////////////////////////////////////////////
* APP: NFU.
* SERVER: http://51.254.97.198/NFU/
This describes the endpoints where you can view the data you need.
		--INSTALLATIONS--
		"List all installations" 
			Type: GET.
			Empoint: http://51.254.97.198/NFU/backend/index.php?module=installation&function=list_installation
			Params: none.
		"List one installations"
			Type: POST.
			Empoint: http://51.254.97.198/NFU/backend/index.php?module=installation&function=idInstallation&id=PUSH_ID
			Params: id.
			
		--USERS--
		"Update Users" 
			Type: POST.
			Empoint: http://51.254.97.198/NFU/backend/index.php?module=users&function=update_users, data
			Params: data = {
					"nombre": "",
					"pais": "",
					"provincia": "",
					"poblacion": "",
					"masculino": "",
					"femenino": "",
					"telefono": "",
					"email": "",
					"password_bd": "",
					"bajo": "",
					"medio": "",
					"alto": "",
					"password": "",
					"password2": "",
					"fecha_nac": "",
					"fecha_registro": "",
					"password_old": "",
					"status": "",
					"token": "",
					"tipo": "",
					"deporte": "",
					"avatar": "",
				    }
		"Dropzone Upload Image"
			Type: POST.			
			Empoint: http://51.254.97.198/NFU/backend/index.php?module=users&function=upload_users
			Params: file(image).
		"Delete Users"
			Type: POST.
			Params: name.
			Empoint: http://51.254.97.198/NFU/backend/index.php?module=users&function=delete_user&nombre=name	
		"Load countries"
			Type: POST.
			Empoint: http://51.254.97.198/NFU/backend/index.php?module=users&function=load_coordinates_near
			Params: data = {"lat_position": $scope.lat,
					"long_position": $scope.long,
					"p": $scope.after, }.
		"Load countries Map"
			Type: POST.
			Empoint: http://51.254.97.198/NFU/backend/index.php?module=users&function=load_coordinates_near_map
			Params: data = {
					    "lat_position": $scope.lat,
					    "long_position": $scope.lng,
					}
		"Delete users"
			Type: POST.
			Empoint: http://51.254.97.198/NFU/backend/index.php?module=users&function=delete_users, name
			Params: name.
		"Obtain Users"
			Type: POST.
			Empoint: http://51.254.97.198/NFU/backend/index.php?module=users&function=obtain_users
			Params: none.
		"Load Pais Users"
			Type: POST.
			Empoint: http://51.254.97.198/NFU/backend/index.php?module=users&function=load_pais_users, data
			Params: data = {
        			"load_data_pais": true, }.
		"Load Provincias Users"
			Type: POST.
			Empoint: http://51.254.97.198/NFU/backend/index.php?module=users&function=load_provincias_users, data
			Params: data_provincia = {
        			"load_data_provincia": true, }	
		"Load Poblaciones Users"
			Type: POST.
			Empoint: http://51.254.97.198/NFU/backend/index.php?module=users&function=load_poblaciones_users, datos
			Params: datos = {nombreProvincia: $scope.profile.provincia}

		--CONTACT--
		"Send Contact"
			Type: POST.
			Empoint: http://51.254.97.198/NFU/backend/index.php?module=contact&function=check_contact, data_contact_JSON
			Params: data = {"name": name, "email": email, "message":message, "mensaje":mensaje}

		--GAMES--
		"Up Games"
			Type: POST.
			Empoint: http://51.254.97.198/NFU/backend/index.php?module=games&function=up_games, data_games_JSON
			Params: data = {"name": name, "time": time, "duration": duration, "pricecash": pricecash, "places": places, "day": day, "sport": sport,
                			"poblacion": poblacion, "contact_install":contact_install, "zona":zona, "usuario":usuario}
		"Up Install"
			Type: POST.
			Empoint: http://51.254.97.198/NFU/backend/index.php?module=games&function=up_install, data_games_JSON
			Params: data = {"name": name, "poblacion":poblacion, "longitud":longitud, "latitud":latitud, "descripcion":descripcion, "valoracion":valoracion}
		"Autocomplete Installation Population"
			Type: POST.
			Empoint: http://51.254.97.198/NFU/backend/index.php?module=games&function=autocomplete_installation_population, data_games_JSON
			Params: data_pob = {"poblacion":poblacion}
		"Load Provinces"
			Type: POST.
			Empoint: http://51.254.97.198/NFU/backend/index.php?module=games&function=load_provinces, data_games_JSON
			Params: {"load_provincias": true}
		"Load Populations"
			Type: POST.
			Empoint: http://51.254.97.198/NFU/backend/index.php?module=games&function=load_populations, datos
			Params: datos = {idPoblac: $scope.create_ins.provincia.id}

		--LOGIN--
		"Alta Users"
			Type: POST.
			Empoint: http://51.254.97.198/NFU/backend/index.php?module=login&function=alta_users, login
			Params: login = {
					nombre: "",
					password: "",
					password2: "",
					email: "",
					fecha_nac: "",
					fecha_registro: $filter('date')(new Date(), 'yyyy-MM-dd'),
					fecha: "",
				    }
		"SignIn"
			Type: POST.
			Empoint: http://51.254.97.198/NFU/backend/index.php?module=login&function=signin, user
			Params: signin = {
					nombre: "",
					password: "",
				    }
		"Social Facebook"
			Type: POST.
			Empoint: http://51.254.97.198/NFU/backend/index.php?module=login&function=social_facebook
			Params: none (conected by facebook)
		"Social Twitter"
			Type: POST.
			Empoint: http://51.254.97.198/NFU/backend/index.php?module=login&function=social_twitter
			Params: none (conected by Aouth.io and Twitter)
		"Email Recovery from recovery pass"
			Type: POST.
			Empoint: http://51.254.97.198/NFU/backend/index.php?module=games&function=email_recovery, data
			Params: data = {
					"email": email
				    }
		"Recovery Pass"
			Type: POST.
			Empoint: http://51.254.97.198/NFU/backend/index.php?module=games&function=email_recovery_pass, data
			Params: data = {
					"password": password,
					"password2": password1,
				    }		
