import QtQuick 2.2
Text {
        id: label
 
        x: 24; y: 24
 
        // обычный счётчик нажатия клавиши в нашем случае пробела
        property int spacePresses: 0
 
        text: "Space pressed: " + spacePresses + " times"
 
        // (1) обработчик изменения текста
        onTextChanged: console.log("text changed to:", text)
 
        // нужен фокус для перехвата события нажатия клавиши
        focus: true
 
        // (2) обработчик с некоторым JavaScript
        Keys.onSpacePressed: {
            increment()
        }
 
        // очищаем текст по нажатию Escape
        Keys.onEscapePressed: {
            label.text = ''
        }
 
        // (3) Функция JavaScript
        function increment() {
            spacePresses = spacePresses + 1
        }
}