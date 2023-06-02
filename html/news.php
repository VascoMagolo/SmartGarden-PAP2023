<?php
session_start();
include("head.php");
include("nav.php");
?>
<body>
    <main>
    <style>
    #LNews{color: #0cd268;}
    .newsTxt {
    margin-top:1rem;
    width: 100%;
    float: left;
    font-size: 3em;
    text-align: center;
    color: #000;
    font-weight: bold;
    margin-bottom:0.5rem;
    }
    .col{
        margin:3rem;
        background-color:#303137 ;
        border-radius:1rem;
        box-shadow: 5px 5px #636463;    
    }
    .col h3 {
        font-weight:bold;
        color:#CACFCB;
        text-align:center;
    }
    .col img {
        display: block;
        margin-left: auto;
        margin-right: auto;
        width:20rem;
        height:13rem;
    }
    .col p:hover{
        color:white;        
    }
    .col p{color:#e5e4e2;}
    .row{width: 100%;}
    </style>
        <div>
        <h2 class='newsTxt'>LoraWan News</h2>
        </div>

<div class="row">
  <div class="col">
      <h3>Semtech and Connected Development Launch new LoRa®-Based IoT Development Board and Reference Design</h3>
      <a href='https://www.semtech.com/company/press/semtech-and-connected-development-launch-new-lora-based-iot-development-board-and-reference-design'><img src="./imagens/loraNews1.jpg"></a>
      <p>Semtech Corporation, a semiconductor, IoT systems, and Cloud connectivity service provider, in collaboration with Connected Development, an engineering design services firm, has launched a new XCVR Development Board and Reference Design integrating the LoRa Sub-GHz Radio Transceiver. The board is based on Semtech’s LoRa SX126x Series and is aimed at simplifying the design process and reducing time-to-market for customers in markets such as building management, agriculture, supply chain, logistics, and industrial control. The software drivers are supplied with the design and are compatible with various microcontroller vendors, including Nordic Semiconductor, enabling rapid software development. The XCVR Development Board and Reference Design is available exclusively at Mouser Electronics and Symmetry Electronics.
      </p>    
  </div>
  <div class="col">
        <h3>RAKwireless launches modules designed for LoRa and BLE5 connectivity</h3>
            <a href='https://linuxgizmos.com/rakwireless-modules-designed-for-lora-and-bluetooth-low-energy-connectivity/'><img src="./imagens/rak11720.png"></a>
        <p>RAKwireless launched the RAK11720 LoRa/BLE5 module in March 2023, based on Ambiq Apollo3 Blue SoC, a low-power microcontroller for battery-powered devices, and Semtech SX1262 for long-range wireless applications. The module supports LoRaWAN 1.0.3, LoRa Point-to-Point (P2P) communication, and various bandwidths in multiple frequency bands. Available in two variants, it has a wide power supply range, low sleep mode current consumption, and is compatible with WisToolBox phone application and RAKwireless Unified Interface (RUI3). Both variants cost around $7.99, excluding shipping costs.</p>
  </div>
  <div class="w-100"></div>
  <div class="col">
        <h3>The Things Industries, a LoRaWAN® Internet of Things solutions provider, has reached the milestone of 1 million devices connected to their network server infrastructure – The Things Stack.</h3>
        <a href='https://www.thethingsindustries.com/news/1-million-connected-lorawan-devices/'><img src="./imagens/TTI.png"></a>
        <p>
            Reaching 1 million connected devices is a testament to the reliability and scalability of The Things Stack, and it delivers significant efficiency benefits to its customers. The million devices are distributed across a large base of customers, system integrators and device vendors across the globe. All devices are delivering valuable data and pushing the Internet of Things business models for which they were put in place.

The Things Stack is designed to provide a secure and efficient way for businesses and organizations to connect and manage their low-power and long-range LoRaWAN IoT devices across a variety of different industries. The most recent customer highlights include the deployment of 150K smart water meters for Severn Trent Water, 47 000 air quality sensors across 1700 schools in Canada, smart workplace solutions across commercial real estate in the US and Europe, and enabling LoRaWAN for Deutsche Bahn.
        </p>
  </div>
  <div class="col"><h3>Arduino “launches” WisGate Edge LoRaWAN gateways in collaboration with RAKwireless</h3>
  <a href='https://www.cnx-software.com/2022/07/11/arduino-launches-wisgate-edge-lorawan-gateways-in-collaboration-with-rakwireless/'><img src="./imagens/gateways.jpg"></a>
  <p>Arduino has expanded into LoRaWAN gateways with the introduction of the Wisgate Edge Pro and Wisgate Edge Lite 2. These gateways are part of the Arduino Pro family and are offered for outdoor and indoor environments, respectively. Arduino collaborated with Rakwireless to use their existing LoRaWAN gateways, with Rakwireless providing the hardware and technical support. Both gateways run the WisgateOS 2 operating system based on OpenWrt, but the Edge Pro offers more antennas and LoRa channels, and features specific to outdoor operation. The dashboard of the gateways has been customized with Arduino Pro branding, and all connection plugs are to NEMA-6 standard for dust and waterproofness.</p>
  </div>
</div>

    </main>
</body>
<?php
include('footer.php');
?>