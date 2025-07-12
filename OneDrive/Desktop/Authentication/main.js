// setting up firebase with our website
const firebaseApp = firebase.initializeApp({
   apiKey: "AIzaSyDS8tGustKzem7u8U5ntcLMimgLJC_fQWI",
  authDomain: "skillswap-21922.firebaseapp.com",
  projectId: "skillswap-21922",
  storageBucket: "skillswap-21922.firebasestorage.app",
  messagingSenderId: "942449711732",
  appId: "1:942449711732:web:ed1ac7c996deb34b998f21",
  measurementId: "G-DL61KXD2YR"
});
const db = firebaseApp.firestore();
const auth = firebaseApp.auth();

// Sign up function
const signUp = () => {
    const email = document.getElementById("email").value;
    const password = document.getElementById("password").value;
    console.log(email, password)
    // firebase code
    firebase.auth().createUserWithEmailAndPassword(email, password)
        .then((result) => {
            // Signed in 
            document.write("You are Signed Up")
            console.log(result)
            // ...
        })
        .catch((error) => {
            console.log(error.code);
            console.log(error.message)
            // ..
        });
}

// Sign In function
const signIn = () => {
    const email = document.getElementById("email").value;
    const password = document.getElementById("password").value;
    // firebase code
    firebase.auth().signInWithEmailAndPassword(email, password)
        .then((result) => {
            // Signed in 
            document.write("You are Signed In")
            console.log(result)
        })
        .catch((error) => {
            console.log(error.code);
            console.log(error.message)
        });
}