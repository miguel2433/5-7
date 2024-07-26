import {cargarClick} from './login.js';
import { crearToggle } from './toggle.js';

document.addEventListener('DOMContentLoaded', () => {
    const HEADER = document.getElementById('header');
    
/*  function crearNav(){ */
    fetch('./layout/Navbar.html')  // Ajusta la ruta según la estructura de tus directorios
    .then(response => response.text())
    .then(async html => {
        /* console.log(html); */
        HEADER.innerHTML = html;
        document.getElementById('toggle').innerHTML = await crearToggle('prueba');
        cargarClick();  // Llama a cargarClick después de que se haya asignado el HTML
    })
/* } */
    
});
