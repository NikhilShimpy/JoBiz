// ==============================
// Firebase Imports (v9 modular)
// ==============================
import { initializeApp } from "https://www.gstatic.com/firebasejs/9.22.2/firebase-app.js";
import { getFirestore, collection, getDocs } from "https://www.gstatic.com/firebasejs/9.22.2/firebase-firestore.js";

// ==============================
// Firebase Config
// ==============================
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

// ==============================
// Fetch & Render Products
// ==============================
const categoryContainer = document.getElementById("categoryContainer");

async function loadProducts() {
  try {
    // Fetch categories
    const categoriesSnap = await getDocs(collection(db, "categories"));
    categoryContainer.innerHTML = "";

    for (let categoryDoc of categoriesSnap.docs) {
      const categoryData = categoryDoc.data();
      const categoryId = categoryDoc.id;

      // Create category section
      const section = document.createElement("div");
      section.className = "category-section";

      section.innerHTML = `
        <h3 class="category-title">${categoryData.category_name || categoryId}</h3>
        <div class="row" id="products-${categoryId}"></div>
      `;
      categoryContainer.appendChild(section);

      // Fetch products inside this category
      const productsSnap = await getDocs(collection(db, "categories", categoryId, "products"));
      const productsRow = document.getElementById(`products-${categoryId}`);

      if (productsSnap.empty) {
        productsRow.innerHTML = `<p class="text-muted">No products available in this category.</p>`;
      } else {
        productsSnap.forEach((prodDoc) => {
          const prod = prodDoc.data();

          // Status badge
          let statusClass = "status-available";
          if (prod.status === "Rented") statusClass = "status-rented";
          if (prod.status === "Maintenance") statusClass = "status-maintenance";

          const card = document.createElement("div");
          card.className = "col-md-4 mb-3";
          card.innerHTML = `
            <div class="product-card shadow-sm">
              <div class="product-name">${prod.product_name}</div>
              <p class="text-muted mb-1">${prod.description || "No description"}</p>
              <p class="mb-1"><strong>Stock:</strong> ${prod.stock || 0}</p>
              <span class="product-status ${statusClass}">${prod.status}</span>
            </div>
          `;
          productsRow.appendChild(card);
        });
      }
    }
  } catch (error) {
    console.error("Error loading products:", error);
    categoryContainer.innerHTML = `<div class="alert alert-danger">❌ Failed to load products</div>`;
  }
}

// Load products on page load
loadProducts();
