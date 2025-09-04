module starter::practica_sui {
    use std::debug::print;
    use std::string::{String,utf8};


    public struct Usuario has drop{
        nombre: String,
        edad: u8,
        vivo: bool,
    }
    fun practica(usuario: Usuario) {
        // let mut variable: u8 = 256; // mut significa que esta variable puede cambiar
        if(usuario.edad > 18){
            print(&utf8(b"Acceso permitido"));
        } else {
            print(&utf8(b"Acceso no permitido"));
        }

        // print(&variable);
    
    }

    #[test]
    fun prueba() {
        let usuario = Usuario {
            nombre: utf8(b"Juan Sanchez"),
            edad: 17,
            vivo: true,
        };
        practica(usuario);
    }
}