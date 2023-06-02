/***
 *  This example shows LoRaWan protocol joining the network in OTAA mode, class A, region EU868.
 *  Device will send uplink every 20 seconds.
***/
#include "SparkFun_SHTC3.h" 	//Click here to get the library: http://librarymanager/All#SparkFun_SHTC3
#include "DFRobot_SHT20.h"
#include "Wire.h"
DFRobot_SHT20 sht20;	
SHTC3 g_shtc3;		
#define OTAA_PERIOD   (20000)
/*************************************

   LoRaWAN band setting:
     RAK_REGION_EU433
     RAK_REGION_CN470
     RAK_REGION_RU864
     RAK_REGION_IN865
     RAK_REGION_EU868
     RAK_REGION_US915
     RAK_REGION_AU915
     RAK_REGION_KR920
     RAK_REGION_AS923

 *************************************/
#define OTAA_BAND     (RAK_REGION_EU868)

#define OTAA_DEVEUI   {0, 0, 0, 0,0, 0, 0, 0}
#define OTAA_APPEUI   {0, 0, 0, 0, 0, 0, 0, 0}
#define OTAA_APPKEY   {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}

/** Packet buffer for sending */
uint8_t collected_data[64] = { 0 };
int humS;
int tempS ;
int Temperatura;
int Humidade;
int Relay;
unsigned long previousTime = 0;  // Variable to store the previous time
const unsigned long interval = 1800000;  // Interval of 30 minutes (in milliseconds)
void relay(int Temperature,int Humidade)
{
 /* if ((Temperatura > TempR) or (Humidade < HumR)){
      Relay=1;
      digitalWrite(WB_IO4, HIGH);
      delay(10000);
      digitalWrite(WB_IO4, LOW);
  }*/
   if (Temperatura = 23){
      Relay=1;
      digitalWrite(WB_IO4, HIGH);
      delay(10000);
      digitalWrite(WB_IO4, LOW);
}
}
void recvCallback(SERVICE_LORA_RECEIVE_T * data)
{
    if (data->BufferSize > 0) {
        Serial.println("Something received!");
        for (int i = 0; i < data->BufferSize; i++) {
            Serial.printf("%x", data->Buffer[i]);
        }
        Serial.print("\r\n");
        uint8_t val_1 = data->Buffer[0];
        Serial.println(val_1);
        if (val_1==1){
            Relay=1;
            digitalWrite(WB_IO4, HIGH);
            delay(10000);
            digitalWrite(WB_IO4, LOW);
        }
        else if(val_1==0){
            Relay=0;
            digitalWrite(WB_IO4, LOW);
        }
    }
}
void errorDecoder(SHTC3_Status_TypeDef message)   // The errorDecoder function prints "SHTC3_Status_TypeDef" resultsin a human-friendly way
{
  switch (message)
  {
    case SHTC3_Status_Nominal:
      Serial.print("Nominal");
      break;
    case SHTC3_Status_Error:
      Serial.print("Error");
      break;
    case SHTC3_Status_CRC_Fail:
      Serial.print("CRC Fail");
      break;
    default:
      Serial.print("Unknown return code");
      break;
  }
}
void joinCallback(int32_t status)
{
    Serial.printf("Join status: %d\r\n", status);
}

