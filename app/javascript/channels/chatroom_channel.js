import consumer from "./consumer";

console.log('Hello from ChatroomChannel')

const messagesContainer = document.getElementById('messages');
if (messagesContainer) {
  const id = messagesContainer.dataset.chatroomId;

  consumer.subscriptions.create({ channel: "ChatroomChannel", id: id }, {
    received(data) {
      messagesContainer.insertAdjacentHTML('beforeend', data);
    },
  });
}
