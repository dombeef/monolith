int joyval = 0;
void setup() {
  pinMode ( 0, INPUT );
  pinMode ( 2, INPUT );

    Serial.begin (9600);
}

void loop()
{
  joyval = analogRead(0);
  Serial.println(joyval);
  delay(1000);
}