void sendCallback(int32_t status)
{
    if (status == 0) {
        Serial.println("Successfully sent");
    } else {
        Serial.println("Sending failed");
    }
}
void sht20_read_data(){
  humS = sht20.readHumidity();         // Read Humidity
  tempS = sht20.readTemperature();      // Read Temperature
  
}
void shtc3_read_data()
{
	float Temp = 0;
	float Humidity = 0;
  
	g_shtc3.update();
	if (g_shtc3.lastStatus == SHTC3_Status_Nominal) // You can also assess the status of the last command by checking the ".lastStatus" member of the object
	{
    //ver em casa
		Temp = g_shtc3.toDegC();
		Humidity = g_shtc3.toPercent();
    Temperatura=(int)(Temp);
    Humidade=(int)(Humidity);
    
	}
}
void setup()
{
  
  	time_t timeout = millis();
    Serial.begin(115200, RAK_AT_MODE);
    while (!Serial)
    {
      if ((millis() - timeout) < 5000)
      {
              delay(100);
          }
          else
          {
              break;
          }
    }
    sht20.initSHT20();                         // Init SHT20 Sensor
    delay(100);
    sht20.checkSHT20();                        // Check SHT20 Sensor
    Wire.begin();
    pinMode(WB_IO2, OUTPUT);
    digitalWrite(WB_IO2, HIGH);
    pinMode(WB_IO4, OUTPUT);
    errorDecoder(g_shtc3.begin());
    Wire.setClock(400000);	
    Serial.println("RAKwireless LoRaWan OTAA Example");
    Serial.println("------------------------------------------------------");
  
    if(api.lorawan.nwm.get() != 1)
    {
        Serial.printf("Set Node device work mode %s\r\n",
            api.lorawan.nwm.set(1) ? "Success" : "Fail");
        api.system.reboot();
    }

    // OTAA Device EUI MSB first
    uint8_t node_device_eui[8] = OTAA_DEVEUI;
    // OTAA Application EUI MSB first
    uint8_t node_app_eui[8] = OTAA_APPEUI;
    // OTAA Application Key MSB first
    uint8_t node_app_key[16] = OTAA_APPKEY;
  
    if (!api.lorawan.appeui.set(node_app_eui, 8)) {
        Serial.printf("LoRaWan OTAA - set application EUI is incorrect! \r\n");
        return;
    }
    if (!api.lorawan.appkey.set(node_app_key, 16)) {
        Serial.printf("LoRaWan OTAA - set application key is incorrect! \r\n");
        return;
    }
    if (!api.lorawan.deui.set(node_device_eui, 8)) {
        Serial.printf("LoRaWan OTAA - set device EUI is incorrect! \r\n");
        return;
    }
  
    if (!api.lorawan.band.set(OTAA_BAND)) {
        Serial.printf("LoRaWan OTAA - set band is incorrect! \r\n");
        return;
    }
    if (!api.lorawan.deviceClass.set(RAK_LORA_CLASS_A)) {
        Serial.printf("LoRaWan OTAA - set device class is incorrect! \r\n");
        return;
    }
    if (!api.lorawan.njm.set(RAK_LORA_OTAA))	// Set the network join mode to OTAA
    {
        Serial.printf("LoRaWan OTAA - set network join mode is incorrect! \r\n");
        return;
    }
    if (!api.lorawan.join())	// Join to Gateway
    {
        Serial.printf("LoRaWan OTAA - join fail! \r\n");
        return;
    }
  
    /** Wait for Join success */
    while (api.lorawan.njs.get() == 0) {
        Serial.print("Wait for LoRaWAN join...");
        api.lorawan.join();
        delay(10000);
    }
  
    if (!api.lorawan.adr.set(true)) {
        Serial.printf("LoRaWan OTAA - set adaptive data rate is incorrect! \r\n");
        return;
    }
    if (!api.lorawan.rety.set(1)) {
        Serial.printf("LoRaWan OTAA - set retry times is incorrect! \r\n");
        return;
    }
    if (!api.lorawan.cfm.set(1)) {
        Serial.printf("LoRaWan OTAA - set confirm mode is incorrect! \r\n");
        return;
    }
  
    /** Check LoRaWan Status*/
    Serial.printf("Duty cycle is %s\r\n", api.lorawan.dcs.get()? "ON" : "OFF");	// Check Duty Cycle status
    Serial.printf("Packet is %s\r\n", api.lorawan.cfm.get()? "CONFIRMED" : "UNCONFIRMED");	// Check Confirm status
    uint8_t assigned_dev_addr[4] = { 0 };
    api.lorawan.daddr.get(assigned_dev_addr, 4);
    Serial.printf("Device Address is %02X%02X%02X%02X\r\n", assigned_dev_addr[0], assigned_dev_addr[1], assigned_dev_addr[2], assigned_dev_addr[3]);	// Check Device Address
    Serial.printf("Uplink period is %ums\r\n", OTAA_PERIOD);
    Serial.println("");
    api.lorawan.registerRecvCallback(recvCallback);
    api.lorawan.registerJoinCallback(joinCallback);
    api.lorawan.registerSendCallback(sendCallback);
}

void uplink_routine()
{
    /** Payload of Uplink */
    uint8_t data_len = 0;
    collected_data[data_len++] = Temperatura;
    collected_data[data_len++] = Humidade;
    collected_data[data_len++] = Relay;
    collected_data[data_len++] = tempS;
    collected_data[data_len++] = humS;
    Serial.println("Data Packet:");
    for (int i = 0; i < data_len; i++) {
        Serial.printf("0x%02X ", collected_data[i]);
    }
    Serial.println("");
  
    /** Send the data package */
    if (api.lorawan.send(data_len, (uint8_t *) & collected_data, 2, true, 1)) {
        Serial.println("Sending is requested");
    } else {
        Serial.println("Sending failed");
    }
}

void loop()
{
  if (millis() > 2952000000){
    NVIC_SystemReset();
  }
    static uint64_t last = 0;
    static uint64_t elapsed;
    //Relay=0;
    shtc3_read_data();
    unsigned long currentTime = millis();
    if (currentTime - previousTime >= interval) {
      relay(tempS,humS);  // Call the function to control the relay,while passing the values of temperature and Humidity
      previousTime = currentTime;  // Update the previous time
  }
	  delay(1000);
    if ((elapsed = millis() - last) > OTAA_PERIOD) {
        uplink_routine();
  
        last = millis();
    }
    sht20_read_data();
    Serial.println(tempS);
    Serial.println("///"),
    Serial.println(humS);
    //Serial.printf("Try sleep %ums..", OTAA_PERIOD);
    api.system.sleep.all(OTAA_PERIOD);
    //Serial.println("Wakeup..");
}
