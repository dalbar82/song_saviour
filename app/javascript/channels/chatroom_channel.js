import consumer from "./consumer";

// const initChatroomCable = () => {
//   const messagesContainer = document.getElementById('messages');
//   if (messagesContainer) {
//     const id = messagesContainer.dataset.chatroomId;

//     consumer.subscriptions.create({ channel: "ChatroomChannel", id: id }, {
//       received(data) {
//         console.log(data); // called when data is broadcast in the cable
//       },
//     });
//   }
// }
const initChatroomCable = () => {
  console.log("chatroom channel")
  const messagesContainer = document.getElementById('messages');
  if (messagesContainer) {
    const id = messagesContainer.dataset.chatroomId;

    consumer.subscriptions.create({ channel: "ChatroomChannel", id: id }, {
      received(data) {
        console.log("received data",data);
        messagesContainer.insertAdjacentHTML('beforeend', data); // called when data is broadcast in the cable
      },
      connected() {
        console.log("connected")
      
      }
    });
  }

}
 
export { initChatroomCable  }

