/*  ************************ Sliders behavior ************************  */
var freqSlider = document.getElementById("freqSlider");
var freqSliderValue = document.getElementById("freqSliderValue");
/*  ************************ Buttons behavior ************************  */
var connectButton = document.getElementById("connectButton");
var usbDevice = null
var deviceIsOpen = false


// Function to update button text based on deviceIsOpen
function updateButtonText() {
    if (deviceIsOpen) {
        connectButton.textContent = "Disconnect";
    } else {
        connectButton.textContent = "Connect";
    }
}

// Click event for connectButton
connectButton.addEventListener('click', async () => 
{
    try {
        if (!deviceIsOpen) {
            // Request permission to access USB devices
            usbDevice = await navigator.usb.requestDevice({ filters: [] });

            // Open a connection to the selected device
            await usbDevice.open();

            // Select a configuration
            await usbDevice.selectConfiguration(1);

            // Claim an interface
            await usbDevice.claimInterface(2);

            deviceIsOpen = true;
        } else {
            // Disconnect from the device
            await usbDevice.close();
            deviceIsOpen = false;
        }

        updateButtonText(); // Update button text and slider state after connecting or disconnecting

    } catch (error) {
        console.error('Error:', error);
    }
});

// Function to update the displayed value when the slider value changes
freqSlider.addEventListener("input", async function() {
    freqSliderValue.textContent = freqSlider.value;
    console.log("Slider : " + freqSlider.value)
    // Send data to the USB device when the slider value changes
    if (deviceIsOpen) {
        console.log("Sending data to device!");
        await usbDevice.claimInterface(2);

        // Format ASCII command
        let freqCmd = freqSlider.value.toString().padStart(4, '0'); // Pad the frequency value with leading zeros
        let strCmd = "F=" + freqCmd + "\n\r";
        console.log(strCmd);

        // String to uint8Array
        let encoder = new TextEncoder();
        let cmdArray = encoder.encode(strCmd);
        console.log(cmdArray);

        try {
            let result = await usbDevice.transferOut(3, cmdArray);
            console.log('Data sent:', result);

        } catch (error) {
            console.error('Error sending data:', error);
        }
    } else {
        console.log("No USB device connected");
    }
});

// Timer to update button state every 100ms
setInterval(() => {
    updateButtonText();
}, 100);

