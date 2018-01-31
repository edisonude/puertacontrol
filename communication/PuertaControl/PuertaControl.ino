/*
 Control de habitaciones
 */
 
//Configuración de pines 
int noRooms = 30;
int rooms[31];
int roomOpened[31];
int cont = 1;
int cont2 = 1;
boolean ini = true;

void setup() {
  rooms[1]=53;
  rooms[2]=51;
  rooms[3]=49;
  rooms[4]=47;
  rooms[5]=45;
  rooms[6]=43;
  rooms[7]=41;
  rooms[8]=39;
  rooms[9]=37;
  rooms[10]=35;
  rooms[11]=33;
  rooms[12]=31;
  rooms[13]=52;
  rooms[14]=50;
  rooms[15]=48;
  rooms[16]=46;
  rooms[17]=44;
  rooms[18]=42;
  rooms[19]=40;
  rooms[20]=38;
  rooms[21]=36;
  rooms[22]=34;
  rooms[23]=32;
  rooms[24]=30;
  rooms[25]=28;
  rooms[26]=26;
  rooms[27]=24;
  rooms[28]=22;
  rooms[29]=2;
  rooms[30]=3;

  //Configura los pines como entradas digitales
  for (cont=1; cont<=noRooms; cont++) {
    pinMode(rooms[cont], INPUT_PULLUP);
  }
  
  //Inicia la comunicación serial
  Serial.begin(19200);
  Serial.println("Connected");
  Serial.println();

  //Pin de salida temporal
  pinMode(13, OUTPUT);
}

void loop() {
  for (cont=1; cont<=noRooms; cont++) {
    verifyRoom(rooms[cont],cont);
  }
}

void verifyRoom(int pinRoom, int noRoom) {
  int statusRoom = digitalRead(pinRoom);
  if (statusRoom == LOW && !isRoomOpen(noRoom)) {
    roomOpened[noRoom]=1;
    Serial.print("RO-");
    Serial.println(noRoom);
    delay(1000);
  }else{
    if (statusRoom == HIGH && isRoomOpen(noRoom)){
      roomOpened[noRoom]=0;
      Serial.print("RC-");
      Serial.println(noRoom);
      delay(1000);
    }
  }
}

boolean isRoomOpen(int noRoom) {
  if(roomOpened[noRoom]==1){
    return true;
  }
  return false;
}

