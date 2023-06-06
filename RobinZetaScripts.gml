// Documenta bien, Tal vez mañana olvides que significa todo
// De vuelta a la Era Tetrahemitatamizoica
// X = (-b ± Vb^2 - 4ac)/2a
function CombinateStructs(_struct1,_struct2,_returnNew = false){
	var _structAttributes = struct_get_names(_struct2); //Obtener los Atributos de la 2da Struct
	var _structLenght = array_length(_structAttributes); //Obtener la cantidad de atributos
	if(_returnNew){ //En caso donde quiera retornar una nueva
		var _newStruct = variable_clone(_struct1); //Clonar la primera struct
		with(_newStruct){ //Seleccionar la nueva struct
			for(var i = 0; i < _structLenght;i++){ //Recorrer el array de Atributos de la 2da Struct
				self[$ _structAttributes[i]] ??= _struct2[$ _structAttributes[i]]; 
				//En caso donde no tener el Atributo entonces crearlo y asignarle el valor
				//En caso de tenerlo no hacer nada
			}
		}
		return _newStruct;
	} else { //En caso donde quiera modificar el primer argumento
		with(_struct1){ //Seleccionar la primera struct
			for(var i = 0; i < _structLenght;i++){ //Recorrer el array de Atributos de la 2da Struct
				self[$ _structAttributes[i]] ??= _struct2[$ _structAttributes[i]];
				//En caso donde no tener el Atributo entonces crearlo y asignarle el valor
				//En caso de tenerlo no hacer nada
			}
		}
	}
}