// Firebase Imports (v9 modular)
import { initializeApp } from "https://www.gstatic.com/firebasejs/9.22.2/firebase-app.js";
import { getFirestore, doc, setDoc, collection, addDoc, serverTimestamp, getDoc } from "https://www.gstatic.com/firebasejs/9.22.2/firebase-firestore.js";

// Firebase Config
const firebaseConfig = {
  apiKey: "AIzaSyD95Xp-9Yu_8W35q6xLPR47vTehfBQee_k",
  authDomain: "bookngo-ef4f0.firebaseapp.com",
  projectId: "bookngo-ef4f0",
  storageBucket: "bookngo-ef4f0.firebasestorage.app",
  messagingSenderId: "483413806629",
  appId: "1:483413806629:web:c1233395b07adc8088b9cc",
  measurementId: "G-5KRF0WT5TC"
};

// Init
const app = initializeApp(firebaseConfig);
const db = getFirestore(app);

// Add Product Logic
const form = document.getElementById("addProductForm");
const msg = document.getElementById("message");

form.addEventListener("submit", async (e) => {
  e.preventDefault();

  const categoryName = document.getElementById("category").value.trim().toLowerCase();
  const productName = document.getElementById("productName").value.trim();
  const description = document.getElementById("description").value.trim();
  const stock = parseInt(document.getElementById("stock").value);
  const status = document.getElementById("status").value;

  try {
    // Category document ref
    const categoryRef = doc(db, "categories", categoryName);

    // Ensure category exists
    const categorySnap = await getDoc(categoryRef);
    if (!categorySnap.exists()) {
      await setDoc(categoryRef, {
        category_id: categoryRef.id,
        category_name: categoryName.charAt(0).toUpperCase() + categoryName.slice(1),
        created_at: serverTimestamp()
      });
    }

    // Add product to subcollection
    const productRef = await addDoc(collection(categoryRef, "products"), {
      product_name: productName,
      description: description,
      stock: stock,
      status: status,
      created_at: serverTimestamp()
    });

    msg.innerHTML = `<div class="alert alert-success">✅ Product added successfully! (ID: ${productRef.id})</div>`;
    form.reset();

  } catch (error) {
    console.error("Error adding product:", error);
    msg.innerHTML = `<div class="alert alert-danger">❌ Error: ${error.message}</div>`;
  }
});
