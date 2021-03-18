// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)



    // $('.indexSearch').find('.magnifyicon').click(function(){
    //     $('#indexSearch').prop("type", "text");
    // })    
    //  I have commented this out for now
