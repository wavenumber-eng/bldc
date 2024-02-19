/*  ************************ Sliders behavior ************************  */
var freqSlider = document.getElementById("freqSlider");
var freqSliderValue = document.getElementById("freqSliderValue");


// Update the displayed value when the slider value changes
freqSlider.addEventListener("input", function() {
    freqSliderValue.textContent = freqSlider.value;
});


/*  ************************ Buttons behavior ************************  */
var connectButton = document.getElementById("connectButton");
var disconnectButton = document.getElementById("disconnectButton");
var sendButton = document.getElementById("sendButton");

var usbDevice = null
var deviceIsOpen = false

connectButton.addEventListener('click', async () => {
    console.log("Connect button clicked!");
    try {
        // Request permission to access USB devices
        usbDevice = await navigator.usb.requestDevice({ filters: [] });

        // Open a connection to the selected device
        await usbDevice.open();

        // Select a configuration
        await usbDevice.selectConfiguration(1)

        // Claim an interface
        await usbDevice.claimInterface(2);

        deviceIsOpen = true

    } catch (error) {
        console.error('Error:', error);
    }
});

// Disconnect from the device
disconnectButton.onclick = async () => {
    await usbDevice.close();
    deviceIsOpen = false
  };

sendButton.addEventListener('click', async () => {

    if(deviceIsOpen){
        console.log("Sending data to device!");
        await usbDevice.claimInterface(2);

        //format ascii command
        freqCmd = freqSlider.value.toString().padStart(4, '0'); // Pad the age with leading zeros to ensure it has three digits        
        strCmd = "F=" + freqCmd + "\n\r"
        console.log(strCmd)

        //string to uint8Array
        let encoder = new TextEncoder();
        let cmdArray = encoder.encode(strCmd);    
        console.log(cmdArray)

        try {
            result = await usbDevice.transferOut(3, cmdArray);
            console.log('Data sent:', result);

            const receivedData = await usbDevice.transferIn(3, 64); // Example: Reading 64 bytes from endpoint 4
            console.log('Data received:', receivedData);

        } catch (error) {
            console.error('Error sending data:', error);
        }
    }
    else{
        console.log("No USB device connected");
    }
});
