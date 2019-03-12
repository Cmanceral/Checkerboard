float nColumns = 10;
float nLines = 10;
float cellWidth = width/nColumns;
float cellHeight = height/nLines;
float x = 0;
float y = 0;


size(500,500); 
noStroke();

for( int i = 0; i < nColumns; i++ ){ // for que dibuja las Columnas
  
  rect(x, y, cellWidth, cellHeight);
  x = cellWidth * i;
  
  for( int j = 0; j < nLines; j++){ // for que dibuja las filas itinerando sobre las filas.
    y = cellHeight * j;
    
    if ((i+j) % 2 == 0){ // si la suma de i+j (número real de la celda) es par, se rellena de negro
     fill(0);
    } else { // si la celda es impar, se rellena de blanco.
      fill(255);
    };
    
    rect(x, y, cellWidth, cellHeight);
    
  };
};
