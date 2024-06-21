const sol = document.getElementById('sun');
const fondo = document.getElementsByClassName('button')[0];

const luna = document.getElementById('mooon');

const body = document.getElementsByTagName('body')[0];

let mov_realizado = true;


function movimiento() {
  sol.style.translate = '200px';
  sol.style.transform = 'rotate(180deg)';
  sol.style.opacity = '0';
  mov_realizado = false;
  fondo.style.background = 'rgb(58, 56, 56)';
  luna.style.opacity = '1';
  luna.style.transform = 'rotate(200deg)';
  luna.style.translate = '200px';
  body.style.backgroundColor = 'rgb(43, 41, 41)';
}

function movimiento_inverso() {
  sol.style.translate = '0';
  sol.style.transform = 
  'rotate(-180deg)';
  mov_realizado = true;
  fondo.style.background = 'skyblue';
  sol.style.opacity = '1';
  luna.style.opacity = '0';
  luna.style.transform = 'rotate(-200deg)';
  luna.style.translate = '0';
  body.style.backgroundColor = 'white';
}

if (sol) {
  sol.addEventListener('click', function() {
    if (mov_realizado === true)
    {
      movimiento();
    }
    else{
      movimiento_inverso();
    }
  });
}
